/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Fran
 */
public class MetodosSQL {
    
    private Connection conexion;
    private PreparedStatement sentencia;
    private ResultSet result;
    
    public boolean registrarUsuario(String curp, String nombre, String apellidos, String password, String usuGen){
        boolean registro = false;
        
        try {
            conexion = ConexionBD.conectar();
            String consulta = "INSERT INTO usuarios (curp, nombre, apellidos, contrasena,usuario_generado_automaticamente) VALUES (?,?,?,?,?)";
            sentencia = conexion.prepareStatement(consulta);
            sentencia.setString(1, curp);
            sentencia.setString(2, nombre);
            sentencia.setString(3, apellidos);
            sentencia.setString(4, password);
            sentencia.setString(5, usuGen);
            
            int resultadoInsercion = sentencia.executeUpdate();
            
            if(resultadoInsercion>0){
                registro = true;
                System.out.println("Se ha registrado correctamente");
            }else{
                registro = false;
                System.out.println("No se ha registrado correctamente");
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }finally{
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }
        System.out.println("Valor "+registro);
        return registro;
    }
    
    
    public boolean buscarUsuarioRepetido(String curp){
        boolean usuarioRepetido = false;
        
        try {
            conexion = ConexionBD.conectar();
            String consulta = "SELECT curp FROM usuarios WHERE curp='"+curp+"';";
            Statement sentenciaMod = conexion.createStatement();
            //sentencia.setString(1, curp);
            
            sentenciaMod.executeUpdate(consulta);
            
            if(result.next()){
                usuarioRepetido = true;
            }
            
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error "+ e);
        }finally{
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error "+ e);
            }
        }
        System.out.println("Usu repe es: "+usuarioRepetido);
        return usuarioRepetido;
    }
    
}
