
import java.awt.*;
import java.awt.event.*;
import java.applet.*;
import javax.swing.JApplet;
import javax.swing.JLabel;
public class MouseDrag extends JApplet implements MouseMotionListener{

public void init(){
 addMouseMotionListener(this);
 this.setBackground(Color.red);
}

public void mouseDragged(MouseEvent me){
Graphics g= getGraphics();
g.setColor(Color.white);
g.fillOval(me.getX(),me.getY(),20,20);
}
public void mouseMoved(MouseEvent me){}

}
