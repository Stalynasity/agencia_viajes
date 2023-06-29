package Controlador;

import java.sql.*;
import Modelo.*;
import Vista.*;
import javax.swing.JOptionPane;
import java.awt.event.ActionListener;

/**
 *
 * @author staly
 */
public class CtrlLogin implements ActionListener {
//Variables
      private ConsultasLogin clo;
    private final FrmLogin frml;

  /**
   *
   * @param lo
   * @param frml
   * @param us
   */
  @SuppressWarnings({"SillyAssignment", "LeakingThisInConstructor"})
    public CtrlLogin(ConsultasLogin lo, FrmLogin frml, Usuario us) {
        this.clo = clo;
        this.frml = frml;

        this.frml.btnEntrar.addActionListener(this);
        this.frml.btnCancelar.addActionListener(this);
    }
    
  /**
   * Busca el login
   */
  public void iniciar() {
        frml.setTitle("LOGIN");
        frml.setLocationRelativeTo(null);
    }

  /**
   * Validacion de usuario, muestra de mensaje
   * @param evt
   */
    @Override
    public void actionPerformed(java.awt.event.ActionEvent evt) {
        if (evt.getSource() == frml.btnEntrar) {
            String usuario = frml.txtUsuario.getText();
            String clave = frml.txtContraseña.getText();

            try {
                if (usuario.isEmpty() || clave.isEmpty()) {
                    JOptionPane.showMessageDialog(null, "Llene los dos campos");
                } else {
                    boolean valido = clo.validarUsuario(usuario, clave);
                    if (valido) {
                        frml.mostrarMensaje("Bienvenido " + usuario + "!");
                        frml.cerrarVentana();
                    } else {
                        frml.mostrarMensaje("Credenciales incorrectas");
                    }
                }
            } catch (SQLException ex) {
                frml.mostrarMensaje("Error al conectar a la base de datos");
            }
        }
    }
}
