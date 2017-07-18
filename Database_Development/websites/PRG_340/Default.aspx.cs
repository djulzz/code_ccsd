using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using MySql.Data.Types;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    // Honestly, this string  just helps me avoid typos when 
    // referencing the session variable
    string TableKey     = "Tables";
    string ConnexionKey = "Connexion";

    MySqlConnection m_cnx;

    private void BindList()
    {
        Available_Tables.DataSource = (List<TableObject>)Session[TableKey];
        Available_Tables.DataBind();
    }

    protected List<TableObject> GetTableNames()
    {
        List<TableObject> TableNames = (List<TableObject>)Session[TableKey];
        return TableNames;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        // If it's really the first time we are loading the
        // page, 
        if (!Page.IsPostBack)
        {
            // If the session variable is empty, initialize an 
            // empty list as the datasource
            if (Session[TableKey] == null)
            {
                Session[TableKey] = new List<TableObject>();
            }
            BindList();

            String database = "palette_lms";
            String myConnectionString = "server=127.0.0.1;" + "uid=root;" + "pwd=;";
            m_cnx = new MySqlConnection(myConnectionString);
            try
            {
                m_cnx.Open();
                m_cnx.ChangeDatabase(database);
            }
            catch (MySqlException ex)
            {
                Response.Write("Connection to database <" + database + ">" + " could not be established.\r\n");
                Response.Write("Developer insight: " + ex.Message + "\r\n");
            }
            finally
            {
                if (m_cnx != null)
                {
                    if (m_cnx.State == System.Data.ConnectionState.Open)
                    {
                        Session[ConnexionKey] = m_cnx;
                        DB_Name.Text = database;
                        Response.Write("Connection Established with database " + database + "\r\n");
                        DataTable allTablesSchemaTable = m_cnx.GetSchema("Tables");
                        //DataTable schema = connection.GetSchema("Tables");
                        List<TableObject> TableNames = ( List<TableObject> )Session[TableKey];
                        foreach (DataRow row in allTablesSchemaTable.Rows)
                        {
                            // For the array,
                            // - 0 -member represents Catalog;
                            // - 1 -member represents Schema; 
                            // - 2 -member represents Table Name;
                            // - 3 -member represents Table Type. 
                            // Now we specify the Table Name of the table what we want to get schema information.
                            String currentTableName = row[2].ToString();
                            TableNames.Add(new TableObject(currentTableName));
                        }
                        Available_Tables.DataSource = TableNames;
                        Available_Tables.DataBind();
                    }
                }
            }
        }
        return;
    }

    protected void Available_Tables_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectedIndex = Available_Tables.SelectedIndex;
        List<TableObject> tables = GetTableNames();
        TableObject obj = tables.ElementAt(selectedIndex);
        String TABLE_NAME = obj.Name;
        String str_query = "SELECT name FROM sys.columns WHERE object_id = OBJECT_ID('" + TABLE_NAME + "');";
        MySqlCommand cmd = new MySqlCommand(str_query, m_cnx);
        MySqlDataReader reader = cmd.ExecuteReader();
        if( reader.Read() )
        {
            int numberOfFields = reader.FieldCount;
        }



    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {

    }

    protected void GoToManageStudentsPage_Click(object sender, EventArgs e)
    {
        Server.Transfer("ManageStudents.aspx", true);
    }
}