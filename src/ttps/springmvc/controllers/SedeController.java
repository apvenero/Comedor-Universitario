package ttps.springmvc.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ttps.clases.Perfil;
import ttps.clases.Sede;
import ttps.dao.SedeDao;

@Controller
public class SedeController {

	 @Autowired
	 private SedeDao sdao;
	 
	 @Autowired
	 private HttpSession httpSession;

	    @RequestMapping("listar")
	    public ModelAndView listar() {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		        List<Sede> sedeList = sdao.recuperarTodos();
		        return new ModelAndView("gestionSedes", "sedeList", sedeList);
			}else return new ModelAndView("redirect:frontend");
	    }
	    
	    @RequestMapping("editar")
	    public ModelAndView editSede(@RequestParam long id, @ModelAttribute Sede sede) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		    	sede = sdao.recuperar(id);
		        return new ModelAndView("modificarSede", "sedeObject", sede);
			}else return new ModelAndView("redirect:frontend");
	    }
	    
	    @RequestMapping("actualizarSede")
	    public ModelAndView actualizarSede(@ModelAttribute Sede sede) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		    	sdao.actualizar(sede);
	            return new ModelAndView("redirect:listar");
			}else return new ModelAndView("redirect:frontend");
	    }
	    
	    @RequestMapping("eliminar")
	    public ModelAndView deleteSede(@RequestParam long id) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		 		sdao.borrar(id);;
	        	return new ModelAndView("redirect:listar");
			}else return new ModelAndView("redirect:frontend");
	    }
	    
	    @RequestMapping("nuevaSede")
	    public ModelAndView createSede(@ModelAttribute Sede sede) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		 		return new ModelAndView("nuevaSede");
			}else return new ModelAndView("redirect:frontend");
	    }
	    
	    @RequestMapping("guardarSede")
	    public ModelAndView saveSede(@ModelAttribute Sede sede) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		    	// Si el id de la Sede es 0 entonces se crea la Sede, de lo contrario se actualiza 
		        if(sede.getIdSede() == null || sede.getIdSede() == 0  ){ 
		            sdao.persistir(sede);
		        } else {
		            sdao.actualizar(sede);
		        }
		        return new ModelAndView("redirect:listar");
			}else return new ModelAndView("redirect:frontend");
	    }
	    
}
