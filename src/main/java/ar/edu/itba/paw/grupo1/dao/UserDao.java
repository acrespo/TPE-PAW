package ar.edu.itba.paw.grupo1.dao;

public interface UserDao {

	public void register(String name, String surname, String email, String phone, String username, String password) throws UserAlreadyExistsException;
	
	public class UserAlreadyExistsException extends Exception {
		
	}
}
