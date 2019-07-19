package com.models;

public class Product {
	 	private String productID;
	    private String longDetail;
	    private String shortDetail;
	    private String productName;
	    private String productImage;
	    private float productPrice;
	    private String productDescription;

	    public Product() {
	    }
	    	
		public Product(String productID, String longDetail, String shortDetail, String productName, String productImage,
				float productPrice, String productDescription) {
			super();
			this.productID = productID;
			this.longDetail = longDetail;
			this.shortDetail = shortDetail;
			this.productName = productName;
			this.productImage = productImage;
			this.productPrice = productPrice;
			this.productDescription = productDescription;
		}

		public Product(String productID, String shortDetail, String productName, String productImage) {
			super();
			this.productID = productID;
			this.shortDetail = shortDetail;
			this.productName = productName;
			this.productImage = productImage;
		}

		public Product(String longDetail, String productName, String productImage, float productPrice,
				String productDescription) {
			super();
			this.longDetail = longDetail;
			this.productName = productName;
			this.productImage = productImage;
			this.productPrice = productPrice;
			this.productDescription = productDescription;
		}

		public String getProductID() {
			return productID;
		}

		public void setProductID(String productID) {
			this.productID = productID;
		}

		public String getLongDetail() {
			return longDetail;
		}

		public void setLongDetail(String longDetail) {
			this.longDetail = longDetail;
		}

		public String getShortDetail() {
			return shortDetail;
		}

		public void setShortDetail(String shortDetail) {
			this.shortDetail = shortDetail;
		}

		public String getProductName() {
			return productName;
		}

		public void setProductName(String productName) {
			this.productName = productName;
		}

		public String getProductImage() {
			return productImage;
		}

		public void setProductImage(String productImage) {
			this.productImage = productImage;
		}

		public float getProductPrice() {
			return productPrice;
		}

		public void setProductPrice(float productPrice) {
			this.productPrice = productPrice;
		}

		public String getProductDescription() {
			return productDescription;
		}

		public void setProductDescription(String productDescription) {
			this.productDescription = productDescription;
		}
	    

	   
}
