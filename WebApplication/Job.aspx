<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="WebApplication.Job1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="cta"></p>

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
            <h2>Job Opportunities</h2>
            <p>Apply for available job post. </p>
        </div>

        <div class="form-group">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt" ErrorMessage="Name of Production House"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtProdHouse" runat="server"  placeholder="Production House" CssClass="form-control rounded input-lg text-center no-border" Width="948px"></asp:TextBox>
                 
        </div>

          <div class="form-group">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt" ErrorMessage="Type of show"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtShow" runat="server"  placeholder="Type of Show" CssClass="form-control rounded input-lg text-center no-border" Width="948px"></asp:TextBox>                
          </div>

          <div class="form-group"> 
             <asp:RequiredFieldValidator ID="Description" runat="server" ControlToValidate="txtDescription" ErrorMessage="Role description"></asp:RequiredFieldValidator>
             <asp:TextBox ID="txtDescription" runat="server" placeholder="Description" CssClass="form-control rounded input-lg text-center no-border" Height="409px" Width="949px"></asp:TextBox>
          </div>

                  <div class="form-group"> 
                 <asp:TextBox ID="txtPrice" runat="server" placeholder="Song Price" CssClass="form-control rounded input-lg text-center no-border"></asp:TextBox>
                 </div>

                 <div class="form-group"> 
                 <asp:FileUpload ID="FileUpload1" runat="server" />
                 <label> Production house logo</label>
                 </div>

                 <asp:Button CssClass="btn btn-lg btn-warning lt b-white b-2x btn-block btn-rounded" type="submit" name="action" ID="btnUpload" runat="server" Text="Create job application" OnClick="btnUpload_Click" Width="955px" />
                     <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
      
         </div>
    </section><!-- End Portfolio Section -->

</asp:Content>
