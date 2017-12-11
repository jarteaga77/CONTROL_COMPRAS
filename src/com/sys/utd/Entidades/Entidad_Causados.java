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
public class Entidad_Causados 
{
    
    private int idcausado;
    private Date fecha_causado;
    private float can_causada;
    private String fac_causada;
    private int oc;
    private int det_oc;
    private int id_usuario;

    public int getIdcausado() {
        return idcausado;
    }

    public void setIdcausado(int idcausado) {
        this.idcausado = idcausado;
    }

    public Date getFecha_causado() {
        return fecha_causado;
    }

    public void setFecha_causado(Date fecha_causado) {
        this.fecha_causado = fecha_causado;
    }

    public float getCan_causada() {
        return can_causada;
    }

    public void setCan_causada(float can_causada) {
        this.can_causada = can_causada;
    }

    public String getFac_causada() {
        return fac_causada;
    }

    public void setFac_causada(String fac_causada) {
        this.fac_causada = fac_causada;
    }

    public int getOc() {
        return oc;
    }

    public void setOc(int oc) {
        this.oc = oc;
    }

    public int getDet_oc() {
        return det_oc;
    }

    public void setDet_oc(int det_oc) {
        this.det_oc = det_oc;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }
    
    
    
}
