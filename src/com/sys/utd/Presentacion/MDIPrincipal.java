/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sys.utd.Presentacion;

import com.sys.utd.ConexionBD.ConexionBD;
import de.javasoft.plaf.synthetica.SyntheticaAluOxideLookAndFeel;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.HeadlessException;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.event.KeyEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import javax.swing.JInternalFrame;
import javax.swing.JOptionPane;
import javax.swing.UIManager;

/**
 *
 * @author Jonathan
 */
public class MDIPrincipal extends javax.swing.JFrame {

   private ConexionBD conexion;
   private static int vSeccion;
   private JIFPedidos pedido;
   private ImprimirPedido imprimirPedido;
   private JIFOC orden;
   private JIFOC_Mod ordenMod;
   private JIFPedidos_Mod pedidoMod;
   private ImprimirOC imprimirOC;
   private JIFListadoPendientes listadoPendiente;
   private JIFListadoPedidos listadoPedidos;
   
    
    public MDIPrincipal() {
        initComponents();
        
          escritorio.setBorder(new Imagenfondo());

        
        Color c1=new Color(66,111,166);
        Color c2=new Color(102,174,118);
        JPColor miColor=new JPColor(c1,c2);
        miColor.setSize(this.getSize());
        panel.add(miColor);
        
    }
    @SuppressWarnings("unchecked")
    @Override
    public Image getIconImage() 
      {
        Image retValue = Toolkit.getDefaultToolkit().
                getImage(ClassLoader.getSystemResource("com/sys/utd/Recursos/icono.png"));
        return retValue;
    }
    
     public static int getvSeccion() {
        return vSeccion;
    }

    public static void setvSeccion(int vSeccion) {
        MDIPrincipal.vSeccion = vSeccion;
    }
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        JDInicio = new javax.swing.JDialog();
        panel = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        txt_usuario = new javax.swing.JTextField();
        pf_contra = new javax.swing.JPasswordField();
        btn_ingresar = new javax.swing.JButton();
        btn_salir = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        escritorio = new javax.swing.JDesktopPane();
        jToolBar1 = new javax.swing.JToolBar();
        label = new javax.swing.JLabel();
        lb_usuario = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JToolBar.Separator();
        btn_pedido = new javax.swing.JButton();
        btn_oc = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        jMenu2 = new javax.swing.JMenu();
        jMenu3 = new javax.swing.JMenu();
        jMenuItem1 = new javax.swing.JMenuItem();
        jMenuItem2 = new javax.swing.JMenuItem();
        jMenuItem3 = new javax.swing.JMenuItem();
        jMenuItem4 = new javax.swing.JMenuItem();
        jMenuItem8 = new javax.swing.JMenuItem();
        men_oc = new javax.swing.JMenu();
        jMenuItem5 = new javax.swing.JMenuItem();
        jMenuItem6 = new javax.swing.JMenuItem();
        jMenuItem7 = new javax.swing.JMenuItem();
        jMenu5 = new javax.swing.JMenu();

        JDInicio.setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        JDInicio.setUndecorated(true);
        JDInicio.setResizable(false);

        panel.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel1.setFont(new java.awt.Font("Arial", 3, 14)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(204, 153, 0));
        jLabel1.setText("ENTRADA AL SISTEMA");

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/sys/utd/Recursos/Logo.png"))); // NOI18N

