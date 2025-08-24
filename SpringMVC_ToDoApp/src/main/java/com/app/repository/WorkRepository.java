package com.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.entity.Work;

public interface WorkRepository extends JpaRepository<Work, String>
{

}
