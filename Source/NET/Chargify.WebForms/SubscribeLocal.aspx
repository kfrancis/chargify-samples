<%@ Page Title="Subscribe via API" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SubscribeLocal.aspx.cs" Inherits="Chargify.WebForms.SubscribeLocal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="span3">
            <p>On this page, the user is required to complete the form which allows the system to both create a user, and create a corresponding customer in the associated Chargify account.</p>
        <p>When the user clicks on the 'Place My Order' button, the system will create an ASP.NET membership user first, then create the Chargify customer second.</p>
        <p><i>You can simulate a non-working credit card by using '2' as the number instead of the default '1' ...</i></p>
        </div>
        <div class="span9">
            &nbsp;
            <fieldset>
                <legend>User</legend>
                <div class="control-group">
                    <label class="control-label" for="inputCardNumber">Username</label>
                    <div class="controls">
                        <input type="text" id="inputCardNumber" placeholder="Card Number">
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Payment Information</legend>
                <div class="control-group">
                    <label class="control-label" for="inputCardNumber">Card Number</label>
                    <div class="controls">
                        <input type="text" id="inputCardNumber" placeholder="Card Number">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputCVV">CVV</label>
                    <div class="controls">
                        <input type="text" id="inputCVV" class="input-mini" placeholder="CVV">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputExpMonth">Exp. Month</label>
                    <div class="controls">
                        <input type="text" id="inputExpMonth" placeholder="Month">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputExpYear">Exp. Year</label>
                    <div class="controls">
                        <input type="text" id="inputExpYear" placeholder="Year">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputFirstName">First Name</label>
                    <div class="controls">
                        <input type="text" id="inputFirstName" placeholder="First Name">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputLastName">Last Name</label>
                    <div class="controls">
                        <input type="text" id="inputLastName" placeholder="Last Name">
                    </div>
                </div>
            </fieldset>
            <asp:Panel runat="server">
                <fieldset>
                    <legend>Personal Information</legend>
                    <div class="control-group">
                        <label class="control-label" for="inputEmailAddress">Email Address</label>
                        <div class="controls">
                            <input type="text" id="inputEmailAddress" placeholder="Email Address">
                        </div>
                    </div>
                </fieldset>
            </asp:Panel>
        </div>
    </div>

</asp:Content>
