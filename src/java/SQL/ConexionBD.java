/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Fran
 */
public class ConexionBD {
    
    private static String url = "jdbc:mysql://127.0.0.1:3306/bd_login";
    private static String usuario = "root";
    private static String contrasena = "root";
    
    private static Connection conexion;
        
    private static PreparedStatement sentenciaPreparada;
        
    private static ResultSet resultado;
    
    public static Connection conectar(){
        Connection conexion = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, contrasena);
        }catch(ClassNotFoundException | SQLException e){
            System.out.println("Error: "+ e);
        }
        return conexion;
    }
}
