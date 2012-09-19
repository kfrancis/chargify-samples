<%@ Page Title="Plans and Pricing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pricing.aspx.cs" Inherits="Chargify.WebForms.Pricing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="stylesheet" href="<%: ResolveUrl("~/Content/font-awesome.css") %>" />
    <!--[if IE 7]>
			<link rel="stylesheet" href="<%: ResolveUrl("~/Content/font-awesome-ie7.css") %>" />
		<![endif]-->
    <link rel="stylesheet" href="<%: ResolveUrl("~/Content/pt-sans.css") %>" />
    <link rel="stylesheet" href="<%: ResolveUrl("~/Content/pricing-global.min.css") %>" />
    <link rel="stylesheet" href="<%: ResolveUrl("~/Content/style.css") %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="span3">
            <p>
                You can subscribe to any one of these plans in two different ways. You can subscribe:
            </p>
            <ul>
                <li>Local - use API from this site</li>
                <li>Remote - use the hosted page</li>
                <li>Transparent - use Chargify Direct</li>
            </ul>
            <p>If you choose to signup locally, then you will be directed to a page that will ask for both account and billing information in a single form. After completing, you will be redirected to a 'result' page that will either be successful or not successful.</p>
            <p>If you choose to signup remotely, via the Chargify hosted sign up page - you will be asked for some information about your new account (such as login information) before being redirected to the hosted signup page. Once you complete the form on the hosted signup page, you will be redirected back to this site to the 'result' page that will either show you that the subscription was successful or not successful.</p>
        </div>
        <div class="span9">
            &nbsp;
            <div class="row pricing-black">
                <div class="span3 pricing-table animate add-shadow">
                    <ul>
                        <li class="pricing-header-row-1">
                            <div class="package-title">
                                <h2 class="no-bold">Basic</h2>
                            </div>
                        </li>
                        <li class="pricing-header-row-2">
                            <div class="package-price">
                                <h1 class="no-bold">$5<span class="cents">.00 /mo</span></h1>
                            </div>
                        </li>
                        <li class="pricing-content-row-odd acc" data-toggle="collapse" data-target="#acc-1">1 GB Diskspace
							<span style="float: right"><i class="icon-plus"></i></span>
                        </li>
                        <li id="acc-1" class="accordion-body collapse">
                            <span class="acc-inner">Lorem ipsum dolor sit amet, consectetur adipisicing elit
                            </span>
                        </li>
                        <li class="pricing-content-row-even">10 GB Bandwidth
                        </li>
                        <li class="pricing-content-row-odd">1 Domain
                        </li>
                        <li class="pricing-content-row-even">3 Subdomain
                        </li>
                        <li class="pricing-content-row-odd">5 Email
                        </li>
                        <li class="pricing-content-row-even">$30 Setup Fee
                        </li>
                        <li class="pricing-footer">
                            <ul>
                                <li class="dropdown">
                                    <a href="#" class="btn" data-toggle="dropdown"><i class="icon-shopping-cart"></i>Sign Up<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                      <li><a runat="server" href="~/SubscribeLocal.aspx">Local</a></li>
                                      <li><a href="#">Hosted Page</a></li>
                                      <li><a href="#">Chargify Direct</a></li>
                                    </ul>
                              </li>
                            </ul>
                            <%--<button class="btn"><i class="icon-shopping-cart"></i>Sign Up</button>--%>
                        </li>
                    </ul>
                </div>
                <div class="span3 pricing-table animate add-shadow">
                    <ul>
                        <li class="pricing-header-row-1">
                            <div class="package-title">
                                <h2 class="no-bold">Standard</h2>
                            </div>
                        </li>
                        <li class="pricing-header-row-2">
                            <div class="package-price">
                                <h1 class="no-bold">$10<span class="cents">.00 /mo</span></h1>
                            </div>
                        </li>
                        <li class="pricing-content-row-odd acc" data-toggle="collapse" data-target="#acc-2">10 GB Diskspace
							<span style="float: right"><i class="icon-plus"></i></span>
                        </li>
                        <li id="acc-2" class="accordion-body collapse">
                            <span class="acc-inner">Lorem ipsum dolor sit amet, consectetur adipisicing elit
                            </span>
                        </li>
                        <li class="pricing-content-row-even">100 GB Bandwidth
                        </li>
                        <li class="pricing-content-row-odd">5 Domain
                        </li>
                        <li class="pricing-content-row-even">25 Subdomain
                        </li>
                        <li class="pricing-content-row-odd">100 Email
                        </li>
                        <li class="pricing-content-row-even">FREE Setup
                        </li>
                        <li class="pricing-footer">
                            <button class="btn"><i class="icon-shopping-cart"></i>Sign Up</button>
                        </li>
                    </ul>
                </div>
                <div class="span3 pricing-table animate add-shadow">
                    <ul>
                        <li class="pricing-header-row-1">
                            <div class="package-title">
                                <h2 class="no-bold">Premium</h2>
                            </div>
                        </li>
                        <li class="pricing-header-row-2">
                            <div class="package-price">
                                <h1 class="no-bold">$20<span class="cents">.00 /mo</span></h1>
                            </div>
                        </li>
                        <li class="pricing-content-row-odd">Diskspace
							<span style="float: right">50 GB</span>
                        </li>
                        <li class="pricing-content-row-even">Bandwidth
							<span style="float: right">1000 GB</span>
                        </li>
                        <li class="pricing-content-row-odd">Domain
							<span style="float: right">25</span>
                        </li>
                        <li class="pricing-content-row-even">Subdomain
							<span style="float: right">250</span>
                        </li>
                        <li class="pricing-content-row-odd">Email
							<span style="float: right">1000</span>
                        </li>
                        <li class="pricing-content-row-even">FREE Setup
							<span style="float: right">YES</span>
                        </li>
                        <li class="pricing-footer">
                            <button class="btn"><i class="icon-shopping-cart"></i>Sign Up</button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
