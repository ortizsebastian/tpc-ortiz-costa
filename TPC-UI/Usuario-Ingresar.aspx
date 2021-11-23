﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuario-Ingresar.aspx.cs" Inherits="TPC_Ortiz_Costa.Usuario_Ingresar" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>
        function Validar() {
            var User = document.getElementById("<%: txtUsername.ClientID %>");
            var Pass = document.getElementById("<%: txtPassword.ClientID %>");
            var Flag = true;

            if (User.value === "" || User.value === null) {

                User.classList.remove("is-valid");
                User.classList.add("is-invalid");        
                Flag = false;
            }
            else {
                User.classList.remove("is-invalid");
                User.classList.add("is-valid");
                Flag = true;
            }
            if (Pass.value === "" || Pass.value === null) {

                Pass.classList.remove("is-valid");
                Pass.classList.add("is-invalid");
                Flag = false;
            }
            else {
                Pass.classList.remove("is-invalid");
                Pass.classList.add("is-valid");
                Flag = true;
            }
            return Flag;
        }
    </script>


    <div style="display: flex; justify-content: center; padding-bottom: 4rem !important; padding-top: 7rem !important;">
        <div class="card w-50 shadow-lg border-1 border-dark">
            <div class="card-body">

                <div class="container mt-5">
                    <div class="col">
                        <div class="mb-3">
                        </div>

                            <div class="mb-3 needs-validation">
                                <label for="validationServer01">Usuario</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtUsername" placeholder="Usuario" ClientIDMode="Static" />                               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txtUsername"
                                    ErrorMessage="* Obligatorio."
                                    ForeColor="Red" 
                                    Font-Italic="true" 
                                    Font-Size="XX-Small">
                                </asp:RequiredFieldValidator>
                            </div>

                            <div class="mb-3 needs-validation">
                                <label for="validationServer02">Contraseña</label>
                                <asp:TextBox runat="server" CssClass="form-control" type="password" ID="txtPassword" placeholder="Contraseña" ClientIDMode="Static" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="txtPassword"
                                    ErrorMessage="* Obligatorio."
                                    ForeColor="Red" 
                                    Font-Italic="true" 
                                    Font-Size="XX-Small">
                                </asp:RequiredFieldValidator>
                            </div>

                            <label class="mb-3">
                                <input type="checkbox" name="RememberMe">
                                Recordarme
                            </label>

                            <div class="mb-3">
                                <asp:Button Text="Conectar" OnClientClick="return Validar();" CssClass="btn btn-dark shadow-lg" runat="server" ID="btnConectar" OnClick="btnConectar_Click" />
                                <a class="btn btn-dark shadow-lg" href="Catalogo.aspx">Volver</a>
                            </div>

                            <hr>
                            <p class="mb-0">¿Eres nuevo? <a href="Usuario-Registrar.aspx" style="text-decoration: none; color: blue;">Crear cuenta</a></p>
                            <p class="mb-0">¿Olvidaste tu contraseña? <a href="Usuario-Restablecer.aspx" style="text-decoration: none; color: blue;">Recuperar contraseña</a></p>
   
                        </div>
                    </div>
                </div>
            </div>
        </div>



</asp:Content>
