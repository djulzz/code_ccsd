<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="default.css" type="text/css" rel="stylesheet" />
    <title>Palette LMS - Main Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            This is the main page of Palette LMS.
        </p>
        <br />
        <p id="db_selected">
            <asp:Literal ID="DB_Name" runat="server" />
        </p>
        <asp:ListView ID="Available_Tables" runat="server" OnSelectedIndexChanged="Available_Tables_SelectedIndexChanged">
                
            <ItemTemplate>
                <div>
                        <asp:Label ID="TableNameLbl" runat="server" Text='<%# Eval("Name") %>'>
                        </asp:Label>
                </div>
            </ItemTemplate>
                
        </asp:ListView>


        <p id="selected_table">
            Below is the information for the Selected Table.<br />
            <asp:ListView ID="Selected_Table" runat="server">
                <ItemTemplate>
                    <div>
                                <asp:Label ID="TableDescriptionLbl" runat="server" Text='<%# Eval("Description") %>'>
                                </asp:Label>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </p>

    </div>
    <div>
        <asp:Button value="Manage Students" runat="server" OnClick="GoToManageStudentsPage_Click" Text="Manage Students"/>
    </div>
    </form>
    <p>
        Below is a list of available actions for developers:<br />
        
    </p>

</body>
</html>
