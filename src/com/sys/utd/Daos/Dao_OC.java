/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Daos;

import com.sys.utd.ConexionBD.ConexionBD;
import com.sys.utd.Entidades.Entidad_OC;
import java.sql.ResultSet;

/**
 *
 * @author Jonathan
 */
public class Dao_OC 
{
 
    private ConexionBD conexion;
    
    private static int idoc;

    public static int getIdoc() {
        return idoc;
    }

    public static void setIdoc(int idoc) {
        Dao_OC.idoc = idoc;
    }
  
    public void guardar(Entidad_OC oc) throws Exception
    {
        if(oc.getCon_ccostos()==0)
        {
            throw new Exception("El consecutivo de OC no puede ser igual a 0");
        }
        if(oc.getId_proveedor()==0)
        {
          throw new Exception("El ID del proveedor no puede ser igual a 0");

        }
        if(oc.getIddirector()==0)
        {
           throw new Exception("El ID del director encargado no puede ser cero");

        }
        if(oc.getIditemccostos()==0)
        {
            throw new Exception("El ID del Item Centro de costos no puede ser cero ");

        }
        if(oc.getIdus()==0)
        {
           throw new Exception("El ID del Usuario en sección no puede ser cero ");

        }
        
        if(oc.getCondiciones().equals(""))
        {
          throw new Exception("El campo de condiciones de compra no puede estar en blaco");
        }
    
        
        conexion=new ConexionBD();
        ResultSet obj=conexion.executeQuery("INSERT INTO ordenescompra.ordencomprautd(fecha_oc, con_ccostos,id_proveedor,id_usuario,id_director,id_itemccostos, condiciones,cotizacion,observaciones)VALUES('"+oc.getFecha()+"',"+oc.getCon_ccostos()+", "+oc.getId_proveedor()+","+oc.getIdus()+", "+oc.getIddirector()+","+oc.getIditemccostos()+", '"+oc.getCondiciones()+"', '"+oc.getCotizacion()+"', '"+oc.getObservaciones()+"') RETURNING id_oc");
        
        
        while (obj.next())
        {
            setIdoc(obj.getInt("id_oc"));
        }
        conexion.desconectar();
    }
    
    
    
        
    
}
