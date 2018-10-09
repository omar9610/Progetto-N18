package GraphicalInterface;

import Core.Airport;
import Core.Company;
import Web.Client;
import User.User;
import Web.JsonCommand;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

public class SelectFlightFrame extends JFrame {

    private Client client;
    private User user;
    private Company airlineCompany;
    private JPanel pTitle = new JPanel();
    private JPanel pDepArr = new JPanel();
    private JPanel pButton = new JPanel();
    private JLabel lblSelectFlight;
    private JLabel lblDeparture = new JLabel("Departure :");
    private JComboBox cmbDeparture;
    private JComboBox cmbArrive;
    private JLabel lblArrive = new JLabel("Arrive :");
    private JCheckBox chkDepArr = new JCheckBox("Roundtrip");
    private JButton btnBack = new JButton("Back To Home Page");
    private JButton btnNext = new JButton("Next");



    public SelectFlightFrame(Client client, User user, Company airlineCompany){
        super("Airline Company - Select Flight");
        this.airlineCompany = airlineCompany;
        this.client = client;
        this.user = user;

        setSize(400,400);
        setLocationRelativeTo(null);
        setResizable(false);
        setVisible(true);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        initComponents();
        addListeners();
    }

    private void initComponents(){
        getAirports();
        this.lblSelectFlight = new JLabel("Hi " + user.getName() + "! Select Your Flight!");
        lblSelectFlight.setFont(new Font("SansSerif",Font.PLAIN,20));
        setLayout(new BorderLayout());
        pTitle.add(lblSelectFlight);
        pDepArr.setLayout(new GridLayout(5,2));
        pDepArr.add(lblDeparture);
        pDepArr.add(cmbDeparture);
        pDepArr.add(lblArrive);
        pDepArr.add(cmbArrive);
        pDepArr.add(chkDepArr);
        pButton.add(btnBack);
        pButton.add(btnNext);
        add(pTitle, BorderLayout.NORTH);
        add(pDepArr, BorderLayout.CENTER);
        add(pButton, BorderLayout.SOUTH);

        lblDeparture.setFont(new Font("DIALOG",Font.HANGING_BASELINE,15));
        lblArrive.setFont(new Font("DIALOG",Font.HANGING_BASELINE,15));
        cmbDeparture.setFont(new Font("SansSerif",Font.PLAIN,10));
        cmbArrive.setFont(new Font("SansSerif",Font.PLAIN,10));
    }

    public void addListeners(){

        btnBack.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    MainPageFrame mainPageFrame = new MainPageFrame(client, user);
                    setVisible(false);
                } catch (ParseException e1) {
                    e1.printStackTrace();
                }
            }
        });

        btnNext.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                BaggageFrame baggageFrame = new BaggageFrame(client,user);
                setVisible(false);
            }
        });



    }




    private void getAirports(){
        String[] lineArray = airlineCompany.getAirportsNames().toArray(new String[]{});
        this.cmbDeparture = new JComboBox<>(lineArray);
        this.cmbArrive = new JComboBox<>(lineArray);
    }

}
