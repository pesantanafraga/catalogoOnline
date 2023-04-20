using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.Services;
using System.Data;

namespace PrjCatalogoOnlineNeidinhaBolos.pages
{
    public partial class bolos : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        // Adiciona o arquivo CSS externo
        //        LiteralControl css = new LiteralControl();
        //        css.Text = "<link rel='stylesheet' href='../css/style.css'>";
        //        Page.Header.Controls.Add(css);
        //    }
        //}

        //[WebMethod]
        //public static string CarregarProdutos(string buscaProduto) // recebe uma string de bolo
        //{
        //    string html = "";
        //    SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PrjCatalogoOnlineNeidinhaBolos.Properties.Settings.strC"].ToString());

        //    var cmd = new SqlCommand();
        //    cmd.CommandText = "buscaDados";
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Connection = conexao;
        //    cmd.Parameters.AddWithValue("@nome", buscaProduto);
        //    SqlDataReader reader;

        //    conexao.Open();
        //    //string sql = "SELECT * FROM Produto WHERE tipo='BOLO'"; // troca pela procedure
        //    //SqlCommand command = new SqlCommand(sql, conexao);
        //    reader = cmd.ExecuteReader();
        //    int contador = 0;
        //    while (reader.Read())
        //    {
        //        string nome = reader.GetString(2);
        //        decimal preco = reader.GetDecimal(4);
        //        string descricao = reader.GetString(3);
        //        string caminhoImagem = "https://" + reader.GetString(7).Substring(30);

        //        html += "<div class='card-container'>";
        //        html += "<img src='" + caminhoImagem + "' />";
        //        html += "<h3>" + nome + "</h3>";
        //        html += "<p>" + descricao + "</p>";
        //        html += "<span>R$ " + preco.ToString("0.00") + "</span>";
        //        html += "</div>";
        //        contador++;
        //    }
        //    if (contador < 1)
        //    {
        //        html += "<h2>" + "Produto não encontrado!" + "</h2>";
        //    }
        //    conexao.Close();
        //    return html;
        //}



    }
}