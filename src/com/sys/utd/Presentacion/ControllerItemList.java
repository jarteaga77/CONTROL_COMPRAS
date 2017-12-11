/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Presentacion;

import java.util.ArrayList;


/**
 *
 * @author Jonathan
 */
public class ControllerItemList 
{
    LlenarCombo llenar=new LlenarCombo();
    public ArrayList listarItem(int id)
    {
        return llenar.listaItem(id);
    }
    
    
    
}
