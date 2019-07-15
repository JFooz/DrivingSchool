package com.driving.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.driving.models.SeanceCode;


@WebServlet("/seances-code")
public class SeanceCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SeanceCodeServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<SeanceCode> seanceList = new ArrayList<>();
		LocalDate date = LocalDate.now();
		seanceList.add(new SeanceCode("Lille", date));
		seanceList.add(new SeanceCode("Lille", date));
		seanceList.add(new SeanceCode("Paris", date));
		seanceList.add(new SeanceCode("Lille", date));
		seanceList.add(new SeanceCode("Marseille", date));
		seanceList.add(new SeanceCode("Lille", date));
		request.setAttribute("seanceList", seanceList);

		this.getServletContext().getRequestDispatcher("/WEB-INF/seances-code.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
