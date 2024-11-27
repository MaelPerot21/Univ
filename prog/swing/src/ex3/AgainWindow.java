package ex3;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class AgainWindow extends JFrame implements ActionListener {
	private static final long serialVersionUID = 1L;
	private JButton again;
	private JButton stop;
	
	public AgainWindow() {
		JPanel panel = (JPanel) this.getContentPane();
		again = new JButton("Encore ?");
		stop = new JButton("Stop ?");
		again.addActionListener(this);
		stop.addActionListener(this);

		this.setLayout(new FlowLayout());
		this.setTitle("Question");
		this.setSize(300, 100);
		panel.add(again);
		panel.add(stop);

		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setVisible(true);
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		JButton pressed = (JButton) e.getSource();
		
		if (pressed == again) {
			new AgainWindow();
		}
		else {
			dispose();
		}
	}

}
