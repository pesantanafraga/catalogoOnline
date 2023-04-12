using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace PrjCatalogoOnlineNeidinhaBolos
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PrjCatalogoOnlineNeidinhaBolos.Properties.Settings.strC"].ToString());

            var cmd = new SqlCommand();
            cmd.CommandText = "ps_destaque";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexao;
            conexao.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                //string nome = reader.GetString(2);
                //decimal preco = reader.GetDecimal(4);
                //string descricao = reader.GetString(3);
                string caminhoImagem = "https://" + reader.GetString(7).Substring(30);




                HtmlGenericControl cardContainer = new HtmlGenericControl("div");
                cardContainer.Attributes.Add("class", "mySlides fade");
                HtmlGenericControl img = new HtmlGenericControl("img");
                img.Attributes["src"] = caminhoImagem;
                cardContainer.Controls.Add(img);
                //HtmlGenericControl h3 = new HtmlGenericControl("h3"); // Usa a tag correta para o título

                //h3.InnerText = nome;
                //cardContainer.Controls.Add(h3);
                //HtmlGenericControl p = new HtmlGenericControl("p"); // Usa a tag correta para o texto
                //p.InnerText = descricao;
                //cardContainer.Controls.Add(p);
                //HtmlGenericControl span = new HtmlGenericControl("span");
                //span.InnerText = "R$ " + preco.ToString("0.00");
                /*cardContainer.Controls.Add(span);    */                 // Adiciona o elemento divCard ao container 
                divDestaque.Controls.Add(cardContainer);

            }
            cmd.Connection.Close();
        } 
    }
}