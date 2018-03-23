/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kevin
 */
@WebServlet(urlPatterns = {"/doEncrypt"})
public class DoEncrypt extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String phrase = request.getParameter("phrase");
		String key = request.getParameter("key");
		Encrypter e = new Encrypter();
		
		double sq = Math.sqrt(key.length());
		if (sq != (long) sq)
            System.out.println("Invalid key length!!! Does not form a square matrix...");
        else
        {
            int s = (int) sq;
            if (e.check(key, s))
            {
                e.divide(key, s);
				e.cofact(e.keymatrix, s);
				
				String enc = e.r;
				String inv = e.inv;
				
				request.setAttribute("phrase", phrase.toLowerCase());
				request.setAttribute("key", key.toLowerCase());
				request.setAttribute("enc", enc);
		
				request.setAttribute("inv", inv);
            }
        }
		

		
        RequestDispatcher dispatcher 
                    = this.getServletContext().getRequestDispatcher("/WEB-INF/encrypterView.jsp");
            dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}