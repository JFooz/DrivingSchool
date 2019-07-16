package com.driving.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.driving.models.Eleve;

@WebServlet("/accueil")

public class Accueil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Accueil() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		List<Eleve> elevelist = new ArrayList<>();
		HttpSession session = request.getSession();





		if(session != null) {
			Eleve eleve = (Eleve) session.getAttribute("eleve");
			if(eleve != null) {
				elevelist.add(eleve);
			}
		}


		elevelist.add(new Eleve("J", "Fooz", 28));
		elevelist.add(new Eleve("Cousin", "Tom", 28));
		elevelist.add(new Eleve("J", "Fooz", 28));
		elevelist.add(new Eleve("Cousin", "Tom", 28));
		elevelist.add(new Eleve("J", "Fooz", 28));
		elevelist.add(new Eleve("Cousin", "Tom", 28));
		elevelist.add(new Eleve("J", "Fooz", 28));
		elevelist.add(new Eleve("Cousin", "Tom", 28));
		elevelist.add(new Eleve("J", "Fooz", 28));
		elevelist.add(new Eleve("Cousin", "Tom", 28));
		request.setAttribute("list", elevelist);
		System.out.println(elevelist);


		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);

	}

}
