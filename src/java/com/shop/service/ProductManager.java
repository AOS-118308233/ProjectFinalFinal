/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.service;

import java.util.ArrayList;
import com.shop.DAO.ProductDAO;
import com.shop.model.Product;
import java.sql.SQLException;

/**
 *
 * @author aoife
 */
public class ProductManager {

    public ArrayList<Product> getHomePageProducts() {

        ProductDAO pDao = new ProductDAO();
        return pDao.getTopProducts(9);

    }

    public Product getProduct(String productCode) {
        ProductDAO productDAO = new ProductDAO();
        Product product = productDAO.getProductCode(productCode);
        return product;
    }

    public ArrayList<Product> getAllProducts() {
        ProductDAO pDao = new ProductDAO();
        ArrayList<Product> productList = pDao.getTopProducts(9);
        return productList;
    }
    
    public Product getProductByName (String productName) {
        ProductDAO pDao = new ProductDAO();
        Product productData = pDao.getProductByName(productName);
        return productData;
    }

    public void insertProduct(Product nProduct) {
        ProductDAO pDao = new ProductDAO();
        pDao.insertProduct(nProduct);
    }

    public void updateProduct(Product nProduct) {
        ProductDAO pDao = new ProductDAO();
        pDao.updateProduct(nProduct);

    }

    public void deleteProduct(String productCode) {
        ProductDAO pDao = new ProductDAO();
        pDao.deleteProduct(productCode);

    }
    
    public ArrayList<String> getCategories() {
        ProductDAO pDao = new ProductDAO();
        return pDao.getCategories();
    }
    
    public ArrayList<Product> getCategoryProducts (String category) {
        ProductDAO pDao = new ProductDAO();
        return pDao.getCategoryProducts(category);
    }

    
       
        
   
    public void searchProducts() {
        //search box is a from and submit it to the SearchServlet
        //Servlet calls searchProducts
        //findProducts method in DAO is called
        //results to be placed on the request
        //table displays the results
        //clicking on a product brings you to the viewProduct.jsp

    }

}