        javax.swing.GroupLayout panelLayout = new javax.swing.GroupLayout(panel);
        panel.setLayout(panelLayout);
        panelLayout.setHorizontalGroup(
            panelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(panelLayout.createSequentialGroup()
                .addGap(98, 98, 98)
                .addComponent(jLabel4)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel2)
                .addGap(18, 18, 18)
                .addComponent(jLabel1)
                .addContainerGap(80, Short.MAX_VALUE))
        );
        panelLayout.setVerticalGroup(
            panelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(panelLayout.createSequentialGroup()
                .addGroup(panelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel4)
                    .addGroup(panelLayout.createSequentialGroup()
                        .addGap(11, 11, 11)
                        .addComponent(jLabel1))
                    .addComponent(jLabel2))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel5.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel5.setText("Usuario *");

        jLabel6.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel6.setText("Contraseña *");

        pf_contra.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                pf_contraKeyPressed(evt);
            }
        });

        btn_ingresar.setText("Ingresar");
        btn_ingresar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_ingresarActionPerformed(evt);
            }
        });

        btn_salir.setText("Salir");
        btn_salir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_salirActionPerformed(evt);
            }
        });

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/sys/utd/Recursos/llave.png"))); // NOI18N

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel6)
                    .addComponent(jLabel5))
                .addGap(20, 20, 20)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(btn_ingresar)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 46, Short.MAX_VALUE)
                        .addComponent(btn_salir)
                        .addGap(19, 19, 19))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(txt_usuario, javax.swing.GroupLayout.DEFAULT_SIZE, 175, Short.MAX_VALUE)
                            .addComponent(pf_contra))
                        .addGap(20, 20, 20))))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel5)
                            .addComponent(txt_usuario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(15, 15, 15)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel6)
                            .addComponent(pf_contra, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED, 13, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_ingresar)
                    .addComponent(btn_salir))
                .addContainerGap())
        );

        javax.swing.GroupLayout JDInicioLayout = new javax.swing.GroupLayout(JDInicio.getContentPane());
        JDInicio.getContentPane().setLayout(JDInicioLayout);
        JDInicioLayout.setHorizontalGroup(
            JDInicioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(panel, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(JDInicioLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, 0, Short.MAX_VALUE)
                .addContainerGap())
        );
        JDInicioLayout.setVerticalGroup(
            JDInicioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, JDInicioLayout.createSequentialGroup()
                .addComponent(panel, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Sistema Control de Compras");
        setIconImage(getIconImage());

        jToolBar1.setRollover(true);

        label.setText("Usuario:");
        jToolBar1.add(label);

        lb_usuario.setText("no hay usuario");
        jToolBar1.add(lb_usuario);
        jToolBar1.add(jSeparator1);

        btn_pedido.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/sys/utd/Recursos/pedidoP.png"))); // NOI18N
        btn_pedido.setToolTipText("Registrar Pedido");
        btn_pedido.setBorderPainted(false);
        btn_pedido.setContentAreaFilled(false);
        btn_pedido.setFocusable(false);
        btn_pedido.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btn_pedido.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btn_pedido.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_pedidoActionPerformed(evt);
            }
        });
        jToolBar1.add(btn_pedido);

        btn_oc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/sys/utd/Recursos/ocP.png"))); // NOI18N
        btn_oc.setToolTipText("Registrar Orden de Compra");
        btn_oc.setBorderPainted(false);
        btn_oc.setContentAreaFilled(false);
        btn_oc.setFocusable(false);
        btn_oc.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btn_oc.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btn_oc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_ocActionPerformed(evt);
            }
        });
        jToolBar1.add(btn_oc);

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/sys/utd/Recursos/salir.png"))); // NOI18N
        jButton1.setToolTipText("Salir del Sistema");
        jButton1.setBorderPainted(false);
        jButton1.setContentAreaFilled(false);
        jButton1.setFocusable(false);
        jButton1.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        jButton1.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jToolBar1.add(jButton1);

        javax.swing.GroupLayout escritorioLayout = new javax.swing.GroupLayout(escritorio);
        escritorio.setLayout(escritorioLayout);
        escritorioLayout.setHorizontalGroup(
            escritorioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jToolBar1, javax.swing.GroupLayout.DEFAULT_SIZE, 400, Short.MAX_VALUE)
        );
        escritorioLayout.setVerticalGroup(
            escritorioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(escritorioLayout.createSequentialGroup()
                .addComponent(jToolBar1, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 236, Short.MAX_VALUE))
        );
        escritorio.setLayer(jToolBar1, javax.swing.JLayeredPane.DEFAULT_LAYER);

        jMenu1.setText("File");
        jMenuBar1.add(jMenu1);

        jMenu2.setText("Compras");

        jMenu3.setText("Pedidos ");

        jMenuItem1.setText("Reg. Pedidos");
        jMenuItem1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem1ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem1);

        jMenuItem2.setText("Mod. Pedidos");
        jMenuItem2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem2ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem2);

        jMenuItem3.setText("Imprimir Pedidos");
        jMenuItem3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem3ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem3);

        jMenuItem4.setText("Lista de Pendientes");
        jMenuItem4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem4ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem4);

        jMenuItem8.setText("Listado de Pedidos");
        jMenuItem8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem8ActionPerformed(evt);
            }
        });
        jMenu3.add(jMenuItem8);

        jMenu2.add(jMenu3);

        men_oc.setText("Ordenes de Compra");

        jMenuItem5.setText("Reg. Orden de Compra");
        jMenuItem5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem5ActionPerformed(evt);
            }
        });
        men_oc.add(jMenuItem5);

        jMenuItem6.setText("Mod. Orden de Compra");
        jMenuItem6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem6ActionPerformed(evt);
            }
        });
        men_oc.add(jMenuItem6);

        jMenuItem7.setText("Imprimir Orden de Compra");
        jMenuItem7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem7ActionPerformed(evt);
            }
        });
        men_oc.add(jMenuItem7);

        jMenu5.setText("OC Pendientes por Cerrar");
        men_oc.add(jMenu5);

        jMenu2.add(men_oc);

        jMenuBar1.add(jMenu2);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(escritorio)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(escritorio)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void pf_contraKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pf_contraKeyPressed
        if(evt.getKeyCode()==KeyEvent.VK_ENTER)
        {
            this.logueo();
        }
    }//GEN-LAST:event_pf_contraKeyPressed

    private void btn_ingresarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_ingresarActionPerformed
        this.logueo();
    }//GEN-LAST:event_btn_ingresarActionPerformed

    private void btn_salirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_salirActionPerformed
        System.exit(0);
    }//GEN-LAST:event_btn_salirActionPerformed

    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem1ActionPerformed
         if(estacerrado(pedido))
        {
             
            pedido=new JIFPedidos();
            escritorio.add(pedido);
            Dimension tamanoEscritorio=escritorio.getSize();
            Dimension framesize=pedido.getSize();
            pedido.setLocation((tamanoEscritorio.width - framesize.width)/2, (tamanoEscritorio.height - framesize.height)/2) ;
            pedido.show();
       
        }else
        {
            JOptionPane.showMessageDialog(this, "La ventana ya esta abierta");
        }
    }//GEN-LAST:event_jMenuItem1ActionPerformed

    private void jMenuItem3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem3ActionPerformed
          if(estacerrado(imprimirPedido))
        {
             
            imprimirPedido=new ImprimirPedido();
            escritorio.add(imprimirPedido);
            Dimension tamanoEscritorio=escritorio.getSize();
            Dimension framesize=imprimirPedido.getSize();
            imprimirPedido.setLocation((tamanoEscritorio.width - framesize.width)/2, (tamanoEscritorio.height - framesize.height)/2) ;
            imprimirPedido.show();
       
        }else
        {
            JOptionPane.showMessageDialog(this, "La ventana ya esta abierta");
        }
    }//GEN-LAST:event_jMenuItem3ActionPerformed

    private void jMenuItem5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem5ActionPerformed
         if(estacerrado(orden))
        {
             
            orden=new JIFOC();
            escritorio.add(orden);
            Dimension tamanoEscritorio=escritorio.getSize();
            Dimension framesize=orden.getSize();
            orden.setLocation((tamanoEscritorio.width - framesize.width)/2, (tamanoEscritorio.height - framesize.height)/2) ;
            orden.show();
       
        }else
        {
            JOptionPane.showMessageDialog(this, "La ventana ya esta abierta");
        }
    }//GEN-LAST:event_jMenuItem5ActionPerformed

    private void jMenuItem2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem2ActionPerformed
          if(estacerrado(pedidoMod))
        {
             
            pedidoMod=new JIFPedidos_Mod();
            escritorio.add(pedidoMod);
            Dimension tamanoEscritorio=escritorio.getSize();
            Dimension framesize=pedidoMod.getSize();
            pedidoMod.setLocation((tamanoEscritorio.width - framesize.width)/2, (tamanoEscritorio.height - framesize.height)/2) ;
            pedidoMod.show();
       
        }else
        {
            JOptionPane.showMessageDialog(this, "La ventana ya esta abierta");
        }
    }//GEN-LAST:event_jMenuItem2ActionPerformed

    private void jMenuItem6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem6ActionPerformed
          if(estacerrado(ordenMod))
        {
             
            ordenMod=new JIFOC_Mod();
            escritorio.add(ordenMod);
            Dimension tamanoEscritorio=escritorio.getSize();
            Dimension framesize=ordenMod.getSize();
            ordenMod.setLocation((tamanoEscritorio.width - framesize.width)/2, (tamanoEscritorio.height - framesize.height)/2) ;
            ordenMod.show();
       
        }else
        {
            JOptionPane.showMessageDialog(this, "La ventana ya esta abierta");
        }
    }//GEN-LAST:event_jMenuItem6ActionPerformed

    private void jMenuItem7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem7ActionPerformed
          if(estacerrado(imprimirOC))
        {
             
            imprimirOC=new ImprimirOC();
            escritorio.add(imprimirOC);
            Dimension tamanoEscritorio=escritorio.getSize();
            Dimension framesize=imprimirOC.getSize();
            imprimirOC.setLocation((tamanoEscritorio.width - framesize.width)/2, (tamanoEscritorio.height - framesize.height)/2) ;
            imprimirOC.show();
       
        }else
        {
            JOptionPane.showMessageDialog(this, "La ventana ya esta abierta");
        }
    }//GEN-LAST:event_jMenuItem7ActionPerformed

    private void btn_pedidoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_pedidoActionPerformed
         if(estacerrado(pedido))
        {
             
            pedido=new JIFPedidos();
            escritorio.add(pedido);
            Dimension tamanoEscritorio=escritorio.getSize();
            Dimension framesize=pedido.getSize();
            pedido.setLocation((tamanoEscritorio.width - framesize.width)/2, (tamanoEscritorio.height - framesize.height)/2) ;
            pedido.show();
       
        }else
        {
            JOptionPane.showMessageDialog(this, "La ventana ya esta abierta");
        }
    }//GEN-LAST:event_btn_pedidoActionPerformed

    private void btn_ocActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_ocActionPerformed
         if(estacerrado(orden))
        {
             
            orden=new JIFOC();
            escritorio.add(orden);
            Dimension tamanoEscritorio=escritorio.getSize();
            Dimension framesize=orden.getSize();
            orden.setLocation((tamanoEscritorio.width - framesize.width)/2, (tamanoEscritorio.height - framesize.height)/2) ;
            orden.show();
       
        }else
        {
            JOptionPane.showMessageDialog(this, "La ventana ya esta abierta");
        }
    }//GEN-LAST:event_btn_ocActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        System.exit(0);
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jMenuItem4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem4ActionPerformed
          if(estacerrado(listadoPendiente))
        {
             
            listadoPendiente=new JIFListadoPendientes();
            escritorio.add(listadoPendiente);
            Dimension tamanoEscritorio=escritorio.getSize();
            Dimension framesize=listadoPendiente.getSize();
            listadoPendiente.setLocation((tamanoEscritorio.width - framesize.width)/2, (tamanoEscritorio.height - framesize.height)/2) ;
            listadoPendiente.show();
       
        }else
        {
            JOptionPane.showMessageDialog(this, "La ventana ya esta abierta");
        }
    }//GEN-LAST:event_jMenuItem4ActionPerformed

    private void jMenuItem8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem8ActionPerformed
       if(estacerrado(listadoPedidos))
        {
             
            listadoPedidos=new JIFListadoPedidos();
            escritorio.add(listadoPedidos);
            Dimension tamanoEscritorio=escritorio.getSize();
            Dimension framesize=listadoPedidos.getSize();
            listadoPedidos.setLocation((tamanoEscritorio.width - framesize.width)/2, (tamanoEscritorio.height - framesize.height)/2) ;
            listadoPedidos.show();
       
        }else
        {
            JOptionPane.showMessageDialog(this, "La ventana ya esta abierta");
        }
    }//GEN-LAST:event_jMenuItem8ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) throws ParseException {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
         try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("de.javasoft.plaf.synthetica.SyntheticaBlueLightLookAndFeel;".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel("de.javasoft.plaf.synthetica.SyntheticaAluOxideLookAndFeel;");
                    break;
                }
            }
            UIManager.setLookAndFeel(new SyntheticaAluOxideLookAndFeel());
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(MDIPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MDIPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MDIPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MDIPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
        //</editor-fold>

        /* Create and display the form */
                 public void run() {
                //new MDIPrincipal().setVisible(true);
//                MDIPrincipal principal=new MDIPrincipal();
//                principal.setLocationRelativeTo(null);
//                principal.setVisible(false);
//                principal.setExtendedState(JFrame.MAXIMIZED_BOTH);
//                principal.iniciarSistema();
                new Thread(new Splash()).start();
//            }
            }
            });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JDialog JDInicio;
    private javax.swing.JButton btn_ingresar;
    private javax.swing.JButton btn_oc;
    private javax.swing.JButton btn_pedido;
    private javax.swing.JButton btn_salir;
    private javax.swing.JDesktopPane escritorio;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenu jMenu5;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JMenuItem jMenuItem3;
    private javax.swing.JMenuItem jMenuItem4;
    private javax.swing.JMenuItem jMenuItem5;
    private javax.swing.JMenuItem jMenuItem6;
    private javax.swing.JMenuItem jMenuItem7;
    private javax.swing.JMenuItem jMenuItem8;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JToolBar.Separator jSeparator1;
    private javax.swing.JToolBar jToolBar1;
    private javax.swing.JLabel label;
    private javax.swing.JLabel lb_usuario;
    private javax.swing.JMenu men_oc;
    private javax.swing.JPanel panel;
    private javax.swing.JPasswordField pf_contra;
    private javax.swing.JTextField txt_usuario;
    // End of variables declaration//GEN-END:variables

     private boolean estacerrado(Object obj)
{
    JInternalFrame[] activos=escritorio.getAllFrames();
    boolean cerrado=true;
    int i=0;
    while (i<activos.length && cerrado)
    {
        if(activos[i]==obj)
        {
            cerrado=false;
        }
        i++;
    }
    return cerrado;
    
}
     
     
 public void iniciarSistema()
 {
     JDInicio.pack();
     JDInicio.setLocationRelativeTo(null);
     JDInicio.setVisible(true);
     JDInicio.setResizable(false);
 }
     
     public void logueo()
 {
     try
     {
         
         conexion=new ConexionBD();
         int level=0;
         String usuario=txt_usuario.getText();
         String contra=String.valueOf(pf_contra.getPassword());
         
         ResultSet obj=conexion.executeQuery("SELECT cedula, usuario, id_level FROM usuariosistema.usuario WHERE usuario='"+usuario+"' AND claveusuario='"+contra+"' AND activo=true");
         
         if(obj.next()==true)
         {
             JDInicio.dispose();
             txt_usuario.setText("");
             pf_contra.setText("");
             
             level=obj.getInt("id_level");
             
             if(level==6)
             {
                 men_oc.setEnabled(false);
                 
                 
                  this.setVisible(true);
             
             int id=obj.getInt("cedula");
             
             System.out.println(id);
             usuario=obj.getString("usuario");
             
             lb_usuario.setText(usuario);
             
             setvSeccion(id);
                 
             }
             else
             {
             
             this.setVisible(true);
             
             int id=obj.getInt("cedula");
             
             System.out.println(id);
             usuario=obj.getString("usuario");
             
             lb_usuario.setText(usuario);
             
             setvSeccion(id);
             
          }
             
         }
         else
         {
             JOptionPane.showMessageDialog(this, "Usuario o contraseña incorrectos. \n Intentelo de nuevo", "Mensaje Error", JOptionPane.ERROR_MESSAGE);
         }
         
     }catch(SQLException | HeadlessException e)
     {
        JOptionPane.showMessageDialog(this, "Error de conexión" + e, "Mensaje Error", JOptionPane.ERROR_MESSAGE);

     }
 }
     
     
     









}
