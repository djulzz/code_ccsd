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

    protected String s( String input )
    {
        return "'" + input + "'";
    }
    
    protected void add_Student(object sender, EventArgs e)
    {
        string id               = s_id.Text;
        string firstName        = Utilities.Stringify( s_firstName.Text );
        string lastName         = Utilities.Stringify( s_lastName.Text );
        string gpa              = s_gpa.Text;
        string shift            = Utilities.Stringify( s_shift.Text);
        string email            = Utilities.Stringify( s_email.Text);
        string phoneNumber      = Utilities.Stringify( s_phoneNumber.Text);
        string programCode      = Utilities.Stringify( s_programCode.Text);

        int cvt_id = Convert.ToInt32(id);
        double cvt_gpa = Convert.ToDouble(gpa);

        int return_value = 0;

        String sep = " , ";
        String Sql_non_query_string = @"insert into student values(" +
            cvt_id + sep +
            firstName + sep +
            lastName + sep +
            cvt_gpa + sep +
            shift + sep +
            email + sep +
            phoneNumber + sep +
            programCode + ")";

        m_cnx = (MySqlConnection)Session[ConnexionKey];
        MySqlCommand cmd = new MySqlCommand(Sql_non_query_string, m_cnx );

        try
        {
            return_value = cmd.ExecuteNonQuery();
        } catch( MySqlException ex )
        {
            Response.Write("Error while attempting to insert a student in the database.\r\n");
            Response.Write("Dev. Insight = Exception --> " + ex.Message);
        }
        finally
        {
            if( return_value == 1 )
            {
                MessageBox.Show(this, "Student (" + firstName + "," + lastName + ") successfully added");
            }
        }

    }
}