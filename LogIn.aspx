<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label runat="server"> First Name :</asp:Label></td>
            <td>
                <asp:TextBox ID="TextFirstName" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="TextFirstName"
                    ErrorMessage="First Name can't be left blank" SetFocusOnError="True"> </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:label runat="server"> Last Name :</asp:label></td>
            <td>
                <asp:TextBox ID="TextLastName" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="TextLastName"
                    ErrorMessage="Last Name can't be left blank" SetFocusOnError="True" > </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label runat="server"> UserName :</asp:Label></td>
            <td>
                <asp:TextBox ID="TextUserName" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="TextUserName"
                   ErrorMessage="UserName can't be left blank" SetFocusOnError="true"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td><asp:Label runat="server"> Password :</asp:Label></td>
            <td>
                <asp:TextBox ID="TextPassword" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="TextPassword"
                   ErrorMessage="Password can't be left blank" SetFocusOnError="true"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label runat="server"> ConfirmPassword :</asp:Label></td>
            <td>
                <asp:TextBox ID="TextConfirm" runat="server"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="rfvComparePass" runat="server" ControlToCompare="TextConfirm" ControlToValidate="TextPassword"
                   operator="Equal" ErrorMessage="Password and confirm password do not match" SetFocusOnError="true"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label runat="server"> Gender :</asp:Label></td>
            <td><asp:ListBox ID="ListOfGender" runat="server" Height="20px">
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
                </asp:ListBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ListOfGender" 
                    ErrorMessage="choose Your Gender" SetFocusOnError="true"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label runat="server">E-mail</asp:Label></td>
            <td><asp:TextBox ID="TextEmail" runat="server"></asp:TextBox></td>
            <td>

                <asp:RegularExpressionValidator ID="rfvEmail" runat="server" ControlToValidate="TextEmail" ErrorMessage ="Enter your Correct E-mail"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="true"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:ValidationSummary ID="rfvValidationSummery" runat="server" ShowMessageBox="True" ShowSummary="False"/></td>
        </tr>
       <tr>
           <td><asp:Label runat="server"> SignUp</asp:Label></td>
           <td><asp:Button ID="btnSave" runat="server" Text="Sign Up" OnClick="btnSave_Click" /></td>
       </tr>
    </table>
</asp:Content>
