package springproject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import springproject.model.TodoModel;

@Repository
public interface TodoRepository extends JpaRepository<TodoModel, Integer>{

	List<TodoModel> findByUsername(String username);
}
