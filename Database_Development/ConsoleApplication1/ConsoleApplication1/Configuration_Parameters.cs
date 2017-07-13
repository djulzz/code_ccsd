using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.IO;
using MySql.Data;
using MySql.Data.MySqlClient;
using MySql.Data.Types;

namespace ConsoleApplication1
{
    public class Configuration_Parameters
    {
        // By making the default constructor
        // private, it becomes impossible for a 
        // third - party user to create an object of
        // type Configuration_Parameters without
        // providing a filename
        private Configuration_Parameters()
        {

        }

        // This is the useful Constructor
        public Configuration_Parameters( String configFileName )
        {
            //
            //FileStream fs = File.Open(configFileName, FileMode.Open, FileAccess.Read, FileShare.None);
            StreamReader sr = new StreamReader(configFileName);
            if ( sr == null )
            {
                Console.WriteLine("File cannot be access for reading - Aborting\r\n");
            } else
            {
                Console.WriteLine("File available for reading - Continuing\r\n");
                Console.Write("Fetching username...");
                String buffer = sr.ReadLine();
                Char separator = '=';
                String[] parameters = buffer.Split(separator);
                Console.WriteLine(" <" + parameters[ 1 ] + ">" );
                Console.Write("Fetching password... ");
                buffer = sr.ReadLine();

                String myConnectionString = "server=127.0.0.1;" + "uid=root;" + "pwd=;" + "database=henry;";
                MySqlConnection connection = new MySqlConnection(myConnectionString);
                try
                {
                    connection.Open();
                } catch( MySqlException s )
                {
                    Console.WriteLine(s.Message);
                }
                if( connection.State == System.Data.ConnectionState.Open )
                {
                    Console.WriteLine("Connection Open");
                } else
                {
                    Console.WriteLine("Connection could not be opened - Aborting...");
                    return;
                }
            }

            sr.Close();
        }

        String user;
        String password;
        String host;
        String current_database;
    }
}
