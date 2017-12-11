/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Presentacion;

import java.awt.Color;
import java.awt.Component;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

/**
 *
 * @author Jonathan
 */
public class FormatoTabla extends DefaultTableCellRenderer{

    private int columna_patron ;

    public FormatoTabla(int Colpatron)
    {
        this.columna_patron = Colpatron;
    }

    @Override
    public Component getTableCellRendererComponent ( JTable table, Object value, boolean selected, boolean focused, int row, int column )
    {        
        setBackground(Color.white);//color de fondo
        table.setForeground(Color.black);//color de texto
        //Si la celda corresponde a una fila con estado FALSE, se cambia el color de fondo a rojo
        if( table.getValueAt(row,columna_patron).equals("Solicitado") )
        {
            setBackground(Color.CYAN);
        }
        if( table.getValueAt(row,columna_patron).equals("Comprado") )
        {
            setBackground(Color.YELLOW);
        }
        
        if( table.getValueAt(row,columna_patron).equals("Liberado OC") )
        {
            setBackground(Color.ORANGE);
        }

        super.getTableCellRendererComponent(table, value, selected, focused, row, column);
        return this;
 }

}
