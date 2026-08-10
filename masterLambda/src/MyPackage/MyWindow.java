package MyPackage;
import javax.swing.*;

public class MyWindow {

    public static void main(String[] args) {

        JFrame frame = new JFrame("My Window");
        frame.setSize(500, 400);

        JButton button = new JButton("Click Me !!");

        button.addActionListener(e -> {

            System.out.println("Button Click");

            JOptionPane.showMessageDialog(frame,
                    "Button Clicked");

        });

        frame.add(button);

        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);
    }
}