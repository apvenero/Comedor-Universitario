package ttps.springmvc.controllers;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ttps.clases.Menu;
import ttps.clases.Perfil;
import ttps.dao.BebidaDao;
import ttps.dao.EntradaPlatoPrincipalDao;
import ttps.dao.MenuDao;
import ttps.dao.PostreDao;

@Controller
public class MenuController {
	@Autowired
	private PostreDao postredao;
	@Autowired
	private BebidaDao bdao;
	@Autowired
	private EntradaPlatoPrincipalDao epdao;
	@Autowired
	private MenuDao<Menu> menudadoo;
	@Autowired
	private HttpSession httpSession;

    @RequestMapping("listarMenues")
    public ModelAndView listar() {
	 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
	 		List<Menu> menuList = menudadoo.recuperarTodos();
	 		return new ModelAndView("gestionMenus", "menuList", menuList);
		}else return new ModelAndView("redirect:frontend");
    }
    
	@RequestMapping("newMenu")
    public ModelAndView createMenu(@ModelAttribute Menu menu) {
	 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){

			ModelAndView miMAV = new ModelAndView();
	        miMAV.setViewName("nuevoMenu");
	        miMAV.addObject("selectEntradaPP", epdao.listar());
	        miMAV.addObject("selectBebida",bdao.listar());
	        miMAV.addObject("selectPostre",postredao.listar());
	        
	        return miMAV;
		}else return new ModelAndView("redirect:frontend");
    }
	
	@RequestMapping(value="actualizarMenu", method = RequestMethod.POST)
    public ModelAndView actualizaMenu(@ModelAttribute Menu menu) {
	 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
			menudadoo.actualizarMenu(menu);
	        return new ModelAndView("redirect:listarMenues");
		}else return new ModelAndView("redirect:frontend");
    }
	
	@RequestMapping(value="guardarMenu", method = RequestMethod.POST)
    public ModelAndView saveMenu(@ModelAttribute Menu menu) {
	 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
			if(menu.getIdMenu() == null || menu.getIdMenu() == 0  ){ 
				 menudadoo.persistir(menu);
		       } 
	        return new ModelAndView("redirect:listarMenues");
		}else return new ModelAndView("redirect:frontend");
    }
	
	@RequestMapping("eliminarMenu")
    public ModelAndView deleteMenu(@RequestParam long id) {
	 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
	 		menudadoo.borrar(id);;
	 		return new ModelAndView("redirect:listarMenues");
		}else return new ModelAndView("redirect:frontend");
    }
	
	 @RequestMapping("editarMenu")
	    public ModelAndView editMenu(@RequestParam long id, @ModelAttribute Menu menu) {
		 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
			 	ModelAndView miMAV = new ModelAndView();
		        miMAV.setViewName("modificarMenu");
		        miMAV.addObject("menu", menudadoo.recuperar(id));
		        miMAV.addObject("selectEntradaPP", epdao.listar());
		        miMAV.addObject("selectBebida",bdao.listar());
		        miMAV.addObject("selectPostre",postredao.listar());
		        return miMAV;
			}else return new ModelAndView("redirect:frontend");
	    }
	 
	@RequestMapping("estadisticasMenu")
	public ModelAndView estadisticasMenu() {
	 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
	 		return new ModelAndView("menuesEstadisticas");
		}else return new ModelAndView("redirect:frontend");
	}
}
