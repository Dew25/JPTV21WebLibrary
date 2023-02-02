/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.entity.Reader;
import java.io.IOException;
import java.util.GregorianCalendar;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.entity.Book;
import model.entity.History;
import model.session.BookFacade;
import model.session.HistoryFacade;
import model.session.ReaderFacade;

/**
 *
 * @author Melnikov
 */
@WebServlet(name = "HistoryServlet", urlPatterns = {
    "/takeOnBook",
    "/createHistory",
    
    
})
public class HistoryServlet extends HttpServlet {

    @EJB private ReaderFacade readerFacade;
    @EJB private BookFacade bookFacade;
    @EJB private HistoryFacade historyFacade;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String path = request.getServletPath();
        switch (path) {
            case "/takeOnBook":
                request.setAttribute("listReaders", readerFacade.findAll());
                request.setAttribute("listBooks", bookFacade.findAll());
                request.getRequestDispatcher("/WEB-INF/takeOnBook.jsp").forward(request, response);
                break;
            
            case "/createHistory":
                String bookId = request.getParameter("bookId");
                String readerId = request.getParameter("readerId");
                Book book = bookFacade.find(Long.parseLong(bookId));
                Reader reader = readerFacade.find(Long.parseLong(readerId));
                History history = new History();
                history.setBook(book);
                history.setReader(reader);
                history.setTakeOnBookDate(new GregorianCalendar().getTime());
                historyFacade.create(history);
                request.setAttribute("info", 
                        "Книга \""+book.getName()
                                +"\"выдана читателю "
                                +reader.getFirstname()+" "+reader.getLastname()
                );
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                break;
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
