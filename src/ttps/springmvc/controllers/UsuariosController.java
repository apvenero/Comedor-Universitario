package ttps.springmvc.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ttps.clases.Administrador;
import ttps.clases.Perfil;
import ttps.clases.ResponsableSede;
import ttps.clases.Sede;
import ttps.clases.Usuario;
import ttps.dao.AdministradorDao;
import ttps.dao.PerfilDao;
import ttps.dao.ResponsableSedeDao;
import ttps.dao.SedeDao;
import ttps.dao.UsuarioDao;

@Controller
public class UsuariosController {

	@Autowired
    private PerfilDao<Perfil> pdao;
	@Autowired
	private ResponsableSedeDao responsableSedeDao;
	@Autowired
	private SedeDao sdao;
	@Autowired
	private AdministradorDao admindao;
	@Autowired
	private UsuarioDao usudao;
	@Autowired
	private HttpSession httpSession;
	
	
	@RequestMapping("viewHomeResponsable")
	public ModelAndView viewHomeResponsable() {
		Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosResponsable()){
	 		return new ModelAndView("homeResponsable");
	 	}else return new ModelAndView("redirect:frontend");
    }
	
	@RequestMapping("viewHomeAdministrador")
	public ModelAndView viewHomeAdministrador() {
		Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosAdministrador()){
	 		return new ModelAndView("homeAdministrador");
	  }else return new ModelAndView("redirect:frontend");
	}
	
	@RequestMapping("listarAdmin")
	public ModelAndView listarAdmin() {
        List<Perfil> todos = pdao.listar();
        List<Perfil> adminList= new ArrayList<Perfil>();
        for (Perfil u:todos){
        	if(u.sosAdministrador()){
        		adminList.add(u);
             }
        }
        return new ModelAndView("listadoAdministradores", "adminList", adminList);

    }
	
	@RequestMapping("listarResp")
	public ModelAndView listarResp() {
        List<ResponsableSede> todos = responsableSedeDao.recuperarTodos();
        
        return new ModelAndView("listadoResponsables", "respList", todos);
    }
	
	
	@RequestMapping("nuevoResp")
    public ModelAndView createResponsable(@ModelAttribute ResponsableSede responsable ) {
        List<Sede> selectSede = sdao.listar();
		return new ModelAndView("nuevoResponsable","selectSede", selectSede);
     }
    
	
	@RequestMapping("nuevoAdmin")
	   public ModelAndView createSede(@ModelAttribute Administrador admin) {
	       return new ModelAndView("nuevoAdministrador");
	 }
	 
	@RequestMapping("guardarAdministrador")
	public ModelAndView saveAdministrador(@ModelAttribute Administrador admin) {
		
	    if(admin.getIdPerfil() == null || admin.getIdPerfil()== 0  ){ 
	        admindao.persistir(admin);
	        usudao.agregar(admin.getIdPerfil());
	    }
	    else{
	    	admindao.actualizar(admin);
	    }
	    return new ModelAndView("redirect:listarAdmin");
	 }
	
	@RequestMapping(value="guardarResponsable", method = RequestMethod.POST)
	public ModelAndView saveResponsable(@ModelAttribute("responsableSede") ResponsableSede responsable) {
		
		Sede s = sdao.recuperar(responsable.getSede().getIdSede());
		s.getResponsables().add(responsable);
		responsable.setSede(s);
		if(responsable.getIdPerfil() == null || responsable.getIdPerfil()== 0  ){ 
			usudao.agregar(responsable.getIdPerfil());
//	    	responsableSedeDao.alta(responsable);
	    	sdao.actualizar(s);
	    } else {
	    	usudao.agregar(responsable.getIdPerfil());
	    	responsableSedeDao.actualizar(responsable);
	    }
	    return new ModelAndView("redirect:listarResp");
	 }
	
	@RequestMapping(value="actualizarResponsable", method = RequestMethod.POST)
	public ModelAndView actualizarResponsable(@ModelAttribute ResponsableSede responsable) {
		
		Sede s = sdao.recuperar(responsable.getSede().getIdSede());
		s.getResponsables().add(responsable);
		responsable.setSede(s);
		if(responsable.getIdPerfil() != null || responsable.getIdPerfil()!= 0  ){ 
			responsableSedeDao.actualizar(responsable);
	    } 
	    return new ModelAndView("redirect:listarResp");
	 }
	
	@RequestMapping("editarAdmin")
    public ModelAndView editAdmin(@RequestParam long id, @ModelAttribute Administrador admin) {
		admin = (Administrador) pdao.recuperar(id);
        return new ModelAndView("modificarAdministrador", "admin", admin);
    }
	
	@RequestMapping("editarResp")
    public ModelAndView editResp(@RequestParam long id, @ModelAttribute ResponsableSede resp) {

         ModelAndView miMAV = new ModelAndView();
         miMAV.setViewName("modificarResponsable");
         miMAV.addObject("resp",pdao.recuperar(id));
         miMAV.addObject("sedesss",sdao.listar());
         return miMAV;

    }

	@RequestMapping("eliminarAdmin")
	public ModelAndView deleteAdmin(@RequestParam long id) {
	   pdao.borrar(id);;
	   return new ModelAndView("redirect:listarAdmin");
	}
	  
	  @RequestMapping("eliminarResp")
	    public ModelAndView deleteResp(@RequestParam long id) {
		  	ResponsableSede responsable = (ResponsableSede) pdao.recuperar(id);
		  	Sede s = sdao.recuperar(responsable.getSede().getIdSede());
		  	s.getResponsables().remove(id);
		  	responsableSedeDao.borrar(id);
	        return new ModelAndView("redirect:listarResp");
	    }
   
	@RequestMapping("editarPerfil")
	public ModelAndView editPerfil() {
	  Perfil usuarioSesion=(Perfil) httpSession.getAttribute("u");
	  if(usuarioSesion!= null && usuarioSesion.sosUsuario()){
		  ModelAndView miMAV = new ModelAndView();
		  miMAV.setViewName("modificarDatosUsuario");
		  miMAV.addObject("u", usuarioSesion);
		  return miMAV;
	  }else return new ModelAndView("redirect:frontend");
	}
	
	@RequestMapping("viewHomeUsuario")
	public ModelAndView viewHomeUsuario() {
		Perfil usuarioSesion=(Perfil) httpSession.getAttribute("u");
		if(usuarioSesion!= null && usuarioSesion.sosUsuario()){
    		return new ModelAndView("homeUsuario", "u", usuarioSesion);
    	}
    	else
    		return new ModelAndView("redirect:frontend");
	}
	
	@RequestMapping("listaUsuariosHabilitados")
	public ModelAndView listaUsuariosHabilitados() {
		Perfil usuarioSesion = (Perfil) httpSession.getAttribute("u");
	 	if(usuarioSesion!= null && usuarioSesion.sosResponsable()){
	 		List<Usuario> usuHab = usudao.recuperarHabilitados();
	        return new ModelAndView("listaUsuarios", "usuHab", usuHab);
		}else return new ModelAndView("redirect:frontend");
	}
	
	@RequestMapping("infoPerfil")
	public ModelAndView infoPerfil() {
	  Perfil usuarioSesion=(Perfil) httpSession.getAttribute("u");
	  if(usuarioSesion!= null && usuarioSesion.sosUsuario()){
		  ModelAndView miMAV = new ModelAndView();
		  miMAV.setViewName("datosUsuario");
		  miMAV.addObject("u", usuarioSesion);
		  return miMAV;
	  }else return new ModelAndView("redirect:frontend");
	}
	
	@RequestMapping("guardarUsuario")
	public ModelAndView saveUsuario(@ModelAttribute Usuario usu) {
		usudao.actualizar(usu);
		this.httpSession.setAttribute("u", usu);
	    return new ModelAndView("redirect:infoPerfil");
	 }
}
