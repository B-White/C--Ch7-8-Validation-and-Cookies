<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Chapter 6: Reservations</title>
    <link href="Styles/Main.css" rel="stylesheet"/>
    <link href="Styles/Request.css" rel="stylesheet" />
</head>
<body>
    <header>
        <h1>Royal Inns and Suites</h1>
        <h2>Where you&rsquo;re always treated like royalty</h2>
    </header>
    <section>
        <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtArrivalDate">
            <h1>Reservation Request</h1>
            <h2>Request data</h2>
            <label class="label">Arrival date</label>
            <asp:TextBox ID="txtArrivalDate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtArrivalDate" Display="Dynamic" ErrorMessage="Month is required." ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="Format must be mm/dd/yyyy." ValidationExpression="\d{2}\/\d{2}\/\d{4}" ControlToValidate="txtArrivalDate"></asp:RegularExpressionValidator>
            <br />
            <label class="label">Departure date</label>
            <asp:TextBox ID="txtDepartureDate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDepartureDate" Display="Dynamic" ErrorMessage="Departure is required." ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtDepartureDate" Display="Dynamic" ErrorMessage="Format must be mm/dd/yyyy." ValidationExpression="\d{2}\/\d{2}\/\d{4}"></asp:RegularExpressionValidator>
            <br />
            <label class="label">Number of people</label>
            <asp:DropDownList ID="ddlNoOfPeople" runat="server" Height="16px" Width="129px">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlNoOfPeople" Display="Dynamic" ErrorMessage="Number of people is required." ForeColor="Red" InitialValue="Please Select">*</asp:RequiredFieldValidator>
            <br />          

            <label class="label">Bed type</label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>King</asp:ListItem>
                <asp:ListItem>Queen</asp:ListItem>
                <asp:ListItem>Single</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Bed type is required." ForeColor="Red" ControlToValidate="RadioButtonList1">*</asp:RequiredFieldValidator>
            <br />

            <h2>Special requests</h2>
            <asp:TextBox ID="txtSpecialRequests" runat="server" TextMode="MultiLine"></asp:TextBox><br />
       
            <h2>Contact information</h2>
            <label class="label">First Name</label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="entry"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="First name is required." ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <label class="label">Last name</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="entry"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Last name is required." ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <label class="label">Email address</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="entry"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is required." ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email must be in correct format." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <label class="label">Telephone number</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="entry"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Number is required." ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Number must be in correct format." ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            <br />
            <label class="label">Preferred method</label>
            <asp:DropDownList ID="ddlPreferredMethod" runat="server" Height="17px" Width="123px" OnSelectedIndexChanged="ddlPreferredMethod_SelectedIndexChanged">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem>Email</asp:ListItem>
                <asp:ListItem>Telephone</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlPreferredMethod" Display="Dynamic" ErrorMessage="A perferred method is required." ForeColor="Red" InitialValue="Please Select">*</asp:RequiredFieldValidator>
            <br />

            <label class="label">&nbsp;</label>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" CssClass="button" />&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" onclick="btnClear_Click" CssClass="button" /><br />
            <p>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </p>
    </form>
    </section>
    <footer>
        <p>&copy; 2013, Royal Inns and Suites</p>
    </footer>
</body>
</html>
