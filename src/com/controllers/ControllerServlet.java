package com.controllers;
import java.io.IOException;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ShopDAO;
import com.models.Product;
import com.models.User;






public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ShopDAO shopDAO;

	public void init() {
		String hostName = getServletContext().getInitParameter("hostName");
		String sqlInstanceName = getServletContext().getInitParameter("sqlInstanceName");
		String database = getServletContext().getInitParameter("database");
		String port = getServletContext().getInitParameter("port");
		String userName = getServletContext().getInitParameter("userName");
		String password = getServletContext().getInitParameter("password");

		shopDAO = new ShopDAO(hostName, sqlInstanceName, port, database, userName, password);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/index":
				userview(request, response);
				break;
			case "/login":
				Login(request, response);
				break;
			case "/loginv":
				loginview(request, response);
				break;
			case "/signup":
				insertUsers(request, response);
				break;
			case "/signupv":
				signupview(request, response);
				break;
			case "/log":
				Logout(request, response);
				break;
			case "/admin":
				adminview(request, response);
				break;
			case "/home":
				homeview(request, response);
				break;
			case "/detail":
				detailview(request, response);
				break;
			case "/listuser":
				listalluser(request, response);
				break;
			case "/listproduct":
				listallProduct(request, response);
				break;
			case "/addproduct":
				insertProduct(request, response);
				break;
			case "/addproductview":
				addproductview(request, response);
				break;
			default:
				homeview(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void loginview(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/com.views/Login.jsp");
		dispatcher.forward(request, response);
	}
	private void adminview(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/com.views/admin.jsp");
		dispatcher.forward(request, response);
	}
	private void addproductview(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/com.views/admin-addproduct.jsp");
		dispatcher.forward(request, response);
	}
	private void detailview(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		ShopDAO n=new ShopDAO();
		String p1=shopDAO.getLongProduct("User1").getProductName();
		String p3=shopDAO.getLongProduct("User1").getProductImage();
		String p4=shopDAO.getLongProduct("User1").getLongDetail();
		float p5=shopDAO.getLongProduct("User1").getProductPrice();
		String p6=shopDAO.getLongProduct("User1").getProductDescription();
		request.setAttribute("ProductName", p1);
		request.setAttribute("ProductImage", p3);
		request.setAttribute("LongDetail", p4);
		request.setAttribute("ProductPrice", p5);
		request.setAttribute("ProductDescription", p6);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/com.views/detail.jsp");
		dispatcher.forward(request, response);
	}
	private void Logout(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, ServletException, IOException{
		HttpSession session = request.getSession(false);
		session.invalidate();
		response.sendRedirect("home");
	}
	private void Login(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, ServletException, IOException {	      
	    HttpSession session=request.getSession();
	    if (!((String)session.getAttribute("login")=="true"))
		{Check(request, response);}
	    else 
	    {
	    	
	    }
	}
	private void Check(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		HttpSession session = request.getSession();
		String n=request.getParameter("username");
		String p=request.getParameter("userpass");
		
		if(shopDAO.validateuser(n, p)){
			session.setAttribute("username", n);
			userview(request, response);
		}
		else if(shopDAO.validateadmin(n, p)){
			session.setAttribute("username", n);
			adminview(request, response);
		}
		else {
			request.setAttribute("message","Incorrect username and/or password");
			request.getRequestDispatcher("/views/Login.jsp").forward(request, response);
		}
	}
	private void  userview(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		ShopDAO n=new ShopDAO();
		String p1=shopDAO.getShortProduct("User1").getProductName();
		String p2=shopDAO.getShortProduct("User1").getProductID();
		String p3=shopDAO.getShortProduct("User1").getProductImage();
		String p4=shopDAO.getShortProduct("User1").getShortDetail();
		request.setAttribute("ProductName", p1);
		request.setAttribute("ProductID", p2);
		request.setAttribute("ProductImage", p3);
		request.setAttribute("ShortDetail", p4);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/com.views/index.jsp");
		dispatcher.forward(request, response);
	}
	private void  homeview(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		ShopDAO n=new ShopDAO();
		String p=shopDAO.getShortProduct("User1").getProductName();
		request.setAttribute("shortdetail", p);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/com.views/Home.jsp");
		dispatcher.forward(request, response);
	}
	
	
	private void signupview(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/com.views/register.jsp");
		dispatcher.forward(request, response);
	}
	private void insertUsers(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String pass = request.getParameter("userpass");
		String pass1=request.getParameter("userpass1");
		User u=new User(username, pass, name);

		if(pass.equals(pass1)){
			shopDAO.insertUser(u);
			response.sendRedirect("loginv");	
		}

		else {
			request.setAttribute("messageS","Sorry! Please Re-type password");
			request.getRequestDispatcher("/com.views/register.jsp").forward(request, response);
		}
		
	}
	private void listalluser(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException, ServletException {
		List<User> listUser = shopDAO.listAllUsers();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/com.views/admin-user.jsp");
		dispatcher.forward(request, response);
	}
	private void listallProduct(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException, ServletException {
		List<Product> listProduct = shopDAO.listAllProducts();
		request.setAttribute("listProduct",listProduct);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/com.views/admin-product.jsp");
		dispatcher.forward(request, response);
	}
	private void insertProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		

		 String productID=request.getParameter("id");
         String productName=request.getParameter("name");
         String productImage=request.getParameter("image");
         float productPrice=Float.parseFloat(request.getParameter("price"));
         String productDescription=request.getParameter("description");
        String shortDetail=request.getParameter("sdetail");
         String longDetail=request.getParameter("ldetail");
         Product p=new Product(productID, longDetail, shortDetail, productName, productImage, productPrice, productDescription);
			shopDAO.insertProduct(p);
			response.sendRedirect("listproduct");	

		
	}
}
