/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.cr.una.backend.service;

import ac.cr.una.backend.dao.BookDAO;
import ac.cr.una.backend.model.Book;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author zagad
 */
public class BookServiceImpl implements BookService {
    
    BookDAO bookDAO;

    /**
     *
     */
    public BookServiceImpl() {
    }

    /**
     *
     * @param bookDAO
     */
    public BookServiceImpl(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }

    /**
     *
     * @return
     */
    @Override
    public boolean deleteAll() {
        return bookDAO.deleteAll();
    }

    /**
     *
     * @param book
     * @return
     */
    @Override
    public Book save(Book book) {
        return bookDAO.save(book);
    }

    /**
     *
     * @return
     */
    @Override
    public List<Book> findAll() {
        return bookDAO.findAll();
    }

    /**
     *
     * @return
     */
    @Override
    public float totalPriceAll() {
       List<Book> bookList = new ArrayList<>();
        bookList = this.findAll();
        float totalPrice = 0;
        for(Book book: bookList){
            totalPrice += book.getPrice();
        }
        return totalPrice;
    }

   
    
    
}
