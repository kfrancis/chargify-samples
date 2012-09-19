<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Chargify.WebForms._Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <!-- Main hero unit for a primary marketing message or call to action -->
    <div class="hero-unit">
        <h1>Hello, world!</h1>
        <p>This is a template for a simple marketing or informational website which integrates with Chargify to handle the creation of subscriptions.</p>
        <p><a class="btn btn-primary btn-large" runat="server" href="~/Pricing.aspx">Plans and Pricing &raquo;</a></p>
    </div>

    <!-- Example row of columns -->
    <div class="row">
        <div class="span4">
            <h2>Feature 1</h2>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>
            <p><a class="btn" runat="server" href="~/Pricing.aspx">View pricing &raquo;</a></p>
        </div>
        <div class="span4">
            <h2>Feature 2</h2>
            <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            <p><a class="btn" runat="server" href="~/Pricing.aspx">View pricing &raquo;</a></p>
        </div>
        <div class="span4">
            <h2>Feature 3</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn" runat="server" href="~/Pricing.aspx">View pricing &raquo;</a></p>
        </div>
    </div>
</asp:Content>
