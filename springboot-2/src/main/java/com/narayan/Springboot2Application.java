package com.narayan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.narayan.dao.Userdao;
import com.narayan.entity.Book;
import com.narayan.repository.BookRepository;

@SpringBootApplication
public class Springboot2Application implements CommandLineRunner {

	public static void main(String[] args) {
		ConfigurableApplicationContext context =  SpringApplication.run(Springboot2Application.class, args);
			
	}
	@Autowired
	BookRepository bookRepository;

	@Override
	public void run(String... args) throws Exception {
		
		Book book = new Book();
		book.setId(1);
		book.setName("java");
		book.setPrice(4000);
		book.setQty(10);
		
		Book book2 = new Book();
		book2.setId(2);
		book2.setName("python");
		book2.setPrice(2000);
		book2.setQty(14);
		
		bookRepository.saveAll(List.of(book,book2));
		
		long count = bookRepository.count();
		System.err.println(count);
				
		//bookRepository.save(book);
		
		//starter code 
		//fast access
//		System.out.println("run method called");
		
	}

}
