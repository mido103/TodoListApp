package springproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import springproject.model.TodoModel;
import springproject.repository.TodoRepository;

@Service
@Component
public class TodoService {

	@Autowired
	TodoRepository tr ;
	
	public void newuser(TodoModel tm) {
		
		 tr.save(tm);
	
	}

	public List<TodoModel> show_by_name(String username) {
		
	List<TodoModel> todos= tr.findByUsername(username);
		
		return todos;
	}

	public void delete(int id) {
		
		tr.deleteById(id);
		
	}

	public TodoModel show_by_id(int id) {
		
		TodoModel tm = tr.findById(id).orElse(null);
		return tm;
	}

}
