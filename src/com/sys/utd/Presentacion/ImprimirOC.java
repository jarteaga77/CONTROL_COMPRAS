/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Presentacion;

import com.sys.utd.ConexionBD.ConexionBD;
import com.sys.utd.Entidades.ItemCentroCostos;
import com.sys.utd.Reportes.ReporteOC;
import java.awt.event.KeyEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;

/**
 *
 * @author Jonathan
 */
public class ImprimirOC extends javax.swing.JInternalFrame {

    private ConexionBD conexion;
    private DefaultTableModel modelo;
    private ReporteOC reporteOC;
    
    
    public ImprimirOC() {
        initComponents();
        
        conexion=new ConexionBD();
        modelo=new DefaultTableModel();
        
        modelo.addColumn("ID");
        modelo.addColumn("OC N°");
        modelo.addColumn("Fecha");
        modelo.addColumn("C. Costos");
        modelo.addColumn("Proveedor");
        modelo.addColumn("Total");
        modelo.addColumn("Usuario");
        
        
        consultar();
        
        
         ResultSet obj=conexion.executeQuery("SELECT nombre_centro_costos FROM utdvvcc.centrocostos WHERE estado=true ORDER BY nombre_centro_costos ASC ");//Consulta para traer el nombre de centro de costos
        try {            
            while(obj.next())
            {
                cb_costos.addItem(obj.getObject("nombre_centro_costos"));//Llena JCombobox con el nombre del centro de costos
            }
        } catch (SQLException ex) {
            Logger.getLogger(ImprimirOC.class.getName()).log(Level.SEVERE, null, ex);
        }
        conexion.desconectar();
        
        dc_desde.setDate(new Date());
        dc_hasta.setDate(new Date());
    }

 
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txt_id = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        cb_costos = new javax.swing.JComboBox();
        cb_item = new javax.swing.JComboBox();
        dc_desde = new com.toedter.calendar.JDateChooser();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        dc_hasta = new com.toedter.calendar.JDateChooser();
        btn_buscar = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        txt_proveedor = new javax.swing.JTextField();
        cb_proveedor = new javax.swing.JComboBox();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tb_listado = new javax.swing.JTable();
        btn_ver = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setTitle("Imprimir Reg. Pedidos");
        setToolTipText("");

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Buscar"));

        jLabel1.setText("OC N°");

        txt_id.setText("0");

        jLabel2.setText("Centro Costos");

