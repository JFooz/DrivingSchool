package com.driving.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.driving.models.Eleve;

@WebServlet("/inscription")

public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Inscription() {
		super();

	}


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("déclenchement doGet");
		this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
	}


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("déclenchement doPost");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		int age = Integer.parseInt(request.getParameter("age"));
		Eleve eleve = new Eleve(nom, prenom, age);

		HttpSession session = request.getSession(true);
		request.setAttribute("eleve", eleve);
		response.sendRedirect(request.getContextPath() + "/accueil");
		//this.getServletContext().getRequestDispatcher("/WEB-INF/confirmationInscription.jsp").forward(request, response);

	}

}
