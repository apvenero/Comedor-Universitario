package ttps.springmvc.controllers;


import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ttps.clases.Perfil;
import ttps.clases.UsuarioForm;
import ttps.dao.PerfilDao;


@Controller
public class LoginController {
	@Autowired
	private PerfilDao<Perfil> pdao;
	
	@Autowired
	private HttpSession httpSession;
	
	@RequestMapping(value = "/frontend", method = RequestMethod.GET)
	public String viewLogin(Map<String, Object> model) {
		UsuarioForm usuario = new UsuarioForm();
		model.put("usuarioForm", usuario);
		return "frontend";
	}


	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public ModelAndView doLogin(@Valid @ModelAttribute("usuarioForm") UsuarioForm usuarioForm,BindingResult result, Map<String, Object> model) {
		
		String contrasenia= usuarioForm.getContrasenia();
		String dni= usuarioForm.getDni();
		
		Perfil u=  pdao.recuperarUsuario(dni,contrasenia);
		this.httpSession.setAttribute("u", (Perfil)u);

		if (u != null){
			model.put("dni", u.getDni());
			model.put("contrasenia", u.getContrasenia());
			if(u.sosAdministrador()){
				return new ModelAndView("homeAdministrador", "u", u);

			}else{
				if(u.sosResponsable()){
			        return new ModelAndView("homeResponsable", "u", u);

				}else
			        return new ModelAndView("homeUsuario", "u", u);

			}
		}else
			model.put("error","Dni y/o contraseña incorrecto");
	        return new ModelAndView("frontend");
		
	}
	
	@RequestMapping("cerrar")
    public ModelAndView cerrar() {
		Perfil u=(Perfil) this.httpSession.getAttribute("u");
		if(u != null){
			this.httpSession.setAttribute("u", null);
		}
		return new ModelAndView("redirect:frontend");
     }
}

