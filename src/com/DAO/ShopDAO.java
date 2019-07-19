package com.DAO;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.models.Product;
import com.models.User;




/**
 * AbstractDAO.java
 * This DAO class provides CRUD database operations for the table book
 * in the database.
 * @author www.codejava.net
 *
 */
public class ShopDAO {
	

	private String hostName;
	private String sqlInstanceName;
    private String userName;
    private String password;
    private Connection jdbcConnection;
    private String database;
    private String port;
    
     
    public ShopDAO(String hostName, String sqlInstanceName, String port, String database, String userName, String password) {
		this.hostName = hostName;
		this.sqlInstanceName = sqlInstanceName;
		this.port = port;
		this.database = database;
		this.userName = userName;
		this.password = password;
	}
    public ShopDAO() {
    	
    }
  

	protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
        
        	try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
        	
        	String connectionURL = "jdbc:sqlserver://" + hostName + ":" + port + ";instance=" + sqlInstanceName + ";databaseName=" + database;
        
        	jdbcConnection = DriverManager.getConnection(connectionURL, userName, password);
        }
    }
     
    protected void disconnect() throws SQLException {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
        	jdbcConnection.close();
        }
    }
	
	
	public List<User> listAllUsers() throws SQLException {
		List<User> listUser = new ArrayList<>();
		
		String sql = "SELECT * FROM b_user";
		
		connect();
		
		Statement statement = jdbcConnection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		
		while (resultSet.next()) {
			int id=resultSet.getInt("id");
			String username=resultSet.getString("username");
			String name=resultSet.getString("name");
			
			User u=new User(id,username,name);
			listUser.add(u);
		}
		
		resultSet.close();
		statement.close();
		
		disconnect();
		
		return listUser;
	}
	public List<Product> listAllProducts() throws SQLException {
		List<Product> listProduct = new ArrayList<>();
		
		String sql = "SELECT * FROM product";
		
		connect();
		
		Statement statement = jdbcConnection.createStatement();
		ResultSet rs = statement.executeQuery(sql);
		
		while (rs.next()) {
			  
	            String productID=rs.getString("product_id");
	            String productName=rs.getString("product_name");
	            String productImage=rs.getString("product_image");
	            float productPrice=rs.getFloat("product_price");
	            String productDescription=rs.getString("product_description");
	           String shortDetail=rs.getString("short_details");
	            String longDetail=rs.getString("long_details");
	            Product product = new Product(productID, longDetail, shortDetail, productName, productImage, productPrice, productDescription);
			listProduct.add(product);
		}
		
		rs.close();
		statement.close();
		
		disconnect();
		
		return listProduct;
	}
	public  boolean validateuser(String name,String pass) throws SQLException{
		
		boolean status=false;
		try{
			connect();
			PreparedStatement ps=jdbcConnection.prepareStatement("select * from b_user where username=? and password=?");
			ps.setString(1,name);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			status=rs.next();
		}catch(Exception e){System.out.println(e);}
		return status;
		}
public  boolean validateadmin(String name,String pass) throws SQLException{
		
		boolean status=false;
		try{
			connect();
			PreparedStatement ps=jdbcConnection.prepareStatement("select * from admin where username=? and password=?");
			ps.setString(1,name);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			status=rs.next();
		}catch(Exception e){System.out.println(e);}
		return status;
		}
	public boolean insertUser(User user) throws SQLException {
		
	     String sql = "INSERT INTO b_user (name, username, password) VALUES (?, ?, ?)";
	        connect();
	        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	        statement.setString(1, user.getName());
	        statement.setString(2, user.getUserName());
	        statement.setString(3, user.getPassword());
	         
	        boolean rowInserted = statement.executeUpdate() > 0;
	        statement.close();
	        disconnect();
	        return rowInserted;
	}
	public boolean insertProduct(Product product) throws SQLException {
		
	     String sql = "INSERT INTO product (product_id, product_name, product_image,product_price,product_description,short_details,long_details) VALUES (?, ?, ?,?,?,?,?)";
	        connect();
	        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	        statement.setString(1,product.getProductID());
	        statement.setString(2,product.getProductName() );
	        statement.setString(3,product.getProductImage() );
	        statement.setFloat(4,product.getProductPrice() );
	        statement.setString(5,product.getProductDescription() );
	        statement.setString(6, product.getShortDetail());
	        statement.setString(7,product.getLongDetail());
	         
	        boolean rowInserted = statement.executeUpdate() > 0;
	        statement.close();
	        disconnect();
	        return rowInserted;
	}

   
    public ArrayList<Product> getListProductByCategory(String product_id) throws SQLException {
        connect();
        String sql = "SELECT * FROM product WHERE product_id = '" + product_id + "'";
        PreparedStatement ps = jdbcConnection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getString("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getFloat("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            product.setShortDetail(rs.getString("short_details"));
            product.setLongDetail(rs.getString("long_details"));
            list.add(product);
        }
        return list;
    }
    public Product getShortProduct(String product_id) throws SQLException {
    	connect();
        String sql = "SELECT * FROM product WHERE product_id = '" + product_id + "'";
        PreparedStatement ps = jdbcConnection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Product product = new Product();
        while (rs.next()) {
        	product.setProductID(rs.getString("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setShortDetail(rs.getString("short_details"));
      
        }
        return product;
    }
    public Product getLongProduct(String product_id) throws SQLException {
    	connect();
        String sql = "SELECT * FROM product WHERE product_id = '" + product_id + "'";
        PreparedStatement ps = jdbcConnection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Product product = new Product();
        while (rs.next()) {
        	product.setProductID(rs.getString("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setLongDetail(rs.getString("long_details"));
            product.setProductPrice(rs.getFloat("product_price"));
            product.setProductDescription(rs.getString("product_description"));
      
        }
        return product;
    }
  
  
    
	
}


