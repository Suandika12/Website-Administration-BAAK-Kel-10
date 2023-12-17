package com.example.baakKel10.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.baakKel10.model.User;

@Repository
public interface RegistrasiRepository extends JpaRepository<User, Long>{
	User findByUsernameAndPassword(String username, String password);
}