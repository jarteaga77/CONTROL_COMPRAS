/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Daos;

import com.sys.utd.ConexionBD.ConexionBD;
import com.sys.utd.Entidades.Entidad_OC_Det;

/**
 *
 * @author Jonathan
 */
public class Dao_OC_Det 
{
    private ConexionBD conexion;
    
    public void guardar(Entidad_OC_Det det) throws Exception
    {
        if(det.getId_det_req()==0)
        {
            throw new Exception("El ID del detalle de requisición no puede ser cero");
        }
        
        if(det.getCantidad()==0)
        {
           throw new Exception("La cantidad no puede ser cero o menor a cero");

        }
        
        if(det.getIdiva()==0)
        {
            throw new Exception("El id del iva no puede ser cero");
        }
        
        if(det.getIdoc()==0)
        {
          throw new Exception("No hay OC asociada al detalle");

        }
        
        
        if(det.getTotal()==0)
        {
            throw new Exception("El total no puede ser cero");
        }
       
        
         if(det.getVlorunitario()<=0)
        {
          throw new Exception("El Valor Unitario no puede ser cero o menor que cero");

        }
         
       
         
         conexion=new ConexionBD();
         conexion.executeUpdateQuery("INSERT INTO ordenescompra.det_oc_utd(id_det_req,cantidad,vlor_unitario,vlor_iva,id_iva,total,id_oc, obse,vlordescuento,descuento,cantidad_parcial)VALUES("+det.getId_det_req()+","+det.getCantidad()+", "+det.getVlorunitario()+", "+det.getVloriva()+", "+det.getIdiva()+", "+det.getTotal()+", "+det.getIdoc()+",'"+det.getObse()+"', "+det.getVlordescuento()+", '"+det.getDescuento()+"', "+det.getCantparcial()+")");
        conexion.desconectar();
         
        
    }
    
}
