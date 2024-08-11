package springproject.model;

import java.time.LocalDate;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="todos")
public class TodoModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id ;
	String title ;
	String username ;
	String description ;
	LocalDate targetdate;
	boolean status ;
	public TodoModel() {
		super();
	}
	
	public TodoModel(String title, String username, String description, LocalDate targetdate, boolean status) {
		super();
		this.title = title;
		this.username = username;
		this.description = description;
		this.targetdate = targetdate;
		this.status = status;
	}

	public TodoModel(int id, String title, String username, String description, LocalDate targetdate, boolean status) {
		super();
		this.id = id;
		this.title = title;
		this.username = username;
		this.description = description;
		this.targetdate = targetdate;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public LocalDate getTargetdate() {
		return targetdate;
	}
	public void setTargetdate(LocalDate targetdate) {
		this.targetdate = targetdate;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "TodoModel [id=" + id + ", title=" + title + ", username=" + username + ", description=" + description
				+ ", targetdate=" + targetdate + ", status=" + status + "]";
	}
	
	
	
}
