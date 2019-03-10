using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;

namespace Ex._2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList arrlist = new ArrayList();
            Random random = new Random(2019);

            arrlist.Add(new classe
            {
                codigo = random.Next(),
                nome = "Joao"
            });
            arrlist.Add(new classe
            {
                codigo = random.Next(),
                nome = "Maria"
            });
            arrlist.Add(new classe
            {
                codigo = random.Next(),
                nome = "Carlos"
            });
            arrlist.Add(new classe
            {
                codigo = random.Next(),
                nome = "Joaquim"
            });
            arrlist.Add(new classe
            {
                codigo = random.Next(),
                nome = "Paula"
            });

            string str = "<table class=\"table table-hover table-striped JPO_open\" id=\"table\"><tr style=\"font-weight: bold\"><td>Nome</td><td>Codigo</td></tr>";

            var query = from classe dados in arrlist                       
                        orderby dados.nome ascending
                        select dados;
            foreach (classe cnj in query)
            {
                str = str + "<tr><td>" + cnj.nome + "</td><td>"+cnj.codigo+ "</td></tr>";
            }
            tbl.InnerHtml = str;
        }
    }
}