﻿<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="TPC_Ortiz_Costa.Web_Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="input-group rounded" style="padding-top: 8rem; padding-left: 7rem; padding-right: 7rem;">
      <input type="search" class="form-control rounded w-75 mx-0 shadow-lg border-1 border-dark" placeholder=" Buscar Artículo" aria-label="Search" aria-describedby="search-addon" />
      <button id="search-button shadow-lg" type="button" class="btn btn-dark">
        <i class="fas fa-search"></i>
      </button>
    </div>


    <div class="row row-cols-1 row-cols-md-3 g-4 mx-5" style="margin-top: 3rem;">

        <% foreach (var Producto in ListaProductos)
           {
        %>
            <a href="VerDetalle.aspx?Id=<%: Producto.Id %>" style="text-decoration: none; color: inherit;">
            <div class="col">
                <div class="card h-100 border-1 border-dark shadow-lg">
                    <img class="card-img-top w-50 mx-auto" src="<%: Producto.ImgUrl %>">
                    <div class="card-body">
                        <h5 class="card-title text-center"><%: Producto.Nombre %></h5>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-between w-100 position-relative top-40-percent">
                            <div>
                                <small class="text-muted">Precio: $<%: decimal.Round(Producto.Precio) %></small><br>
                                <small class="text-muted">Stock: <%: Producto.Stock %></small>
                            </div>
                            <button class="btn btn-sm btn-outline-secondary">
                                <i class="fa fa-shopping-cart"></i> Agregar
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            </a>
        <%
           }
        %>
    </div>


    
    <div class="my-3" style="padding-top: 4rem !important;">
        <div class="card h-100 border-1 border-dark shadow-lg w-25 mx-auto">
            <div class="card-body">
                <h5 class="my-auto text-center">¡Envíanos un mensaje!</h5>
            </div>
        </div>
    </div>



    <div class="card w-75 shadow-lg mx-auto border-1 border-dark">
        <div class="card-body">
            <div class="container py-4">

                <form id="contactForm" data-sb-form-api-token="API_TOKEN">

                    <div class="mb-3">
                        <label class="form-label" for="name">Nombre</label>
                        <input class="form-control" id="name" type="text" placeholder="Nombre" data-sb-validations="required" />
                        <div class="invalid-feedback" data-sb-feedback="name:required">El nombre es requerido.</div>
                    </div>
               
                    <div class="mb-3">
                        <label class="form-label" for="emailAddress">Email</label>
                        <input class="form-control" id="emailAddress" type="email" placeholder="Email" data-sb-validations="required, email" />
                        <div class="invalid-feedback" data-sb-feedback="emailAddress:required">El Email es requerido.</div>
                        <div class="invalid-feedback" data-sb-feedback="emailAddress:email">El Email es invalido.</div>
                    </div>
            
                    <div class="mb-3">
                        <label class="form-label" for="message">Mensaje</label>
                        <textarea class="form-control" id="message" type="text" placeholder="Mensaje" style="height: 10rem;" data-sb-validations="required"></textarea>
                        <div class="invalid-feedback" data-sb-feedback="message:required">El mensaje es requerido.</div>
                    </div>

                    <div class="d-none" id="submitSuccessMessage">
                        <div class="text-center mb-3">Mensaje enviado correctamente.</div>
                    </div>

                    <div class="d-none" id="submitErrorMessage">
                        <div class="text-center text-danger mb-3">Error enviando mensaje.</div>
                    </div>

                    <div class="d-grid">
                        <button class="btn btn-dark mx-auto shadow-lg border-1 border-white" id="submitButton" type="submit" style="width:26% !important; border-radius: 40px;">Enviar</button>
                    </div>

                </form>
            </div>
        </div>
    </div>

<footer class="text-center text-lg-start text-muted" style="background-color: transparent !important; padding-top: 8rem !important;">
  <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom border-1 border-dark">

    <div class="me-5 d-none d-lg-block">
      <span><i>Contáctanos en nuestras Redes Sociales:</i></span>
    </div>

    <div>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-google"></i>
      </a>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-instagram"></i>
      </a>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-linkedin"></i>
      </a>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-github"></i>
      </a>
    </div>
  </section>
    
  <section>
    <div class="container text-center text-md-start mt-5">
      <div class="row mt-3">
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fas fa-gem me-3"></i>Ecommerce
          </h6>
          <p>
           Las mejores marcas de indumentaria y accesorios al alcance de la palma de tu mano.
          </p>
        </div>

        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4 mx-auto">
            Newsletter
          </h6>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Producto 1</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Producto 2</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Producto 3</a>
          </p>
        </div>

        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            Utilidades
          </h6>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Guía de Talles</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Guía de Compra</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">FAQ</a>
          </p>
        </div>

        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            Ubicación
          </h6>
          <p><i class="fas fa-home me-3"></i>Buenos Aires</p>
          <p><i class="fas fa-envelope me-3"></i>info@eCommerce.com</p>
        </div>
      </div>
    </div>
  </section>

</footer>
</asp:Content>
