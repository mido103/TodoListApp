package springproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import springproject.model.UserModel;

import java.util.List;


@Repository
@Component
public interface UserRepository extends JpaRepository<UserModel, Integer> {

//	public UserModel findByUsername(String username);
	
	public UserModel getByUsername(String username);
	
	
}
