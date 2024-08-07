package com.gandhinagar.ganesh.userService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gandhinagar.ganesh.model.UserModel;
import com.gandhinagar.ganesh.userRepository.UserRepository;

@Service
public class UserModelService {

	@Autowired
	private UserRepository repository;
	
	public UserModel login(String username, String password) {
        return repository.findByUsernameAndPassword(username, password);
    }

}
