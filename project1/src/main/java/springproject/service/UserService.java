package springproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import springproject.model.UserModel;
import springproject.repository.UserRepository;


@Service
@Component
public class UserService {
	@Autowired
	UserRepository repo ;
	
	public UserModel check(String username, String password) {
		
		UserModel um  = repo.getByUsername(username);
		
		 if(um!=null && um.getPassword().equals(password)) {
		
			 return um ;}
		 
		 else
			 return null ;

		}

	public UserModel adduser(UserModel um) {
		
		UserModel u = repo.save(um);
		
		return u;
	}
}