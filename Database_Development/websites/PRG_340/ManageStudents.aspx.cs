using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using MySql.Data.Types;

public partial class ManageStudents : System.Web.UI.Page
{
    string ConnexionKey = "Connexion";

    MySqlConnection m_cnx;
    protected void Page_Load(object sender, EventArgs e)
    {
        if( !Page.IsPostBack )
        {
            m_cnx = (MySqlConnection)Session[ConnexionKey];
            if( m_cnx.State == System.Data.ConnectionState.Open )
            {
                Response.Write("Connection transferred properly from Default.aspx");
            }
        }
    }

    protected void add_Student(object sender, EventArgs e)
    {
        string id               = s_id.Text;
        string firstName        = s_firstName.Text;
        string lastName         = s_lastName.Text;
        string gpa              = s_gpa.Text;
        string shift            = s_shift.Text;
        string email            = s_email.Text;
        string phoneNumber      = s_phoneNumber.Text;
        string programCode      = s_programCode.Text;

        int cvt_id = Convert.ToInt32(id);
        double cvt_gpa = Convert.ToDouble(gpa);

    }
}