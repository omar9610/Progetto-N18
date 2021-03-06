package GraphicalInterface;

import Core.Company;
import User.User;
import Web.Client;
import org.json.simple.parser.ParseException;

import javax.imageio.ImageIO;
import javax.imageio.stream.FileImageInputStream;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.File;
import java.io.IOException;

/**
 * @author Gruppo N
 */
public class MainPageFrame extends JFrame {

    private Client client;
    private User user;
    private Company airlineCompany;

    private JPanel pTitle = new JPanel();
    private JPanel pButton = new JPanel();
    private JLabel lblDisconnect = new JLabel("Disconnect");
    private JLabel lblUsername;
    private JButton btnSelectFlight = new JButton("Select Flight");
    private JButton btnGoToProfile = new JButton("Go To Your Profile");

    Image img = null;

    /**
     *
     * @param client The <code>Client</code> Class' instance of the current Session
     * @param user The <code>User</code> Class's instance of the current Session
     * @param airlineCompany The <code>Company</code> Class' instance of the current Session
     * @exception ParseException
     */
    public MainPageFrame(Client client, User user,Company airlineCompany) throws ParseException {
        super("Airline Company");
        setSize(480,350);
        setVisible(true);
        setResizable(false);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        Font f = new Font("",Font.HANGING_BASELINE,10);
        this.client = client;
        this.user = user;
        this.airlineCompany = airlineCompany;
        lblDisconnect.setFont(f);
        initComponents();
        addListeners();
    }

    /**
     * To initialize Graphical Components
     */
    public void initComponents(){
        lblUsername = new JLabel("Welcome " + user.getName() + " " + user.getSurname() + "!");
        pTitle.setLayout(new FlowLayout(FlowLayout.CENTER,40,10));
        pTitle.add(lblUsername);
        pTitle.add(lblDisconnect);

        add(pTitle, BorderLayout.NORTH);

        pButton.add(btnGoToProfile);
        pButton.add(btnSelectFlight);
        add(pButton,BorderLayout.SOUTH);

        try {
            img= ImageIO.read(new FileImageInputStream(new File("Image\\aereo1.jpg")));
        } catch (IOException e) {
            JOptionPane.showMessageDialog(this, "Image loading error!");
        }

        ImageIcon imm = new ImageIcon(img);
        JLabel lbl = new JLabel(imm);
        add(lbl,BorderLayout.CENTER);


        lblDisconnect.addMouseListener(new MouseListener() {
            @Override
            public void mouseClicked(MouseEvent e) {
                LogInFrame logInFrame = new LogInFrame(client);
                logInFrame.initComponents();
                setDefaultCloseOperation(EXIT_ON_CLOSE);
                setVisible(false);
            }

            @Override
            public void mousePressed(MouseEvent e) {

            }

            @Override
            public void mouseReleased(MouseEvent e) {

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                lblDisconnect.setForeground(Color.RED);
            }

            @Override
            public void mouseExited(MouseEvent e) {
                lblDisconnect.setForeground(Color.BLACK);
            }


        });



    }

    /**
     * To add the Listeners
     */
    public void addListeners(){

        btnGoToProfile.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                UserFrame userFrame = new UserFrame(client, user,airlineCompany);
                setVisible(false);
            }
        });

        btnSelectFlight.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                SelectFlightFrame1 selectFlightFrame1 = new SelectFlightFrame1(client, user, airlineCompany);
                setVisible(false);
            }
        });

    }

}
