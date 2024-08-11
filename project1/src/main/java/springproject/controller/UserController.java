package springproject.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import springproject.model.UserModel;
import springproject.service.UserService;

@Controller
@SessionAttributes("userdata")
public class UserController  {
	@Autowired
	UserService us ;
	
	@RequestMapping("/")
	public String greeting() 
	{
		return"welcome";
	}
	
	
	
	@RequestMapping("/login")
	public String login ()
	{
		return "login";
	}

	
	@PostMapping("/check")
	public String check_user( @ModelAttribute("userdata") UserModel um ,Model model) 
	{
		UserModel u =us.check(um.getUsername() ,um.getPassword());
		if(u!=null) {
		model.addAttribute("userdata", u);
		return"redirect:/show";
		}
		return "login";
	}
	
	@RequestMapping("/signup")
	public String sign_up() 
	{
		return"signup";
	}
	
	@RequestMapping("/adduser")
	public String add_user(@RequestParam("fname") String first_name ,@RequestParam("lname") String last_name,
			@RequestParam("uname") String username ,@RequestParam("pass") String password , Model model)
	{
		UserModel um = new UserModel( first_name, last_name, username, password);
		UserModel u = us.adduser(um);
		if(u!=null) {
			model.addAttribute("message", "User has been added successfully");
		return"signup";}
		else 
			model.addAttribute("message", "Something went wrong");
		return"signup";
	}
	
	
	 @ModelAttribute("userdata") public UserModel u () {
	 
	 return new UserModel(); }
	
	
	//@RequestParam("uname") String username , @RequestParam("pass") String password
	
	
	
}
