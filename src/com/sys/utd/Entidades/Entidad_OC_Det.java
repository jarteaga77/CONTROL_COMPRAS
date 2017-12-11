/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Entidades;

/**
 *
 * @author Jonathan
 */
public class Entidad_OC_Det 
{
    
    private int id_det_req;
    private float cantidad;
    private float vlorunitario;
    private float vloriva;
    private int idiva;
    private int total;
    private int idoc;
    private String obse;
    private float vlordescuento;
    private String descuento;
    private float cantparcial;
    
    public String getObse() {
        return obse;
    }

    public void setObse(String obse) {
        this.obse = obse;
    }
  
    public int getId_det_req() {
        return id_det_req;
    }

    public void setId_det_req(int id_det_req) {
        this.id_det_req = id_det_req;
    }

    public float getCantidad() {
        return cantidad;
    }

    public void setCantidad(float cantidad) {
        this.cantidad = cantidad;
    }

    public float getVlorunitario() {
        return vlorunitario;
    }

    public void setVlorunitario(float vlorunitario) {
        this.vlorunitario = vlorunitario;
    }

    public float getVloriva() {
        return vloriva;
    }

    public void setVloriva(float vloriva) {
        this.vloriva = vloriva;
    }

    public int getIdiva() {
        return idiva;
    }

    public void setIdiva(int idiva) {
        this.idiva = idiva;
    }

    public float getVlordescuento() {
        return vlordescuento;
    }

    public void setVlordescuento(float vlordescuento) {
        this.vlordescuento = vlordescuento;
    }

    public String getDescuento() {
        return descuento;
    }

    public void setDescuento(String descuento) {
        this.descuento = descuento;
    }

 

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getIdoc() {
        return idoc;
    }

    public void setIdoc(int idoc) {
        this.idoc = idoc;
    }

    public float getCantparcial() {
        return cantparcial;
    }

    public void setCantparcial(float cantparcial) {
        this.cantparcial = cantparcial;
    }

    
    
}
