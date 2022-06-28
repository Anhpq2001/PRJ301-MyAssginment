/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;

/**
 *
 * @author Admin
 */
public abstract class DBContext {
    protected Connection connection;
    String user = "anhpq";
    String pass = "1234567890";
    String url = "jdbc:sqlserver://localhost:1433;databaseName=assigmentDB";
    
    
}
