package com.rin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/demo")
public class Demo extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = "Nguyen Van Rin";
		Student student = new Student("23IT231", name);

		request.setAttribute("name", name);
		request.setAttribute("student", student);

		List<Student> students = List.of(student, new Student("23IT293", "Huynh Tuan Tu"), new Student("23IT001", "Chuong Dang Nam"));
		request.setAttribute("students", students);

		RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
		rd.forward(request, response);
	}

}
