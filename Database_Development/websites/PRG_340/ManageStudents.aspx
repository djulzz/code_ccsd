<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageStudents.aspx.cs" Inherits="ManageStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="ManageStudents.css" type="text/css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <h1>Student Management Page</h1>
    <form id="form1" runat="server">
        Enter Student&nbsp<table>
                <tr>
                    <td>Student ID</td>
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>GPA</td>
                    <td>Shift</td>
                    <td>Email</td>
                    <td>Phone Number</td>
                    <td>Program Code</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="s_id" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="s_firstName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="s_lastName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="s_gpa" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="s_shift" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="s_email" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="s_phoneNumber" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="s_programCode" runat="server"></asp:TextBox>
                    </td>
                </tr>
                          </table>
        <br />
        <asp:Button value="Add Students" runat="server" Text="Add Student" OnClick="add_Student"/>
    <div>
    
    </div>
    </form>
</body>
</html>
