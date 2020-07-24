/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tags;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author admin
 */
public class BillTag extends SimpleTagSupport {

    private String database;
    private String user;
    private String password;
    private String url;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     *
     * @throws javax.servlet.jsp.JspException
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();

        try {
            try {
                // TODO: insert code to write html before writing the body content.
                // e.g.:
                //
                // out.println("<strong>" + attribute_1 + "</strong>");
                // out.println("    <blockquote>");

                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection conn = (Connection) DriverManager.getConnection(url + database, user, password);

                String sql = "SELECT * FROM `bill`";
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                
                

                String pro = "<table border='1' cellspacing='0' cellpadding='0'>"
                        + "<th>ID<th>"
                        + "<th>CustomerID<th>"
                        + "<th>ProducID<th>"
                        + "<th>Adress<th>"
                        + "<th>Phone<th>"
                        + "<th>ProductPrice<th>"
                        + "<th>Quantity<th>"
                        + "<th>Voucher<th>"
                        + "<th>PayID<th>"
                        + "<th>Status<th>"
                        + "<th>Update<th>"
                        + "<th>Delete<th>";
                while (rs.next()) {
                    pro += "<tr>"
                            + "<td>" + rs.getInt("bId") + "<td>"
                            + "<td>" + rs.getInt("cId") + "<td>"
                            + "<td>" + rs.getInt("pId") + "<td>"
                            + "<td>" + rs.getString("address") + "<td>"
                            + "<td>" + rs.getString("phone") + "<td>"
                            + "<td>" + rs.getFloat("productPrice") + "<td>"
                            + "<td>" + rs.getInt("quantity") + "<td>"
                            + "<td>" + rs.getInt("vId") + "<td>"
                            + "<td>" + rs.getInt("payId") + "<td>"
                            + "<td>" + rs.getInt("sbID") + "<td>"
                            + "<td>" + "<a href=" + "\'update.jsp?id=" +rs.getInt("bId")+ "\'" +">Update</a>" + "<td>"
                           + "<td>" + "<a href="+ "\'"+ "?id=" +rs.getInt("bId")+ "\'" + ">Delete</a>" + "</td>"
                        
                            + "</tr>";
                }
                out.println("<br>");
                out.println("<h> BILL LIST</h>");
                out.print(pro);

            } catch (SQLException ex) {
                Logger.getLogger(ProductTag.class.getName()).log(Level.SEVERE, null, ex);
            }

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in Bill tag", ex);
        }
    }

    public void setDatabase(String database) {
        this.database = database;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUrl(String url) {
        this.url = url;
    }

}
