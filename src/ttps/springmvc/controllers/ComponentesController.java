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

import ttps.clases.Bebida;
import ttps.clases.Componente;
import ttps.clases.EntradaPlatoPrincipal;
import ttps.clases.Perfil;
import ttps.clases.Postre;
import ttps.dao.BebidaDao;
import ttps.dao.ComponenteDao;
import ttps.dao.EntradaPlatoPrincipalDao;
import ttps.dao.PostreDao;

@Controller
public class ComponentesController {

	 @Autowired
	 private ComponenteDao<Componente> cdao;
	 @Autowired
	 private PostreDao postredao;
	 @Autowired
	 private BebidaDao bdao;
	 @Autowired
	 private EntradaPlatoPrincipalDao epdao;
	 @Autowired
	 private ComponenteDao<Componente> componenteDao;
	 @Autowired
	 private HttpSession httpSession;

    
	    @RequestMapping("listadoComponentes")
	    public ModelAndView listarComponentes() {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		    	List<Componente> compList = cdao.recuperarTodos();
		        return new ModelAndView("listaComponentes", "compList", compList);
			}else return new ModelAndView("redirect:frontend");
		}
	    
	    @RequestMapping("nuevoPostre")
	    public ModelAndView createPostre(@ModelAttribute Postre postre) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		 		return new ModelAndView("nuevoPostre");
			}else return new ModelAndView("redirect:frontend");
	    }

	    @RequestMapping("nuevaEntradaPP")
	    public ModelAndView createEntradaPP(@ModelAttribute EntradaPlatoPrincipal ep) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		 		return new ModelAndView("nuevaEntradaPlatoPrincipal");
			}else return new ModelAndView("redirect:frontend");
	    }
	    
	    @RequestMapping("nuevaBebida")
	    public ModelAndView createBebida(@ModelAttribute Bebida bebida) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		 		return new ModelAndView("nuevaBebida");
			}else return new ModelAndView("redirect:frontend");
	    }

	    @RequestMapping("guardarPostre")
	    public ModelAndView savePostre(@ModelAttribute Postre postre) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		    	if(postre.getIdComponente() == null || postre.getIdComponente() == 0  ){ 
		            postredao.persistir(postre);
		        } else {
		            postredao.actualizar(postre);
		        }
		        return new ModelAndView("redirect:listadoComponentes");
			}else return new ModelAndView("redirect:frontend");
	    }

	    @RequestMapping("guardarBebida")
	    public ModelAndView saveBebida(@ModelAttribute Bebida bebida) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		    	if(bebida.getIdComponente() == null || bebida.getIdComponente() == 0  ){ 
		            bdao.persistir(bebida);
		        } else {
		            bdao.actualizar(bebida);
		        }
		        return new ModelAndView("redirect:listadoComponentes");
			}else return new ModelAndView("redirect:frontend");
	    }
	    
	    @RequestMapping("guardarEntradaPP")
	    public ModelAndView saveComponente(@ModelAttribute EntradaPlatoPrincipal pp) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		    	if(pp.getIdComponente() == null || pp.getIdComponente() == 0  ){ 
		            epdao.persistir(pp);
		        } else {
		            epdao.actualizar(pp);
		        }
		        return new ModelAndView("redirect:listadoComponentes");
			}else return new ModelAndView("redirect:frontend");
	    }
	    
	    @RequestMapping("editarComponente")
	    public ModelAndView editComponente(@RequestParam long id,@ModelAttribute Componente comp) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		    	comp = cdao.recuperar(id);
		        return new ModelAndView("modificarComponente", "compObject", comp);
			}else return new ModelAndView("redirect:frontend");
	    }
	    
	    @RequestMapping("eliminarComponente")
	    public ModelAndView deleteComponente(@RequestParam long id) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		    	cdao.borrar(id);;
		        return new ModelAndView("redirect:listadoComponentes");
			}else return new ModelAndView("redirect:frontend");
	    }
	    

	    @RequestMapping(value="guardarComponente", method = RequestMethod.POST)
		public ModelAndView guardarComponente(@ModelAttribute Componente componente) {
	    	Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
		 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
		    	componenteDao.actualizarComponente(componente);
			    return new ModelAndView("redirect:listadoComponentes");
			}else return new ModelAndView("redirect:frontend");
		 }
}
