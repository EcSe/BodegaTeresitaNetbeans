/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoImpl;

import dao.productosDAO;
import entidades.productos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import util.BDConexion;

/**
 *
 * @author elvinsallinas
 */
public class productosDAOImpl implements productosDAO{
            
                Connection cn = BDConexion.Conectar();
            
    @Override
    public String agregar(productos prod) {
            String mensaje= "";
            try {
            String sql = "INSERT INTO TBProductos VALUES(null,?,?,?)";
                PreparedStatement pstm = cn.prepareStatement(sql);
                pstm.setString(1, prod.getNombre());
                pstm.setDouble(2, prod.getPrecio());
                pstm.setInt(3, prod.getStock());
                
                pstm.executeUpdate();
                mensaje = "AGREGADO";
        } catch (Exception e) {
            mensaje = e + "";
        }
            return mensaje;
    }

    @Override
    public List<productos> lista() {
            List<productos> lstprod = new ArrayList<productos>();
            try {
            String sql = "SELECT * FROM TBProductos";
                PreparedStatement pstm = cn.prepareStatement(sql);
                ResultSet rs = pstm.executeQuery();
                
                while (rs.next()) {                    
                    int idproducto = rs.getInt(1);
                    String nombre = rs.getString(2);
                    double precio = rs.getDouble(3);
                    int stock = rs.getInt(4);
                    
                    productos prod  = new productos(idproducto, nombre, precio, stock);
                    lstprod.add(prod);
                }
        } catch (Exception e) {
        }
            return lstprod;
     }
    
}
