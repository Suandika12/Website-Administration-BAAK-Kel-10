package com.example.baakKel10.repository;

import com.example.baakKel10.model.Surat;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SuratRepository extends JpaRepository<Surat, Long> {
	List<Surat> findByUserId(Long userId);
}
