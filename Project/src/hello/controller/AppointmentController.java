package hello.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import hello.entities.User;
import hello.service.UserService;
import hello.service.AppointmentService;
import hello.entities.Appointment;
import hello.entities.PersonAppointment;
import hello.controller.UserController;

@Controller
public class AppointmentController {

	@Autowired
	private AppointmentService appointmentService;
	
	
	@RequestMapping(value = "/registerAppointment2", method = RequestMethod.GET)
	public ModelAndView registerForm() {
		return new ModelAndView("registerpersonappointment","command",  new PersonAppointment());
	}
	
	@RequestMapping(value = "/appointment2", method = RequestMethod.POST)
	public ModelAndView addPacient(@ModelAttribute("SpringWeb")PersonAppointment appointment,
			ModelMap model) {
		model.addAttribute("personappointment", appointment);
		//model.addAttribute("user", appointment.getUser());
		
		appointmentService.addPersonAppointment(appointment);
		return new ModelAndView("registerpersonappointment","command",  new PersonAppointment());
	}
	
	
	@RequestMapping(value = "/registerAppointment", method = RequestMethod.GET)
	public ModelAndView registerForm2() {
		return new ModelAndView("registerappointment","command",  new Appointment());
	}
	
	@RequestMapping(value = "/appointment", method = RequestMethod.POST)
	public ModelAndView addPacient2(@ModelAttribute("SpringWeb")Appointment appointment,
			ModelMap model) {
		model.addAttribute("appointment", appointment);
		//model.addAttribute("user", appointment.getUser());
		
		appointmentService.addAppointment(appointment);
		return new ModelAndView("registerappointment","command",  new Appointment());
	}
	@RequestMapping(value = "/deleteApp", method = RequestMethod.POST)
	public ModelAndView deleteUser(@RequestParam(value = "id")int id,
			ModelMap model) {
		
		appointmentService.delete(id);
		
		return new ModelAndView("loginform","command",  new User());
		
	}
	@RequestMapping(value = "/deletePersApp", method = RequestMethod.POST)
	public ModelAndView deleteUser2(@RequestParam(value = "id")int id,
			ModelMap model) {
		
		appointmentService.deletePers(id);
		
		return new ModelAndView("loginform","command",  new User());
		
	}
}
