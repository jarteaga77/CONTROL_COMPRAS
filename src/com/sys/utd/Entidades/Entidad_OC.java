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
public class Entidad_OC 
{
    
    private int id;
    private Date fecha;
    private int con_ccostos;
    private long id_proveedor;
    private int idus;
    private int iddirector;
    private int iditemccostos;
    private String condiciones,cotizacion,observaciones;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getCon_ccostos() {
        return con_ccostos;
    }

    public void setCon_ccostos(int con_ccostos) {
        this.con_ccostos = con_ccostos;
    }

    public long getId_proveedor() {
        return id_proveedor;
    }

    public void setId_proveedor(long id_proveedor) {
        this.id_proveedor = id_proveedor;
    }

    public int getIdus() {
        return idus;
    }

    public void setIdus(int idus) {
        this.idus = idus;
    }

    public int getIddirector() {
        return iddirector;
    }

    public void setIddirector(int iddirector) {
        this.iddirector = iddirector;
    }

    public int getIditemccostos() {
        return iditemccostos;
    }

    public void setIditemccostos(int iditemccostos) {
        this.iditemccostos = iditemccostos;
    }

    public String getCondiciones() {
        return condiciones;
    }

    public void setCondiciones(String condiciones) {
        this.condiciones = condiciones;
    }

    public String getCotizacion() {
        return cotizacion;
    }

    public void setCotizacion(String cotizacion) {
        this.cotizacion = cotizacion;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }
    
}
