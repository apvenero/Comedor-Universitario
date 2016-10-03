package ttps.springmvc.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ttps.clases.Compra;
import ttps.clases.Menu;
import ttps.clases.Perfil;
import ttps.clases.Sede;
import ttps.dao.CompraDao;
import ttps.dao.MenuDao;
import ttps.dao.SedeDao;
import ttps.dao.UsuarioDao;


@Controller
public class CompraTicketController {

	@Autowired
	private HttpSession httpSession;

	@Autowired
	private SedeDao sdao;
	
	@Autowired
	private UsuarioDao usudao;
	
	@Autowired
	private MenuDao<Menu> menudao;
	
	@Autowired
	private CompraDao<Compra> compraDAOhiberJPA;
	
	@RequestMapping("nuevaCompra")
    public ModelAndView createCompra(@ModelAttribute Compra compra) {
		Perfil usuarioSesion=(Perfil) httpSession.getAttribute("u");
		if(usuarioSesion!= null && usuarioSesion.sosUsuario()){
			 List<Sede> selectSede = sdao.listar();
			 return new ModelAndView("comprarTicket","selectSede", selectSede);
		}else return new ModelAndView("redirect:frontend");
    }
	
	@RequestMapping("guardarCompra")
	public ModelAndView saveCompra(@ModelAttribute Compra compra) {
		Perfil usuarioSesion=(Perfil) httpSession.getAttribute("u");
		if(usuarioSesion!= null && usuarioSesion.sosUsuario()){
			compraDAOhiberJPA.persistir(compra);
			//compraDAOhiberJPA.agregarCompra(compra);
			return new ModelAndView("exitoCompra");
		}else return new ModelAndView("redirect:frontend");

	 }
	
	 @RequestMapping("nuevaCompraContinuacion")
	    public ModelAndView nuevaCompra(@ModelAttribute Compra compra) {
		 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	System.out.println("semana:"+ compra.getSemana());
			if(usuarioSesion!= null && usuarioSesion.sosUsuario()){
			 	//Guardar los datos de las sesiones
			 	ModelAndView miMAV = new ModelAndView("cargarMenusTicket");
			 	miMAV.addObject("idPerfil", usuarioSesion.getIdPerfil());
			 	miMAV.addObject("idsede",compra.getSede().getIdSede());
			 	miMAV.addObject("semana",compra.getSemana());
			  	miMAV.addObject("menu",menudao.recuperarTodos());
			  	return miMAV;
		}else return new ModelAndView("redirect:frontend");

	    }
	 
	 @RequestMapping("listarCompras")
	public ModelAndView listarCompras() {
	 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosResponsable()){

	        List<Compra> todos = compraDAOhiberJPA.listar();
	        List<Menu> listaMenus = menudao.recuperarTodos();
	        Map<Long, Menu> mapaMenus = new HashMap<Long, Menu>();
	        for(Menu m: listaMenus){
	        	mapaMenus.put(m.getIdMenu(), m);
	        }
	        ModelAndView miMAV = new ModelAndView();
	        miMAV.setViewName("informacionCompras");
	        miMAV.addObject("compList", todos);
	        miMAV.addObject("mapaMenus",mapaMenus);
	        
	        return miMAV;
		}else return new ModelAndView("redirect:frontend");

	    }
	
	 @RequestMapping("listarMenuCompra")
		public ModelAndView listarMenuCompras(@RequestParam long id,@ModelAttribute Compra compra) {
		 	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosResponsable()){
		 		compra = compraDAOhiberJPA.recuperar(id);
		        List<Menu> listaMenus = menudao.recuperarTodos();
		        ModelAndView miMAV = new ModelAndView();
		        miMAV.setViewName("infoMenuSemana");
		        miMAV.addObject("compraObject", compra);
		        miMAV.addObject("listaMenus",listaMenus);
		        
		        return miMAV;
		}else return new ModelAndView("redirect:frontend");

	    }
	
}
