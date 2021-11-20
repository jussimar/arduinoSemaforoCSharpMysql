using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static MySqlConnection conexao;
        static MySqlCommand comando;
        static MySqlDataAdapter adaptador;
        static DataTable dataTabela;

        static void Main(string[] args)
        {
            SerialPort porta = new SerialPort();
            porta.PortName = "COM6";
            porta.BaudRate = 9600;
            porta.Open();
            Console.WriteLine("Conectado");
            conectar();
            String letra;
            do
            {
                Console.WriteLine("1 - Verde , 2 - Amarelo, 3 - Vermelho e X -  Sair");
                
                letra = Console.ReadLine();

                if(letra == "1")
                {
                    porta.Write("1");
                    cadastrar(DateTime.Now, "Verde");
                }

                if (letra == "2")
                {
                    porta.Write("2");
                    cadastrar(DateTime.Now, "Amarelo");
                }

                if (letra == "3")
                {
                    porta.Write("3");
                    cadastrar(DateTime.Now, "Vermelho");
                }

            } while ((letra != "X"));
            porta.Write("0");
            porta.Close();  
        }

        static void conectar()
        {
            //Estabelece os parâmetros para conexão com o BD
            conexao = new MySqlConnection("server=localhost; uid=root; database=arduino");

            conexao.Open();
        }

        static void cadastrar(DateTime data, string cor)
        {
            
            conectar();

            comando = new MySqlCommand("INSERT INTO semaforo (cd_registro, dt_registro, ds_cor) values(null, ?, ?)", conexao);
            comando.Parameters.Add("@dt_registro", MySqlDbType.DateTime).Value = data;
            comando.Parameters.Add("@ds_cor", MySqlDbType.String).Value = cor;

            comando.ExecuteNonQuery();

            
            conexao.Close();
        }
    }
}
