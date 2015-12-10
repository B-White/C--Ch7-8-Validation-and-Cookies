using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Request : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!(Request.Cookies["userInfo"] == null))
            {
                txtArrivalDate.Text = Request.Cookies["userInfo"]["Arrival"];
                txtDepartureDate.Text = Request.Cookies["userInfo"]["Departure"];
                ddlNoOfPeople.SelectedValue = Request.Cookies["userInfo"]["NumPeople"];
                RadioButtonList1.SelectedValue = Request.Cookies["userInfo"]["BedType"];
                txtSpecialRequests.Text = Request.Cookies["userInfo"]["Requests"];
                txtFirstName.Text = Request.Cookies["userInfo"]["FName"];
                txtLastName.Text = Request.Cookies["userInfo"]["LName"];
                txtEmail.Text = Request.Cookies["userInfo"]["Email"];
                txtPhone.Text = Request.Cookies["userInfo"]["Number"];
                ddlPreferredMethod.SelectedValue = Request.Cookies["userInfo"]["PMethod"];
            }          
        }   
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        HttpCookie userCookie = new HttpCookie("userInfo");
        userCookie["Arrival"] = txtArrivalDate.Text;
        userCookie["Departure"] = txtDepartureDate.Text;
        userCookie["NumPeople"] = ddlNoOfPeople.SelectedValue;
        userCookie["BedType"] = RadioButtonList1.SelectedValue;
        userCookie["Requests"] = txtSpecialRequests.Text;
        userCookie["FName"] = txtFirstName.Text;
        userCookie["LName"] = txtLastName.Text;
        userCookie["Email"] = txtEmail.Text;
        userCookie["Number"] = txtPhone.Text;
        userCookie["PMethod"] = ddlPreferredMethod.SelectedValue;

        userCookie.Expires = DateTime.Now.AddMinutes(5);

        Response.Cookies.Add(userCookie);

        Response.Redirect("Request.aspx");
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtArrivalDate.Text = string.Empty;
        txtDepartureDate.Text = "";
        txtEmail.Text = "";
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtPhone.Text = "";
        txtSpecialRequests.Text = "";
        ddlNoOfPeople.SelectedIndex = 0;
        ddlPreferredMethod.SelectedIndex = 0;
        RadioButtonList1.ClearSelection();
    }

    protected void ddlPreferredMethod_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}