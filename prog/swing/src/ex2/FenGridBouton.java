package ex2;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class FenGridBouton extends JFrame implements ActionListener {
	private static final long serialVersionUID = 1L;
	private JTextField field;

	public FenGridBouton() {
		JPanel panel = (JPanel) this.getContentPane();
		JLabel text = new JLabel("Entrez un nombre entier");
		field = new JTextField(12);
		field.addActionListener(this);

		this.setTitle("Fenetre de Lecture d'Entier");
		this.setSize(300, 50);
		panel.add(text, BorderLayout.WEST);
		panel.add(field, BorderLayout.EAST);

		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setVisible(true);
	}

	public void actionPerformed(ActionEvent e) {
		float number = Float.parseFloat(field.getText().replace(',', '.'));
		String isIntegerString;
		if (number == Math.round(number))
			isIntegerString = (Math.round(number)) + " est un entier";
		else
			isIntegerString = number + " n'est pas un entier";
		
		dispose();
		JOptionPane.showMessageDialog(null, isIntegerString);
	}

}