using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        ScriptManager.ScriptResourceMapping.AddDefinition
            (
                "jquery",new ScriptResourceDefinition
                {
                    Path = "~/public/js/jquery.js",
                    DebugPath = "~/public/js/jquery.js",
                    CdnSupportsSecureConnection = true,
                    LoadSuccessExpression = "window.jQuery"
                }
            );
        ArrayList arreglo = new ArrayList();
        arreglo.Add("Seleccione.....");
        arreglo.Add("Opción 1");
        arreglo.Add("Opción 2");
        arreglo.Add("Opción 3");
        arreglo.Add("Opción 4");
        opcion2.DataSource = arreglo;
        opcion2.DataBind();

    }
    public void ProcesarFormulario(object sender,EventArgs e)
    {
        if (IsValid)//si es verdadero que el formulario ha sido enviado vía POST
        {
            resultado_nombre.Text = nombre.Text;
        }
    }
}