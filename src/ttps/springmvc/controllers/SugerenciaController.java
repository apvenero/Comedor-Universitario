package ttps.springmvc.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ttps.clases.Perfil;
import ttps.clases.ResponsableSede;
import ttps.clases.Sugerencia;
import ttps.dao.SedeDao;
import ttps.dao.SugerenciaDao;

@Controller
public class SugerenciaController {

	@Autowired
	private SugerenciaDao sudao;
	
	@Autowired
	private SedeDao sededao;
	
	@Autowired
	private HttpSession httpSession;
	
	@RequestMapping("newSugerencia")
    public ModelAndView createSugerencia(@ModelAttribute Sugerencia sugerencia) {
    	Perfil usuarioSesion=(Perfil) httpSession.getAttribute("u");
		if(usuarioSesion!= null && usuarioSesion.sosUsuario()){
	    	ModelAndView miMAV = new ModelAndView();
	        miMAV.setViewName("nuevaSugerencia");
	        miMAV.addObject("allsedes", sededao.listar());
	        miMAV.addObject("u", usuarioSesion);
	        return miMAV;
		}else return new ModelAndView("redirect:frontend");
    }
	
	@RequestMapping("guardarSugerencia")
    public ModelAndView saveSugerencia(@ModelAttribute Sugerencia sugerencia) {
		Perfil usuarioSesion =(Perfil) httpSession.getAttribute("u");
		if(usuarioSesion!= null && usuarioSesion.sosUsuario()){
			if(sugerencia.getIdSugerencia() == null || sugerencia.getIdSugerencia() == 0  ){ 
	            sudao.persistir(sugerencia);
	        } else {
	            sudao.actualizarSugerencia(sugerencia);
	        }
	        return new ModelAndView("exitoSugerencia");
		}else return new ModelAndView("redirect:frontend");
    }
	@RequestMapping("buzonVirtual")
    public ModelAndView buzonVirtual() {
		Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
	        List<Sugerencia> sugList = sudao.recuperarTodos();
	        return new ModelAndView("buzonVirtual", "sugList", sugList);
		}else return new ModelAndView("redirect:frontend");
    }
	
	@RequestMapping("listarGenerales")
    public ModelAndView listarGenerales() {
		Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosResponsable()){
	        List<Sugerencia> sugList = sudao.recuperarTodos();
	        return new ModelAndView("sugerenciasGenerales", "sugList", sugList);
		}else return new ModelAndView("redirect:frontend");
    }
	
	@RequestMapping("listarSedes")
	public ModelAndView listarSedes(@ModelAttribute Sugerencia sugerencia) {
		ResponsableSede usuarioSesion = (ResponsableSede) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosResponsable()){
			List<Sugerencia> suglist = sudao.recuperarTodos();//cambiar a un su idsede
			List<Sugerencia> mias= new ArrayList<Sugerencia>();
			for (Sugerencia sug: suglist){
				if( sug.getSede().getIdSede()== usuarioSesion.getSede().getIdSede() ){
					mias.add(sug);					
				}
			}
		    return new ModelAndView("sugerenciasSede", "listasedes", mias);
		}else return new ModelAndView("redirect:frontend");
	}
	
	@RequestMapping("estadisticasSug")
    public ModelAndView estadisticasSug() {
		Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
	 		return new ModelAndView("sugerenciasEstadisticas");
		}else return new ModelAndView("redirect:frontend");
    }
}