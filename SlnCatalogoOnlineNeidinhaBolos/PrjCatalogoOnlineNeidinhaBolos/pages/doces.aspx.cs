using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;

namespace PrjCatalogoOnlineNeidinhaBolos.pages
{
    public partial class contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PrjCatalogoOnlineNeidinhaBolos.Properties.Settings.strC"].ToString());
            conexao.Open();

            string sql = "SELECT * FROM Produto where tipo = 'DOCE'";
            SqlCommand command = new SqlCommand(sql, conexao);

            using (SqlDataReader reader = command.ExecuteReader())
            {
                int i = 0;
                while (reader.Read())
                {
                    string nome = reader.GetString(1);
                    decimal preco = reader.GetDecimal(3);
                    string descricao = reader.GetString(2);
                    string caminhoImagem = "https://" + reader.GetString(4).Substring(30);

                    // Cria um novo elemento HTML para cada item do banco de dados 
                    HtmlGenericControl cardContainer = new HtmlGenericControl("div");
                    cardContainer.Attributes.Add("class", "card-container"); // Adiciona a classe CSS
                    // Adiciona os elementos filhos ao elemento divCard aqui 

                    HtmlGenericControl img = new HtmlGenericControl("img");
                    img.Attributes["src"] = caminhoImagem;
                    cardContainer.Controls.Add(img);

                    HtmlGenericControl h3 = new HtmlGenericControl("h3"); // Usa a tag correta para o título
                    h3.InnerText = nome;
                    cardContainer.Controls.Add(h3);

                    HtmlGenericControl p = new HtmlGenericControl("p"); // Usa a tag correta para o texto
                    p.InnerText = descricao;
                    cardContainer.Controls.Add(p);

                    HtmlGenericControl span = new HtmlGenericControl("span"); // Usa a tag correta para o preço
                    span.InnerText = "R$ " + preco.ToString("0.00");
                    cardContainer.Controls.Add(span);

                    // Adiciona o elemento divCard ao container 
                    formCardBolos.Controls.Add(cardContainer);

                    i++;
                }
            }

            // Adiciona o arquivo CSS externo
            LiteralControl css = new LiteralControl();
            css.Text = "<link rel='stylesheet' href='../css/style.css'>";
            Page.Header.Controls.Add(css);

            conexao.Close();

        }
    }
}