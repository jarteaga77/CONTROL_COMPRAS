
package com.sys.utd.Daos;

import com.sys.utd.ConexionBD.ConexionBD;
import com.sys.utd.Entidades.Entidad_Causados;

/**
 *
 * @author Jonathan
 */
public class Dao_Causados 
{
    private ConexionBD conexion;
    
    public void guardar(Entidad_Causados causado)throws Exception
    {
        conexion=new ConexionBD();
        
        if(causado.getCan_causada()==0)
        {
            throw new Exception("La cantidad causada del item, no puede ser cero");
            
        }
        
        if(causado.getFac_causada().equals(""))
        {
          throw new Exception("El campo factura esta vacio");

        }
        if(causado.getOc()==0)
        {
           throw new Exception("El número de la OC no puede ser cero");

        }
        
        if(causado.getDet_oc()==0)
        {
           throw new Exception("El número del item no puede ser cero");

        }
          conexion.executeUpdateQuery("INSERT INTO ordenescompra.causados_oc(fecha_causado,cantidad_causada,factura_causada,id_oc,id_det_oc,id_usuario)VALUES('"+causado.getFecha_causado()+"', "+causado.getCan_causada()+", , '"+causado.getFac_causada()+"', "+causado.getOc()+", "+causado.getDet_oc()+", "+causado.getId_usuario()+")");
          conexion.desconectar();
        
    }
    
    
    
}
