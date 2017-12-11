/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Presentacion;

import com.sys.utd.ConexionBD.ConexionBD;
import com.sys.utd.Reportes.ReportePedido;
import java.sql.ResultSet;
import java.sql.SQLException;
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
public class ImprimirPedido extends javax.swing.JInternalFrame {

    private ConexionBD conexion;
    private DefaultTableModel modelo;
    private ReportePedido reportePedido;
    
    
    public ImprimirPedido() {
        initComponents();
        
        conexion=new ConexionBD();
        modelo=new DefaultTableModel();
        
        modelo.addColumn("ID");
        modelo.addColumn("Fecha");
        modelo.addColumn("C. Costos");
        modelo.addColumn("Usuario");
        
        consultar();
        
        
         ResultSet obj=conexion.executeQuery("SELECT nombre_centro_costos FROM utdvvcc.centrocostos WHERE estado=true");//Consulta para traer el nombre de centro de costos
        try {            
            while(obj.next())
            {
                cb_costos.addItem(obj.getObject("nombre_centro_costos"));//Llena JCombobox con el nombre del centro de costos
            }
        } catch (SQLException ex) {
            Logger.getLogger(ImprimirPedido.class.getName()).log(Level.SEVERE, null, ex);
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
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tb_listado = new javax.swing.JTable();
        btn_ver = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setTitle("Imprimir Reg. Pedidos");
        setToolTipText("");

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Buscar"));

        jLabel1.setText("ID Pedido");

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
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(txt_id, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(cb_costos, javax.swing.GroupLayout.PREFERRED_SIZE, 291, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(cb_item, 0, 361, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(dc_desde, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel4)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(dc_hasta, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(27, 27, 27)
                        .addComponent(btn_buscar)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
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
                    .addComponent(dc_hasta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn_buscar))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
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
            reportePedido=new ReportePedido();
        
            id=(Integer) tb_listado.getValueAt(tb_listado.getSelectedRow(), 0);
        
            reportePedido.ejecutarReporte(id);
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

            ResultSet obj2=conexion.executeQuery("SELECT nombre_item_ccostos FROM utdvvcc.itemccostos WHERE id_centrocostos="+id_ccostos+" ");

            while(obj2.next())
            {
                cb_item.addItem(obj2.getObject("nombre_item_ccostos"));
            }
            
            conexion.desconectar();
            
         
            
                
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e, "Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_cb_costosActionPerformed

    private void btn_buscarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_buscarActionPerformed
        
        int id=0, iditem=0;
        Date ini, fin;
        
        if(txt_id.getText().matches("[0-9]*"))
        {
            
            id=Integer.parseInt(txt_id.getText());
            
            if(cb_item.getSelectedItem()!=null)
            {
                String item_ccostos=cb_item.getSelectedItem().toString();
                ResultSet obj1=conexion.executeQuery("SELECT id_item_ccostos FROM utdvvcc.itemccostos WHERE nombre_item_ccostos='"+item_ccostos+"'");
                           
                try {
                    while(obj1.next())
                    {
                        iditem=obj1.getInt("id_item_ccostos");
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(ImprimirPedido.class.getName()).log(Level.SEVERE, null, ex);
                }
            
            }
            ini=dc_desde.getDate();
            fin=dc_hasta.getDate();
            
            
            LimpiarTabla();

            consultaID(id, iditem, ini, fin);
            
            
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


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_buscar;
    private javax.swing.JButton btn_ver;
    private javax.swing.JComboBox cb_costos;
    private javax.swing.JComboBox cb_item;
    private com.toedter.calendar.JDateChooser dc_desde;
    private com.toedter.calendar.JDateChooser dc_hasta;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tb_listado;
    private javax.swing.JTextField txt_id;
    // End of variables declaration//GEN-END:variables


    public void consultar()
    {
        try
        {
        conexion=new ConexionBD();
        ResultSet obj=conexion.executeQuery("SELECT p.id_pedido, p.fecha,(c.sigla_ccostos ||' '||i.nombre_item_ccostos)AS centro , us.usuario FROM listadopedidos.pedido p JOIN utdvvcc.itemccostos i ON i.id_item_ccostos=p.id_item_ccostos JOIN utdvvcc.centrocostos c ON c.id_centrocostos=i.id_centrocostos JOIN usuariosistema.usuario us ON us.cedula=p.id_us ORDER BY p.id_pedido DESC");
    
        while (obj.next()) 
        {
        
        Object [] datos = new Object[4];
        
     
        for (int i=0;i<4;i++)
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
       
       
       public void consultaID(int id, int ccostos, Date fechaIni, Date fechaFin)
       {
        conexion=new ConexionBD();
        ResultSet obj=conexion.executeQuery("SELECT p.id_pedido, p.fecha,(c.sigla_ccostos ||' '||i.nombre_item_ccostos)AS centro , us.usuario FROM listadopedidos.pedido p JOIN utdvvcc.itemccostos i ON i.id_item_ccostos=p.id_item_ccostos JOIN utdvvcc.centrocostos c ON c.id_centrocostos=i.id_centrocostos JOIN usuariosistema.usuario us ON us.cedula=p.id_us WHERE p.id_pedido="+id+" OR p.id_item_ccostos="+ccostos+" OR p.fecha BETWEEN '"+fechaIni+"' AND '"+fechaFin+"' ORDER BY p.id_pedido DESC");
    
        try {
            while (obj.next())
            {
                
                Object [] datos = new Object[4];
                
                
                for (int i=0;i<4;i++)
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
}
