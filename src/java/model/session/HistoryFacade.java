/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.session;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import model.entity.Book;
import model.entity.History;

/**
 *
 * @author Melnikov
 */
@Stateless
public class HistoryFacade extends AbstractFacade<History> {

    @EJB private BookFacade bookFacade;
    @EJB private HistoryFacade historyFacade;
    
    @PersistenceContext(unitName = "JPTV21WebLibraryPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public HistoryFacade() {
        super(History.class);
    }
    
    public List<History> findListReadedBooks(){
        return em.createQuery("SELECT h FROM History h WHERE h.returnBookDate=NULL")
                .getResultList();
    }

    public Map<Book,Integer> getListHistoryPeriod(String year, String month, String day) {
        List<History> listHistories = null;
        //найти дату на начало года year и дату на начало года year+1
        if((month == null || month.isEmpty()) && (day == null || day.isEmpty())){
            LocalDate date1 = LocalDate.now().withYear(Integer.parseInt(year));
            LocalDate date2 = LocalDate.now().withYear(Integer.parseInt(year)+1);
            
            Date beginYear = Date.from(date1.atStartOfDay(ZoneId.systemDefault()).toInstant());
            Date beginNextYear = Date.from(date2.atStartOfDay(ZoneId.systemDefault()).toInstant());
            listHistories = em.createQuery("SELECT h FROM History h WHERE h.takeOnBookDate > :beginYear AND h.takeOnBookDate< :beginNextYear")
                .setParameter("beginYear", beginYear)
                .setParameter("beginNextYear", beginNextYear)
                .getResultList();
            
        }else if(day == null || day.isEmpty()){
            Calendar c1 = Calendar.getInstance();
            c1.set(Integer.parseInt(year),Integer.parseInt(month)-1);
            Calendar c2 = Calendar.getInstance();
            c2.set(Integer.parseInt(year),Integer.parseInt(month));
            
            listHistories = em.createQuery("SELECT h FROM History h WHERE h.takeOnBookDate > :beginMonth AND h.takeOnBookDate< :beginNextMonth")
                .setParameter("beginYear", c1.getTime())
                .setParameter("beginNextYear", c2.getTime())
                .getResultList();
        }else{
            Calendar c1 = Calendar.getInstance();
            c1.set(Integer.parseInt(year),Integer.parseInt(month), Integer.parseInt(day));
            Calendar c2 = Calendar.getInstance();
            c2.set(Integer.parseInt(year),Integer.parseInt(month), Integer.parseInt(day)+1);
            listHistories = em.createQuery("SELECT h FROM History h WHERE h.takeOnBookDate > :begin AND h.takeOnBookDate< :beginNext")
                .setParameter("begin", c1.getTime())
                .setParameter("beginNext", c2.getTime())
                .getResultList();
        }
        
    
        Map<Book, Integer>mapBooksRange = new HashMap<>();
        List<Book> books = bookFacade.findAll();
        for (Book book : books) {
            mapBooksRange.put(book, 0);
            for (History history : listHistories) {
                if(history.getBook().equals(book)){
                    Integer n = mapBooksRange.get(book);
                    n++;
                    mapBooksRange.put(book, n);
                }
            }
        }
        return mapBooksRange;
    }
}
