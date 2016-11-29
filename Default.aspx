<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Controles de validación</title>
    <link href="public/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="panel-primary">
            <div class="panel-heading">Trabajo con controles de validación</div>
            <div class="panel-body">

                <form runat="server" method="post"  id="form">
                    <p>
                        <asp:ValidationSummary runat="server" HeaderText="" DisplayMode="BulletList" CssClass="alert alert-danger" />
                    </p>

                    <p>
                        <asp:Label runat="server" >Nombre:</asp:Label>
                        <asp:TextBox ID="nombre" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="nombre" ErrorMessage="El campo nombre es requerido" Display="None"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label runat="server" >E-Mail:</asp:Label>
                        <asp:TextBox ID="correo" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="correo" ErrorMessage="El campo E-Mail es requerido" Display="None"></asp:RequiredFieldValidator>

                         <asp:RegularExpressionValidator ControlToValidate="correo" ErrorMessage="El E-Mail ingresado no es válido" Display="None" ValidationExpression="^[\w-]+@[\w-]+\.(com|net|org|edu|mil)$" runat="server">
              </asp:RegularExpressionValidator>

                    </p>

                    <p>
                        <asp:Label runat="server">País:</asp:Label>
                        <asp:DropDownList ID="pais" runat="server" CssClass="form-control">
                            <asp:ListItem Value="0">Seleccione.....</asp:ListItem>
                            <asp:ListItem Value="1">Chile</asp:ListItem>
                            <asp:ListItem Value="2">Canadá</asp:ListItem>
                            <asp:ListItem Value="3">España</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="pais" InitialValue="0" Display="None" ErrorMessage="Debe seleccionar una opción en el campo país"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label runat="server">Opción2:</asp:Label>
                        <asp:DropDownList ID="opcion2" runat="server" CssClass="form-control" ></asp:DropDownList>
                       
                        <asp:CustomValidator ControlToValidate="opcion2" ErrorMessage="Debe seleccionar una opción en el campo Opción 2"
                ClientValidationFunction="validaOpcion2" Display="None" runat="server"></asp:CustomValidator>
                    </p>
                    <p>
                        <asp:Label runat="server">Contraseña:</asp:Label>
                        <asp:TextBox ID="pass" TextMode="Password" runat="server" CssClass="form-control"  />
                       <asp:RequiredFieldValidator runat="server" ControlToValidate="pass" ErrorMessage="El campo contraseña es requerido" Display="None"></asp:RequiredFieldValidator> 
                    </p> 
                    <p>
                        <asp:Label runat="server">Repetir Contraseña:</asp:Label>
                        <asp:TextBox ID="pass2" TextMode="Password" runat="server" CssClass="form-control"  />
                       <asp:RequiredFieldValidator runat="server" ControlToValidate="pass2" ErrorMessage="El campo repetir contraseña es requerido" Display="None"></asp:RequiredFieldValidator> 
                        <asp:CompareValidator ControlToValidate="pass2" ControlToCompare="pass"
                ErrorMessage="Las contraseñas ingresadas no coinciden " Display="None"            runat="server"></asp:CompareValidator>
                    </p> 
                    <hr />
                    <asp:Button ID="enviar_form" runat="server" Text="Enviar" CssClass="btn btn-default" OnClick="ProcesarFormulario"/>

                </form>
                <hr />
                <ul>
                    <li><asp:Label ID="resultado_nombre" runat="server" /></li>
                </ul>

            </div>
        </div>
    </div>
     <script type="text/javascript">
        function validaOpcion2(source, arguments)
        {
            var valor = arguments.Value;
            //alert(valor);
            if (valor == "Seleccione.....")
            {
                arguments.IsValid = false;
                return;
            }else
            {
                arguments.IsValid = true;
                return;
            }
        }
    </script>
</body>
</html>
