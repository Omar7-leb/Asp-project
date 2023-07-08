<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<style type="text/css">
.style1
{
font-family: "Bahnschrift SemiBold";
}
.style2
{
width: 100%;
height: 252px;
}
.style3
{
color: #FF0000;
font-style: italic;
font-weight: bold;
}
.style6
{
height: 145px;
}
.style8
{
height: 145px;
text-align: center;
}
.style9
{
text-align: center;
}
.style10
{
font-weight: bold;
}
.style11
{
width: 100%;
}
.style12
{
width: 247px;
}
.style13
{width: 247px;
text-align: center;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="style1">
<h1>
<strong style="font-family: Bahnschrift; font-style:
normal; color: #000000; font-size: large;">
Inscription in 3rd year Computer Science:</strong></h1>
</div>
<table class="style2">
<tr>
<td>
<strong>Course Code :</strong></td>
<td>
<strong>
<asp:TextBox ID="txtcourse" runat="server"
CssClass="style10" pattern="[A-Za-z]{1}[0-9]{4}"></asp:TextBox>
</strong>
</td>
<td>
<strong>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
runat="server"
ControlToValidate="txtcourse" CssClass="style3"
Display="Dynamic"
ErrorMessage="Course Code is obligatory
"></asp:RequiredFieldValidator>
</strong>
</td>
</tr>
<tr>
<td>
<strong>Credit Number :</strong></td>
<td>
<strong>
<asp:TextBox ID="txtcredit" runat="server"
CssClass="style10"></asp:TextBox>
</strong>
</td>
<td>
<strong>
<asp:RangeValidator ID="RangeValidator1" runat="server"
ControlToValidate="txtcredit" CssClass="style3"
Display="Dynamic"
ErrorMessage="Credit nb between 3 and 6"
MaximumValue="6" MinimumValue="3"></asp:RangeValidator>
</strong>
</td>
</tr>
<tr>
<td class="style9">
<strong><asp:Button ID="btnAdd" runat="server" CssClass="style10"
Text="Add"
onclick="btnAdd_Click" />
</strong>
</td>
<td>
&nbsp;</td>
<td class="style9">
<strong>
<asp:Button ID="btnClear" runat="server"
CssClass="style10" Text="Clear"
onclick="btnClear_Click" />
</strong>
</td>
</tr>
<tr>
<td class="style6">
<strong>List of Models : </strong>
</td>
<td class="style6">
<strong>
<asp:ListBox ID="listofmodules" runat="server" style="textalign: center"
Width="89px" SelectionMode="Multiple"
CssClass="style10">
<asp:ListItem Value="0">--Code--</asp:ListItem>
</asp:ListBox>
</strong>
</td>
<td class="style8">
<strong>
<asp:Button ID="btnRegister" runat="server"
CssClass="style10"
Text="Register" onclick="btnRegister_Click" />
</strong>
</td>
</tr>
</table>
<h1>
<strong style="font-family: Arial; font-style:
normal; color: #000000; font-size: large;">
Summary :</strong></h1>
<table class="style11">
<tr>
<td class="style12">
<strong>Registred Courses :</strong></td>
<td>
<strong>
<asp:ListBox ID="listofcourses" runat="server"
SelectionMode="Multiple"
CssClass="style10" Width="87px">
<asp:ListItem Value="0">--Code--</asp:ListItem>
</asp:ListBox>
</strong>
</td>
<td><strong>Total nb of Credits :</strong></td>
<td>
<strong>
<asp:TextBox ID="labelcredit" runat="server" Enabled="False"
style="color: #0000CC; text-align: center"
Width="43px" CssClass="style10" BorderStyle="None"
>0</asp:TextBox>
</strong>
</td>
</tr>
<tr>
<td class="style13">
<strong>
<asp:Button ID="btnDelete" runat="server"
CssClass="style10"
onclick="btnDelete_Click" Text="Delete" />
</strong>
</td>
<td class="style9">
<strong>
<asp:Button ID="btnDeleteAll" runat="server"
CssClass="style10"
onclick="btnDeleteAll_Click" Text="Delete All" />
</strong>
</td>
<td class="style9">
<strong>
<asp:Button ID="btnUP" runat="server" CssClass="style10"
Text="Up"
onclick="btnUP_Click" />
</strong>
</td>
<td class="style9">
<strong>
<asp:Button ID="btnDown" runat="server"
CssClass="style10" Text="Down"
onclick="btnDown_Click" />
</strong>
</td>
</tr>
</table>
</form>
</body>
</html>