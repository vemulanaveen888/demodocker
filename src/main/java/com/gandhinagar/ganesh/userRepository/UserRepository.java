package com.gandhinagar.ganesh.userRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gandhinagar.ganesh.model.UserModel;

@Repository
public interface UserRepository extends JpaRepository<UserModel, Long> {
	
	UserModel findByUsernameAndPassword(String username, String password);


}
