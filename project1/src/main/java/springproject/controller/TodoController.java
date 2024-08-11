package springproject.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.annotation.SessionScope;

import springproject.model.TodoModel;
import springproject.model.UserModel;
import springproject.service.TodoService;

@Controller
public class TodoController  {
	
	@Autowired
	TodoService ts ;
	
	
	@RequestMapping("/add")
	public String add(@RequestParam("user") String username , Model model)
	{
		model.addAttribute("user", username);
		return"addtodo";
	}
	
	
	@PostMapping("/new-edit")
	public String new_todo(@ModelAttribute("todo") TodoModel tm , Model model) 
	
	{
		 ts.newuser(tm);
		return"redirect:/show";
		
	}
	
	@GetMapping("/show")
	public String show_all_todos(@SessionAttribute("userdata") UserModel um ,Model model)
	{
		String name = um.toString();
		String user = um.getUsername();
		List<TodoModel>todos = ts.show_by_name(user);
		model.addAttribute("todos", todos);
		model.addAttribute("user", user);
		model.addAttribute("name", name);
		return"user";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam int id ) {
		ts.delete(id);
		return"redirect:/show";
		
	}
	
	@RequestMapping("/modify")
	public String modify(@RequestParam("id") int id ,@RequestParam("user") String username   , Model model)
	{

		TodoModel tm = ts.show_by_id(id);
		model.addAttribute("todo", tm);
		model.addAttribute("user", username);
		return"addtodo";
	}
	
}
