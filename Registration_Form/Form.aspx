<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Registration_Form.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 186px;
        }
        .auto-style5 {
            width: 166px;
            text-align: center;
            height: 29px;
        }
        .auto-style6 {
            width: 186px;
            height: 29px;
            text-align: left;
        }
        .auto-style9 {
            width: 85px;
            height: 32px;
        }
        .auto-style10 {
            text-align: center;
            height: 32px;
        }
        .auto-style11 {
            width: 186px;
            height: 32px;
            text-align: left;
        }
        .auto-style13 {
            width: 186px;
            text-align: left;
        }
        .auto-style14 {
            text-align: left;
            height: 32px;
        }
        #txtFname, #txtLname, #txtEmail, #txtPwd, #txtCpwd, #txtPhn {
            border-radius:10px; outline:none; 
           background-color: #b8c6db; background-image: linear-gradient(315deg, #b8c6db 0%, #f5f7fa 74%);
            font-family: 'Franklin Gothic Medium'; font-size: medium; font-weight:700;
        }
            body{
    		background-color: black;
    		color: white;
    		font-family: "Papyrus",fantasy;
    		margin: 0px;
    	}
        #btnSubmit {
           background-color: #fc9842; background-image: linear-gradient(315deg, #fc9842 0%, #fe5f75 74%);
           letter-spacing:2px; 
           border-radius:30px; box-shadow: 1px 2px 4px 1px #b8c6db; outline:none; text-shadow: 1px 1px 3px white;
        }
            #btnSubmit:hover {
                transform:scale(1.2,1);
            }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students Registration Form</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"  style="text-align: left" Width="859px" Font-Names="Franklin Gothic Demi" />
        <p>
        </p>
        <table cellpadding="3" cellspacing="4" class="auto-style1">
            <tr>
                <td class="auto-style10" style="font-family: 'Franklin Gothic Medium'; font-size: medium">First Name :</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtFname" runat="server" Width="155px" Font-Names="Franklin Gothic Medium Cond" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="FirstName is requied" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9" style="font-family: 'Franklin Gothic Medium'; font-size: medium">Last Name :</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtLname" runat="server" Width="155px" Font-Names="Franklin Gothic Medium Cond" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="LastName is requied" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: 'Franklin Gothic Medium'; font-size: medium">E-Mail :</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtEmail" runat="server" Width="155px" Font-Names="Franklin Gothic Medium Cond" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail must  requied" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter valid E-mail Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style3" colspan="2" rowspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: 'Franklin Gothic Medium'; font-size: medium">Password :</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="155px" Font-Names="Franklin Gothic Medium Cond" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password must requied" ForeColor="Red">*</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="Password must be 8-10 characters long with at least one numeric,&lt;/br&gt;one upper case character and one special character." ForeColor="Red" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: 'Franklin Gothic Medium'; font-size: medium">Confirm - Password :</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtCpwd" runat="server" TextMode="Password" Width="155px" Font-Names="Franklin Gothic Medium Cond" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCpwd" ErrorMessage="Confirm Password must requied" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCpwd" ErrorMessage="Please enter proper password" ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: 'Franklin Gothic Medium'; font-size: medium">Contant Number&nbsp; :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPhn" runat="server" TextMode="Number" Width="155px" Font-Names="Franklin Gothic Medium Cond" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPhn" ErrorMessage="Contant number must requied" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: 'Franklin Gothic Medium'; font-size: medium">Gender :</td>
                <td class="auto-style4" style="font-family: 'Franklin Gothic Medium'; font-size: medium">
                    <asp:RadioButton ID="rdbMale" runat="server" GroupName="gender" Text="Male" />&nbsp;&nbsp;
                    <asp:RadioButton ID="rdbFemale" runat="server" GroupName="gender" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" Height="40px" OnClick="btnSubmit_Click1" Text="SUBMIT" Width="152px" BorderStyle="Groove" BorderWidth="3px" Font-Italic="True" Font-Names="Franklin Gothic Heavy" Font-Size="X-Large" />
    </form>
</body>
</html>
