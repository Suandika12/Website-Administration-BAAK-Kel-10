package com.example.baakKel10.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.baakKel10.model.IjinBermalam;


public interface IjinBermalamRepository extends JpaRepository<IjinBermalam, Long> {
	List<IjinBermalam> findByUserId(Long userId);
}
