/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Daos;

import com.sys.utd.ConexionBD.ConexionBD;
import com.sys.utd.Entidades.Entidad_Pedidos;
import java.sql.ResultSet;

/**
 *
 * @author Jonathan
 */
public class Dao_Pedidos 
{
    
   private ConexionBD conexion;
   
   private static int id_pedido;

    public static int getId_pedido() {
        return id_pedido;
    }

    public static void setId_pedido(int id_pedido) {
        Dao_Pedidos.id_pedido = id_pedido;
    }
   
   
   public void guardar(Entidad_Pedidos pedido) throws Exception
   {
       conexion=new ConexionBD();
       
       
       if(pedido.getFecha()==null)
       {
           throw new Exception("La fecha no puede tener valor null");
       }
       if(pedido.getIddir()==0)
       {
          throw new Exception("El valor del Encargado no puede ser cero");

       }
       if(pedido.getIditem()==0)
       {
          throw new Exception("El valor del Item Centro de Costos no puede ser cero");

       }
       if(pedido.getIdus()==0)
       {
          throw new Exception("El ID del usuario no puede ser cero");

       }
       
       ResultSet obj=conexion.executeQuery("INSERT INTO listadopedidos.pedido(fecha,id_item_ccostos,id_dir,id_us,observaciones)VALUES('"+pedido.getFecha()+"', "+pedido.getIditem()+", "+pedido.getIddir()+", "+pedido.getIdus()+", '"+pedido.getObse()+"')RETURNING id_pedido ");
       
       while (obj.next())
       {
           setId_pedido(obj.getInt("id_pedido"));
       }
       
       conexion.desconectar();
   
          
   }
    
}
