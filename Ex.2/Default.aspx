<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex._2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/bootstrap.min.css" />     
    <title>Exercicio 2</title>

    <script type="text/javascript" src="Scripts/jquery-3.3.1.min.js"></script> 
    <script src="https://cdn.jsdelivr.net/gh/vast-engineering/jquery-popup-overlay@2/jquery.popupoverlay.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#table").filter(":not(:has(table, th))").click(function (e) {
                var $cell = $(e.target).closest("td");
                $('#msg').text($cell.text());
                $('#JPO').popup();
            });
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="page">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand">Exercício 2</a>
            </nav>
        </header>
        <main>
          <p></p>
            <div class="container col-md-offset-6">
              <div id="tbl" class="fill" runat="server">           

              </div>
          </div>
        </main>
        <footer></footer>
      </div>  
      <div id="JPO">
          <div class="card border-light" style="width: 8rem;">
              <div class="card-body">
                  <p id="msg" class="card-text"></p>             
              </div>
          </div>
      </div>    
    </form>
</body>
</html>
