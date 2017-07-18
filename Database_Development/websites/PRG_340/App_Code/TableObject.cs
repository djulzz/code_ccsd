using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TableObject
/// </summary>
public class TableObject
{
    public TableObject(String name)
    {
        //
        // TODO: Add constructor logic here
        //
        m_Name = name;
    }

    private String m_Name;

    public String Name
    {
        set
        {
            m_Name = value;
        }

        get
        {
            return m_Name;
        }
    }
}