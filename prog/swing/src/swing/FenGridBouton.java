package swing;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;

public class FenGridBouton extends JFrame {
	private JTextField field;
	
	public FenGridBouton() {
		JPanel panel = (JPanel) this.getContentPane();
		JTextArea text = new JTextArea("Entrez un nombre entier");
		field = new JTextField(1);
		this.setTitle("FenetreLitEntier");
		this.setSize(300, 150);
		panel.add(text, BorderLayout.NORTH);
		panel.add(field, BorderLayout.SOUTH);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setVisible(true);
	}
	
	class EnterListener implements ActionListener {
		public void enterPressed(KeyEvent ev) {
			if (ev == KeyEvent.VK_ENTER) {
				int x = (Integer) field.getText();
			}
		}
	}
}


