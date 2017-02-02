/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.cr.una.backend.dao;


import ac.cr.una.backend.model.BookType;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author zagad
 */
public class BookTypeDAOImpl implements BookTypeDAO {
    
    private final Session session = HibernateUtil.getSessionFactory().openSession();

    /**
     *
     * @return
     */
    @Override
    public boolean deleteAll() {
        boolean isDeleted = false;
        session.getSessionFactory().getCurrentSession().createSQLQuery("delete from booktype").executeUpdate();
        isDeleted=true;
        return isDeleted;
    }

    /**
     *
     * @param bookType
     * @return
     */
    @Override
    public BookType save(BookType bookType) {
        session.beginTransaction();
        session.save(bookType);
        session.getTransaction().commit();

        return bookType;
    }

    /**
     *
     * @param type
     * @return
     */
    @Override
    public BookType findByType(String type) {
        BookType bookType = null;
        Query query = session.createQuery("from booktype where type = :type ");
        query.setParameter("type",type);

        if (query.list().size() > 0) {
            bookType = (BookType) query.list().get(0);
        }

        return bookType;
    }
    
    
}
