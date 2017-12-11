/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Presentacion;

import com.sys.utd.ConexionBD.ConexionBD;
import com.sys.utd.Entidades.ItemCentroCostos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jonathan
 */
public class LlenarCombo 
{
    
    private ConexionBD conexion;
    
    public ArrayList listaItem(int id)
    {
       conexion=new ConexionBD();
        ArrayList lista=new ArrayList();
        
        ResultSet obj=conexion.executeQuery("SELECT i.id_item_ccostos AS id, i.nombre_item_ccostos AS nombre FROM utdvvcc.itemccostos i WHERE i.id_centrocostos="+id+"");
        
     
        try {
            while(obj.next())
            {
                ItemCentroCostos item=new ItemCentroCostos();
                
                item.setIditem(obj.getInt("id"));
                item.setNom_item(obj.getString("nombre"));
                lista.add(item);
                
                // conexion.desconectar();
            }
        } catch (SQLException ex) {
            Logger.getLogger(LlenarCombo.class.getName()).log(Level.SEVERE, null, ex);
        }
     
            return lista;
         
    }
    
    
   
        
}
