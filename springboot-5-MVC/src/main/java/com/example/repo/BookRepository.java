package com.example.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.controller.BookController;

public interface BookRepository extends JpaRepository<BookController, Integer> {

}
