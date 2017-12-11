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
public class ItemCentroCostos 
{
    private int iditem;
    private String nom_item;
    private int idccostos;

    public int getIditem() {
        return iditem;
    }

    public void setIditem(int iditem) {
        this.iditem = iditem;
    }

    public String getNom_item() {
        return nom_item;
    }

    public void setNom_item(String nom_item) {
        this.nom_item = nom_item;
    }

    public int getIdccostos() {
        return idccostos;
    }

    public void setIdccostos(int idccostos) {
        this.idccostos = idccostos;
    }

    @Override
    public String toString() {
        return this.nom_item;
    }
    
    
    
    
}
