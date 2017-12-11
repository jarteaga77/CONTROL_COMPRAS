/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Entidades;

import java.util.Date;

/**
 *
 * @author Jonathan
 */
public class Entidad_Pedidos 
{
    private int idpedido;
    private Date fecha;
    private int iditem;
    private int iddir;
    private int idus;
    private String obse;

    public int getIdpedido() {
        return idpedido;
    }

    public void setIdpedido(int idpedido) {
        this.idpedido = idpedido;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getIditem() {
        return iditem;
    }

    public void setIditem(int iditem) {
        this.iditem = iditem;
    }

    public int getIddir() {
        return iddir;
    }

    public void setIddir(int iddir) {
        this.iddir = iddir;
    }

    public int getIdus() {
        return idus;
    }

    public void setIdus(int idus) {
        this.idus = idus;
    }

    public String getObse() {
        return obse;
    }

    public void setObse(String obse) {
        this.obse = obse;
    }
    
    
    
    
    
}
