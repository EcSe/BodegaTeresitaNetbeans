/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author elvinsallinas
 */
public class BDConexion {
    public static Connection Conectar(){
        Connection cn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost/BodegaTeresita","root","root");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return cn; 
    }
    
    public boolean validarUsuario(String usuario,String clave){
        try {
            String  sql = "select (1) from TBUsuario where Nombre = '"+usuario+"'"
                    + "and Clave = '"+clave+"' ";
            Statement st = BDConexion.Conectar().createStatement();
            ResultSet rs = st.executeQuery(sql);
            
            if(rs.next()) {return true;} 
                    else {return false;}
            
        } catch (SQLException ex) {
            Logger.getLogger(BDConexion.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        
        
        
    }
    
}
