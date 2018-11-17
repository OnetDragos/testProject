package hello.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import hello.entities.Appointment;
import hello.entities.User;
import hello.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public ModelAndView loginForm() {
		return new ModelAndView("loginform","command",  new User());
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("SpringWeb")User user,
			ModelMap model) {
		User userResult = userService.checkUserExists(user.getEmail(), user.getPassword());	
		if(userResult != null) {
			model.addAttribute("user", userResult);
			if (userResult.isAdmin())
				return new ModelAndView("home2");
			else return new ModelAndView("home","command",  new User());
		} else {
			return new ModelAndView("registerform");
		}	
	}
	
	@RequestMapping(value = "/registerForm", method = RequestMethod.GET)
	public ModelAndView registerForm() {
		return new ModelAndView("registerform","command",  new User());
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView addPacient(@ModelAttribute("SpringWeb")User user,
			ModelMap model) {
		model.addAttribute("user", user);
		
		userService.addUser(user);
		return new ModelAndView("loginform","command",  new User());
	}
	
	@RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
	public ModelAndView deleteUser(@RequestParam(value = "id")int id,
			ModelMap model) {
		
		userService.delete(id);
		
		return new ModelAndView("loginform","command",  new User());
		
	}
	
	@RequestMapping(value = "/billing", method = RequestMethod.POST)
	public ModelAndView billing() {
		return new ModelAndView("tables");
	}
	
	@RequestMapping(value = "/tables", 
			params = {"t"},
			method = RequestMethod.GET)
	public String table(@RequestParam(value = "t")String table,
			ModelMap model) {
		model.addAttribute("tableId",table);
		return "jdbc";
	}

	
}
