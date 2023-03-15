using PrjNeidinha.Procedimentos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PrjNeidinha.Classes;
using System.Drawing.Imaging;
using System.Net;
using System.Windows.Forms;

namespace PrjNeidinha.Classes
{
    public class Produtos
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public double Preco { get; set; }
        public string Descricao { get; set; }
        public string Caminho { get; set; }        
        public string Status { get; set; }



        public string cadastrarProduto(Produtos produtos)
        {           
            return produtosProce.procCadastrarProduto(produtos);                
        }
        public string editarProduto(Produtos produtos)
        {
            return produtosProce.editar(produtos);
        }
        //public string editarSomenteFoto(Produtos produtos)
        //{
        //    return produtosProce.editarFoto(produtos);
        //}

        public DataTable buscaProdutos(Produtos produtos)
        {
           return produtosProce.buscaGrid(produtos);
        }

        public DataTable buscastatusGenerico(Produtos produtos)
        {
            return produtosProce.buscaGridStatus(produtos);
        }

        public DataTable buscasPeloId(Produtos produtos)
        {
            return produtosProce.buscaGridId(produtos);
        }

        public DataTable buscaGridNomeInativo(Produtos produtos)
        {
            return produtosProce.buscaGridStatusInativo(produtos);
        }

        public DataTable buscaGridNomeAtivo(Produtos produtos)
        {
            return produtosProce.buscaGridStatusAtivo(produtos);
        }

        public string excluir(Produtos produtos)
        {
            return produtosProce.excluirProc(produtos);
        }
    }
}
