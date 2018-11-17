package hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import hello.service.IMyService;

@Controller
public class PacientController {
	
	@Autowired
	IMyService myService;
	
	@RequestMapping(value = "/pacient", method = RequestMethod.GET)
	public ModelAndView pacient() {
		return new ModelAndView("pacient", "command", new Pacient());
	}
	
	@RequestMapping(value = "/addPacient", method = RequestMethod.POST)
	public String addPacient(@ModelAttribute("SpringWeb")Pacient pacient,
			ModelMap model) {
		model.addAttribute("name", pacient.getName());
		model.addAttribute("age", myService.floorAgeToMaxValue(pacient.getAge()));
		model.addAttribute("id", pacient.getId());
		
		return "result";
	}
}
