package ex4;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Calculator extends JFrame{
	private JButton b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, bPlus, bMoins, bFois, bEgal, bSur, bRAZ;

	private JPanel panelBoutons;
	private JPanel panelNumerique;
	private JPanel panelOperations;
	private JTextField zoneResultat;

	private int opd1;
	private int opd2;
	private int resultat;
	private char operation;
	private boolean newOp = false;

	class B0Listener implements ActionListener {
		public void actionPerformed(ActionEvent Event) {
			String text = zoneResultat.getText();
			if (!text.equals("0") && !newOp)
				zoneResultat.setText(text + "0");
			else {
				zoneResultat.setText("0");
				newOp = false;
			}
		}
	}

	class BEgalListener implements ActionListener {
		public void actionPerformed(ActionEvent Event) {
			opd2 = Integer.parseInt(zoneResultat.getText());
			switch(operation){
				case '+' : resultat = opd1+opd2;
				break;
				case '-' : resultat = opd1-opd2;
				break;
				case '*' : resultat = opd1*opd2;
				break;
				case '/' :{
					if (opd2 == 0)
						resultat = Integer.MIN_VALUE;
					else
						resultat = opd1/opd2;
				}
				break;
				default : resultat=0;
			}
			if(resultat == Integer.MIN_VALUE) {
				zoneResultat.setText("ERROR : /0");
				zoneResultat.setBackground(Color.RED);
			}
			else
				zoneResultat.setText(resultat+"");
			newOp = true;
		}
	}

	public void declarationBoutons() {
		b0 = new JButton("0");
		b0.addActionListener(new B0Listener());
		b1 = new JButton("1");
		b1.addActionListener(new B1Listener());
		// ...
		bPlus = new JButton("+");
		bPlus.addActionListener(new BPlusListener());
		bMoins = new JButton("-");
		bMoins.addActionListener(new BMoinsListener());
		// ...
	}

	public void placerBoutons(){
		panelBoutons = new JPanel();
		panelNumerique = new JPanel();
		panelNumerique.setLayout(new GridLayout(4,3));
		panelNumerique.add(b1);
		panelNumerique.add(b2);
		// ...
		panelOperations = new JPanel();
		panelOperations.setLayout(new GridLayout(5,1));
		panelOperations.add(bPlus);
		panelOperations.add(bMoins);
		// ...
		panelBoutons.setLayout(new BorderLayout());
		panelBoutons.add(BorderLayout.NORTH,bRAZ);
		panelBoutons.add(BorderLayout.WEST,panelNumerique);
		panelBoutons.add(BorderLayout.EAST,panelOperations);
	}

	public Calculator() {
		setTitle("Ma première Calculatrice");
		setSize(300, 220);
		declarationBoutons();
		placerBoutons();
		zoneResultat = new JTextField(10);
		zoneResultat.setText("0");
		this.getContentPane().add(BorderLayout.SOUTH, panelBoutons);
		this.getContentPane().add(BorderLayout.NORTH, zoneResultat);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setVisible(true);
	}
}
