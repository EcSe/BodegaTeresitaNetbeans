/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.productos;
import java.util.List;

/**
 *
 * @author elvinsallinas
 */
public interface productosDAO {
    
    public String agregar(productos prod);
    List<productos> lista();
}
