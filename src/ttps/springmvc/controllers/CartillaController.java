package ttps.springmvc.controllers;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ttps.clases.Cartilla;
import ttps.clases.Menu;
import ttps.clases.Perfil;
import ttps.dao.MenuDao;
import ttps.dao.CartillaDao;


@Controller
public class CartillaController {
	
	@Autowired
	private MenuDao<Menu> menudao;
	
	@Autowired
	private CartillaDao<Cartilla> cartillaDAOhiberJPA;
	
	@Autowired
	private HttpSession httpSession;

	
	 @RequestMapping("generacionCartilla")
	    public ModelAndView generacionCartillaMenu() {
		 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		 		List<Menu> menuList = menudao.recuperarTodos();
		 		return new ModelAndView("generacionCartillaMenu","menuList", menuList);
			}else return new ModelAndView("redirect:frontend");
	    }
	 
	 @RequestMapping("listarCartilla")
		public ModelAndView listarCart() {
		 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
	 
		        List<Cartilla> todos = cartillaDAOhiberJPA.listar();
		        List<Menu> listaMenus = menudao.recuperarTodos();
		        Map<Long, Menu> mapaMenus = new HashMap<Long, Menu>();
		        for(Menu m: listaMenus){
		        	mapaMenus.put(m.getIdMenu(), m);
		        }
		        ModelAndView miMAV = new ModelAndView();
		        miMAV.setViewName("listadoCartilla");
		        miMAV.addObject("cartList", todos);
		        miMAV.addObject("mapaMenus",mapaMenus);
		        
		        return miMAV;
			}else return new ModelAndView("redirect:frontend");
	    }
	 
	 @RequestMapping("nuevaCartilla")
	    public ModelAndView nuevaCartilla(@ModelAttribute Cartilla cartilla) {
		 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){	
			 	ModelAndView miMAV = new ModelAndView("nuevaCartilla");
			  	miMAV.addObject("menu",menudao.recuperarTodos());
			  	return miMAV;
		        //return new ModelAndView("nuevaCartilla");
			}else return new ModelAndView("redirect:frontend");
	    }
	 @RequestMapping("guardarCartilla")
	    public ModelAndView saveCartilla(@ModelAttribute Cartilla cartilla) {
		 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
			 	// Si el id de la Sede es 0 entonces se crea la Sede, de lo contrario se actualiza 
		        if(cartilla.getIdCartilla() == null || cartilla.getIdCartilla() == 0  ){ 
		        	cartillaDAOhiberJPA.persistir(cartilla);
		        }
		        return new ModelAndView("redirect:listarCartilla");
			}else return new ModelAndView("redirect:frontend");
	 }
	 
	 @RequestMapping("eliminarCartilla")
	    public ModelAndView deleteCartilla(@RequestParam long id) {
		 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
			 	cartillaDAOhiberJPA.borrar(id);;
		        return new ModelAndView("redirect:listarCartilla");
			}else return new ModelAndView("redirect:frontend");
	    }
	    
	 @RequestMapping("editarCartilla")
	    public ModelAndView editCartilla(@RequestParam long id,@ModelAttribute Cartilla cartilla) {
		 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
			 	cartilla = cartillaDAOhiberJPA.recuperar(id);
		        List<Menu> listaMenus = menudao.recuperarTodos();
		        ModelAndView miMAV = new ModelAndView();
		        miMAV.setViewName("modificarCartilla");
		        miMAV.addObject("cartillaObject", cartilla);
		        miMAV.addObject("listaMenus",listaMenus);
		        
		        return miMAV;
		        //return new ModelAndView("modificarCartilla", "cartillaObject", cartilla);
			}else return new ModelAndView("redirect:frontend");
	    }

	 @RequestMapping(value="guardarCartillaModificada", method = RequestMethod.POST)
		public ModelAndView guardarCartillaModificada(@ModelAttribute Cartilla cartilla) {
		 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
			 	cartillaDAOhiberJPA.actualizarCartilla(cartilla);
			 	return new ModelAndView("redirect:listarCartilla");
			}else return new ModelAndView("redirect:frontend");
	}
}
