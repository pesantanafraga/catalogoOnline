using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PrjNeidinha.Classes;
using System.Configuration;

namespace PrjNeidinha.Procedimentos
{
    public class produtosProce
    {
        public static DataTable buscaGrid(Produtos produtos)
        {
            SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PrjCatalogoOnlineNeidinhaBolos.Properties.Settings.strC"].ToString());

            var cmd = new SqlCommand();
            cmd.Connection = conexao;
            cmd.CommandText = "gridBuscar";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("nome", "");

            SqlDataAdapter adaptacao = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adaptacao.Fill(dt);
            return dt;
        }

        public static DataTable buscaGridStatus(Produtos produtos)
        {
            SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PrjCatalogoOnlineNeidinhaBolos.Properties.Settings.strC"].ToString());

            var cmd = new SqlCommand();
            cmd.Connection = conexao;
            cmd.CommandText = "gridstatus";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("status", produtos.Status);

            SqlDataAdapter adaptacao = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adaptacao.Fill(dt);
            return dt;
        }
        public static DataTable buscaGridId(Produtos produtos)
        {
            SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PrjCatalogoOnlineNeidinhaBolos.Properties.Settings.strC"].ToString());

            var cmd = new SqlCommand();
            cmd.Connection = conexao;
            cmd.CommandText = "gridBuscaID";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("id", produtos.Id);

            SqlDataAdapter adaptacao = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adaptacao.Fill(dt);
            return dt;
        }

        public static DataTable buscaGridStatusInativo(Produtos produtos)
        {
            SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PrjCatalogoOnlineNeidinhaBolos.Properties.Settings.strC"].ToString());

            var cmd = new SqlCommand();
            cmd.Connection = conexao;
            cmd.CommandText = "gridBuscaNomeInativo";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("nome", produtos.Nome);

            SqlDataAdapter adaptacao = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adaptacao.Fill(dt);
            return dt;
        }

        public static DataTable buscaGridStatusAtivo(Produtos produtos)
        {
            SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PrjCatalogoOnlineNeidinhaBolos.Properties.Settings.strC"].ToString());

            var cmd = new SqlCommand();
            cmd.Connection = conexao;
            cmd.CommandText = "gridBuscaNomeAtivo";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("nome", produtos.Nome);

            SqlDataAdapter adaptacao = new SqlDataAdapter(cmd); // recuperando dados
            DataTable dt = new DataTable(); // instanciando o objeto tipo table
            adaptacao.Fill(dt); // transformando os dados em objeto tipo table 
            return dt;
        }

        public static string editar(Produtos produtos)
        {
            SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PrjCatalogoOnlineNeidinhaBolos.Properties.Settings.strC"].ToString());

            var cmd = new SqlCommand();
            cmd.CommandText = "atualizarDadosProduto";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexao;
            cmd.Parameters.AddWithValue("@idProduto", produtos.Id);
            cmd.Parameters.AddWithValue("@nome", produtos.Nome);
            cmd.Parameters.AddWithValue("@preco", produtos.Preco);
            cmd.Parameters.AddWithValue("@descricao", produtos.Descricao);
            cmd.Parameters.AddWithValue("@status", produtos.Status);
            cmd.Parameters.AddWithValue("@caminho", produtos.Caminho);
            conexao.Open();
            cmd.ExecuteNonQuery();
            conexao.Close();

            return "Produto atualizado";
        }

        public static string excluirProc(Produtos produtos)
        {
            SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PrjCatalogoOnlineNeidinhaBolos.Properties.Settings.strC"].ToString());

            var cmd = new SqlCommand();
            cmd.CommandText = "exluirProduto";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexao;
            cmd.Parameters.AddWithValue("@idProduto", produtos.Id);
            
            conexao.Open();
            cmd.ExecuteNonQuery();
            conexao.Close();

            return "Produto excluido";
        }

        //public static string editarFoto(Produtos produtos)
        //{
        //    byte[] foto = produtos.GetFoto(produtos.CaminhoFoto);

        //    SqlConnection conexao = new SqlConnection(Program.strCon);

        //    var cmd = new SqlCommand();
        //    cmd.CommandText = "atualizarFoto";
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Connection = conexao;
        //    cmd.Parameters.AddWithValue("@idProduto", produtos.Id);
        //    cmd.Parameters.Add("@foto", System.Data.SqlDbType.Image, foto.Length).Value = foto;

        //    conexao.Open();
        //    cmd.ExecuteNonQuery();
        //    conexao.Close();
        //    return "imagens atualizada";
        //}

        public static string procCadastrarProduto(Produtos produtos)
        {
            SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings["PrjCatalogoOnlineNeidinhaBolos.Properties.Settings.strC"].ToString());

            var cmd = new SqlCommand();
            cmd.CommandText = "piProdutos";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexao;
            cmd.Parameters.AddWithValue("@idProduto", produtos.Id);
            cmd.Parameters.AddWithValue("@nome", produtos.Nome);
            cmd.Parameters.AddWithValue("@preco", produtos.Preco);
            cmd.Parameters.AddWithValue("@descricao", produtos.Descricao);
            cmd.Parameters.AddWithValue("@caminho", produtos.Caminho);
            cmd.Parameters.AddWithValue("@status", produtos.Status);

            conexao.Open();
             cmd.ExecuteNonQuery();
            conexao.Close();

            return "Cadastrado";
        }

    }
}
