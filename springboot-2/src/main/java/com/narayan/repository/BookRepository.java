package com.narayan.repository;

import org.springframework.data.repository.CrudRepository;


import com.narayan.entity.Book;

public interface BookRepository extends CrudRepository< Book, Integer>{

}