        cb_costos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cb_costosActionPerformed(evt);
            }
        });

        jLabel3.setText("Desde");

        jLabel4.setText("Hasta");

        btn_buscar.setText("Buscar");
        btn_buscar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_buscarActionPerformed(evt);
            }
        });

        jLabel5.setText("Proveedor");

        txt_proveedor.setText("0");
        txt_proveedor.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txt_proveedorKeyReleased(evt);
            }
        });

        cb_proveedor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cb_proveedorActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(txt_id, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(cb_costos, javax.swing.GroupLayout.PREFERRED_SIZE, 291, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(dc_desde, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel4)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(dc_hasta, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txt_proveedor)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(cb_item, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(cb_proveedor, 0, 296, Short.MAX_VALUE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btn_buscar)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(cb_item)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(jLabel1)
                                .addComponent(txt_id, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jLabel2)
                                .addComponent(cb_costos, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(dc_desde, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel3)
                            .addComponent(jLabel4)
                            .addComponent(dc_hasta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel5)
                        .addComponent(txt_proveedor, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(btn_buscar)
                        .addComponent(cb_proveedor, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(14, Short.MAX_VALUE))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("Listado"));

        tb_listado.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(tb_listado);

        btn_ver.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/sys/utd/Recursos/ver.png"))); // NOI18N
        btn_ver.setToolTipText("Visualizar Pedido");
        btn_ver.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_verActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btn_ver)
                .addGap(2, 2, 2))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 284, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn_ver))
                .addGap(0, 0, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jPanel2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_verActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_verActionPerformed
         int id;
        
        if(tb_listado.isRowSelected(tb_listado.getSelectedRow()))
        {
            reporteOC=new ReporteOC();
        
            id=(Integer) tb_listado.getValueAt(tb_listado.getSelectedRow(), 0);
        
            reporteOC.ejecutarReporte(id);
        }
        else
        {
            JOptionPane.showMessageDialog(null, "Debe seleccionar una fila", "Alerta", JOptionPane.WARNING_MESSAGE);
        }
    }//GEN-LAST:event_btn_verActionPerformed

    private void cb_costosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cb_costosActionPerformed
          try
        {
            conexion=new ConexionBD();
            
            int id_ccostos=0;

            if(cb_costos.getSelectedItem()!=null)
            {
                String centro=cb_costos.getSelectedItem().toString();
                ResultSet obj=conexion.executeQuery("SELECT id_centrocostos FROM utdvvcc.centrocostos WHERE nombre_centro_costos='"+centro+"'");

                while(obj.next())
                {
                    id_ccostos=obj.getInt("id_centrocostos");
                }
                cb_item.removeAllItems();
            }
            cargarItem(id_ccostos);
            

        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e, "Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_cb_costosActionPerformed

    private void btn_buscarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_buscarActionPerformed
        
        int id=0, iditem=0;
        Date ini, fin;
        long nit=0;
        
        if(txt_id.getText().matches("[0-9]*"))
        {
            
            id=Integer.parseInt(txt_id.getText());
            
           
            ItemCentroCostos item= (ItemCentroCostos) cb_item.getSelectedItem();
             iditem=item.getIditem();
            
            
            ini=dc_desde.getDate();
            fin=dc_hasta.getDate();
            nit=Long.parseLong(txt_proveedor.getText());
            
            
            LimpiarTabla();

            consultaID(id, iditem, ini, fin, nit);
            
            
        }
        else
        {
            try {
                throw new Exception ("El Campo ID es un campo númerico");
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(null, ex,"Error", JOptionPane.ERROR_MESSAGE);
            }
        }
        
        
        
        
    }//GEN-LAST:event_btn_buscarActionPerformed

    private void txt_proveedorKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txt_proveedorKeyReleased
          if(evt.getKeyCode()== KeyEvent.VK_SHIFT)
        {
            try {
                cb_proveedor.removeAllItems();
                buscarProveedores();
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(null, ex, "Error", JOptionPane.ERROR_MESSAGE);
            }
        }
    }//GEN-LAST:event_txt_proveedorKeyReleased

    private void cb_proveedorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cb_proveedorActionPerformed
        if(cb_proveedor.getSelectedItem()!=null)
            {
            try {
                conexion=new ConexionBD();
                long nit;
                
                String nombre=cb_proveedor.getSelectedItem().toString();
                ResultSet obj=conexion.executeQuery("SELECT nit_proveedor FROM proveedores.proveedor WHERE prove_razon_social='"+nombre+"'");
                
                while(obj.next())
                {
                    nit=obj.getLong("nit_proveedor");
                    txt_proveedor.setText("");
                    txt_proveedor.setText(String.valueOf(nit));
                }
                conexion.desconectar();
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(null, ex, "Error", JOptionPane.ERROR_MESSAGE);
            }
          }
    }//GEN-LAST:event_cb_proveedorActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_buscar;
    private javax.swing.JButton btn_ver;
    private javax.swing.JComboBox cb_costos;
    private javax.swing.JComboBox cb_item;
    private javax.swing.JComboBox cb_proveedor;
    private com.toedter.calendar.JDateChooser dc_desde;
    private com.toedter.calendar.JDateChooser dc_hasta;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tb_listado;
    private javax.swing.JTextField txt_id;
    private javax.swing.JTextField txt_proveedor;
    // End of variables declaration//GEN-END:variables

     public void buscarProveedores() throws SQLException
    {
        
        conexion=new ConexionBD();
        ResultSet obj=conexion.executeQuery("SELECT prove_razon_social FROM proveedores.proveedor WHERE prove_razon_social ilike '%"+txt_proveedor.getText().toUpperCase()+"%' ORDER BY prove_razon_social ASC");
        
        while(obj.next())
        {
            cb_proveedor.addItem(obj.getObject("prove_razon_social"));
        }
      
        conexion.desconectar();
        
    }
 
    public void consultar()
    {
        try
        {
        conexion=new ConexionBD();
        ResultSet obj=conexion.executeQuery("SELECT oc.id_oc, oc.con_ccostos,oc.fecha_oc,(c.sigla_ccostos ||' '||i.nombre_item_ccostos)AS centro , pro.prove_razon_social, SUM(dt.total)AS total, us.usuario FROM ordenescompra.ordencomprautd oc JOIN ordenescompra.det_oc_utd dt ON oc.id_oc=dt.id_oc JOIN utdvvcc.itemccostos i ON i.id_item_ccostos=oc.id_itemccostos JOIN utdvvcc.centrocostos c ON c.id_centrocostos=i.id_centrocostos JOIN usuariosistema.usuario us ON us.cedula=oc.id_usuario JOIN proveedores.proveedor pro ON pro.nit_proveedor=oc.id_proveedor GROUP BY oc.id_oc,centro,pro.prove_razon_social,us.usuario ORDER BY oc.id_oc DESC");
    
        while (obj.next()) 
        {
        
        Object [] datos = new Object[7];
        
     
        for (int i=0;i<7;i++)
        {
            datos[i] =obj.getObject(i+1);
        }

         modelo.addRow(datos);
       
        }
           tb_listado.setModel(modelo);
           setCellRender(tb_listado);
           conexion.desconectar();

        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e, "Error", JOptionPane.ERROR_MESSAGE);
        }
 
    }


       public void setCellRender(JTable table) {
        Enumeration<TableColumn> en = table.getColumnModel().getColumns();
        while (en.hasMoreElements()) {
            TableColumn tc = en.nextElement();
            tc.setCellRenderer(new CellRenderer());
        }
       }
       
       
       public void consultaID(int id, int ccostos, Date fechaIni, Date fechaFin, long nit)
       {
        conexion=new ConexionBD();
        ResultSet obj=conexion.executeQuery("SELECT oc.id_oc, oc.con_ccostos,oc.fecha_oc,(c.sigla_ccostos ||' '||i.nombre_item_ccostos)AS centro , pro.prove_razon_social, SUM(dt.total)AS total, us.usuario FROM ordenescompra.ordencomprautd oc JOIN ordenescompra.det_oc_utd dt ON oc.id_oc=dt.id_oc JOIN utdvvcc.itemccostos i ON i.id_item_ccostos=oc.id_itemccostos  JOIN utdvvcc.centrocostos c ON c.id_centrocostos=i.id_centrocostos JOIN usuariosistema.usuario us ON us.cedula=oc.id_usuario JOIN proveedores.proveedor pro ON pro.nit_proveedor=oc.id_proveedor WHERE oc.con_ccostos="+id+" OR oc.id_itemccostos="+ccostos+" OR oc.fecha_oc BETWEEN '"+fechaIni+"' AND '"+fechaFin+"' OR oc.id_proveedor="+nit+" GROUP BY oc.id_oc,centro,pro.prove_razon_social,us.usuario ORDER BY oc.id_oc DESC");
    
        try {
            while (obj.next())
            {
                
                Object [] datos = new Object[7];
                
                
                for (int i=0;i<7;i++)
                {
                    datos[i] =obj.getObject(i+1);
                }
                
                modelo.addRow(datos);
                
            }
           tb_listado.setModel(modelo);
           setCellRender(tb_listado);
           conexion.desconectar();

        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e, "Error", JOptionPane.ERROR_MESSAGE);
        }
       
       }
       
    public void LimpiarTabla()
    {
  
        for(int i=modelo.getRowCount()-1;i>=0;i--)
        {
            modelo.removeRow(i);
            
        }
    }
    
     public void cargarItem(int id)
    {
        ControllerItemList controller=new ControllerItemList();
        
        ArrayList lista=controller.listarItem(id);
        
        cb_item.removeAllItems();
        if (lista!=null)
        {
            int size=lista.size();
            
            for(int i=0; i<size; i++)
            {
                cb_item.addItem(lista.get(i));
            }
        }
    }
    
    
}
