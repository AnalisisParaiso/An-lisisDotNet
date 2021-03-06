﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Salutem.Master" AutoEventWireup="true" CodeBehind="DeleteRecipeSpecialist.aspx.cs" Inherits="Salutem.Views.Specialist.Recipe.DeleteRecipeSpecialist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <br>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="col-md-offset-4">
            <div class="col-lg-8 borderRounded">
                <center>
                    <h3>Eliminar receta</h3>
                </center>
                <br>
                <form id="form1" runat="server">
                    <div class="form-group">
                        <asp:Label ID="lblNumCedula" runat="server" Text="Número de cédula de usuario"></asp:Label>
                        <asp:TextBox ID="txtNumCedula" ReadOnly="true"  runat="server" CssClass="form-control" placeholder="Número de cédula de usuario"></asp:TextBox>   
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblActualDate" runat="server" Text="Fecha actual"></asp:Label>
                        <asp:TextBox ID="txtActualDate" ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblActualHour" runat="server" Text="Hora actual"></asp:Label>
                        <asp:TextBox ID="txtActualHour" ReadOnly="true" runat="server" CssClass="form-control" placeholder="Hora"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Descripción actual"></asp:Label>
                        <asp:TextBox ID="txtActualDescription" ReadOnly="true" runat="server" CssClass="form-control" placeholder="Descripción actual"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblMensaje" runat="server" Text="Mensaje del sistema"></asp:Label>
                        <asp:TextBox ID="txtMensaje" ReadOnly="true" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                                
                    <!-- Se usa para evitar ataques de peticiones POST de sitios maliciosos-->
                    <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Eliminar" OnClick="btnDelete_Click"/>
                    <br>
                    <br>
                </form>
            </div>
        </div>
    </div>
    <br><br>
    </div>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="collapse navbar-collapse navbar-right">
        <ul class="nav navbar-nav">

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="badge custom-badge red pull-right"></span>Administrar cita <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Appointment/InsertAppointmentSpecialist.aspx") %>'> Agendar cita</a></li>
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Appointment/SearchAppointmentSpecialist.aspx") %>'> Cancelar cita</a></li> 
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Appointment/SearchAppointmentSpecialist.aspx") %>'> Actualizar cita</a></li>
                </ul>
            </li>

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="badge custom-badge red pull-right"></span>Administrar receta <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Recipe/InsertRecipeSpecialist.aspx") %>'> Generar receta</a></li>
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Recipe/SearchRecipeSpecialist.aspx") %>'> Cancela receta</a></li> 
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Recipe/SearchRecipeSpecialist.aspx") %>'> Actualizar receta</a></li>
                </ul>
            </li>

            <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Recipe/SearchRecipeSpecialist.aspx") %>'>Obtener receta</a></li>

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="badge custom-badge red pull-right"></span>Administrar diagnóstico <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Diagnosis/InsertDiagnosis.aspx") %>'> Generar diagnóstico</a></li>
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Diagnosis/SearchDiagnosis.aspx") %>'> Eliminar diagnóstico</a></li> 
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Diagnosis/SearchDiagnosis.aspx") %>'> Actualizar diagnóstico</a></li>
                </ul>
            </li>

            <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Diagnosis/SearchDiagnosis.aspx") %>'>Obtener diagnóstico</a></li>

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="badge custom-badge red pull-right"></span>Reportes <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Resports/ReportNumberUsersPerDay.aspx") %>'> Clientes atendidos por día</a></li>
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Resports/ScheduleReportWithTheMostvisits.aspx") %>'> Horario con mayor cantidad de visitas</a></li> 
                    <li><a href='<%=Page.ResolveUrl("~/Views/Specialist/Resports/ScheduleReportWithTheSmallestNumberOfVisits.aspx") %>'> Horario con menor cantidad de visitas</a></li>
                </ul>
            </li>
        </ul>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <a class="navbar-brand" href='<%=Page.ResolveUrl("~/DefaultSpecialist.aspx") %>'>Salutem</a>
</asp:Content>
