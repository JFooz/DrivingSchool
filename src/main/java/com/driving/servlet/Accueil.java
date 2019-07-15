package com.driving.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

		String msg = "Message depuis la servlet";
		request.setAttribute("msg", msg);
		List<Eleve> elevelist = new ArrayList<>();
		Eleve eleve1 = new Eleve();
		elevelist.add(new Eleve("J", "Fooz", 28));
		elevelist.add(new Eleve("Cousin", "Tom", 28));
		request.setAttribute("list", elevelist);


		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);

	}

}
