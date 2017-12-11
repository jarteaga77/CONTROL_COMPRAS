/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Daos;

import com.sys.utd.ConexionBD.ConexionBD;
import com.sys.utd.Entidades.Entidad_Det_Pedido;

/**
 *
 * @author Jonathan
 */
public class Dao_Det_Pedido 
{
    private ConexionBD conexion;
    
    public void guardar(Entidad_Det_Pedido det) throws Exception
    {
        
        conexion=new ConexionBD();
        
        if(det.getIdpedido()==0)
        {
            throw new Exception("El ID del pedido no puede ser cero");
        }
        
        if(det.getDescripcion().equals(""))
        {
            throw new Exception("El campo descripción no puede estar vacio");
        }
        
        
        if(det.getReferencia().equals(""))
        {
           throw new Exception("El campo referencia no puede estar vacio");
 
        }
        
        if(det.getUm().equals(""))
        {
          throw new Exception("El campo UM no puede estar vacio");

        }
      
        if(det.getCantidad()<=0)
        {
            throw new Exception("La cantidad no puede ser cero");

        }

        if(det.getItem()==0)
        {
            throw new Exception("El item no puede ser cero");
        }
     
        conexion.executeUpdateQuery("INSERT INTO listadopedidos.detalle_pedido(id_pedido,item,descripcion,cantidad,observacion,referencia,um,cantidad_parcial)VALUES("+det.getIdpedido()+", "+det.getItem()+", '"+det.getDescripcion()+"', "+det.getCantidad()+", '"+det.getObservacion()+"', '"+det.getReferencia()+"', '"+det.getUm()+"', "+det.getCan_parcial()+")");
        conexion.desconectar();
    }
    
    
    public void update(Entidad_Det_Pedido det) throws Exception
    {
        conexion=new ConexionBD();
        
        if(det.getIdpedido()==0)
        {
            throw new Exception("El ID del pedido no puede ser cero");
        }
        
        if(det.getDescripcion().equals(""))
        {
            throw new Exception("El campo descripción no puede estar vacio");
        }
        
        
        if(det.getReferencia().equals(""))
        {
           throw new Exception("El campo referencia no puede estar vacio");
 
        }
        
        if(det.getUm().equals(""))
        {
          throw new Exception("El campo UM no puede estar vacio");

        }
      
        if(det.getCantidad()<=0)
        {
            throw new Exception("La cantidad no puede ser cero");

        }

        if(det.getItem()==0)
        {
            throw new Exception("El item no puede ser cero");
        }
     
        System.out.println("Entro al metodo");
        conexion.executeUpdateQuery("UPDATE listadopedidos.detalle_pedido SET item="+det.getItem()+",descripcion='"+det.getDescripcion()+"',cantidad="+det.getCantidad()+",observacion='"+det.getObservacion()+"', referencia='"+det.getReferencia()+"',um='"+det.getUm()+",cantidad_parcial="+det.getCan_parcial()+" WHERE id_dt="+det.getId_dt()+"");
        System.out.println("Entro al metodo2");
        conexion.desconectar();
 
    }
    
}
