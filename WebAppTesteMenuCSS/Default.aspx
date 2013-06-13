<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppTesteMenuCSS.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.10.1.js"></script>
    <style type="text/css">
        ul.topnav {
            position: relative;
            margin: 0px;
            padding: 0px;
        }

            ul.topnav li {
                display: inline-block;
                padding: 10px 20px 10px 20px;
                border: 1px solid #000;
                margin: 0px;
                background-color: #fff;
            }

                ul.topnav li a {
                    font-family: Calibri, sans-serif;
                    font-size: 16px;
                    text-decoration: none;
                    font-weight: bold;
                }

                ul.topnav li ul {
                    margin: 0px;
                    padding: 0px;
                    top: 30px;
                    position: absolute;
                    display: none;
                }

                    ul.topnav li ul li {
                        display: block;
                        margin-top: 2px;
                        padding: 10px 20px 10px 20px;
                        border: 1px solid #000;
                        background-color: #fff;
                    }
    </style>
</head>
<body>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".item").mouseenter(function () {
                var item = $("ul", this);
                $("ul", ".item").each(function (i, v) {
                    $(v).stop().hide();
                });
                item.stop().show();
            });
            $(".topnav").mouseleave(function () {
                $("ul", ".item").stop().hide();
            });
        });

        function SelecionarCategoria(numero) {
            alert(numero);
            return false;
        }
    </script>
    <form id="form1" runat="server">
        <div>
            <ul class="topnav">
                <li class="item"><a href="#" onclick="return SelecionarCategoria(1);">Cozinhas</a>
                    <ul>
                        <li><a href="#">Lavanderia</a></li>
                    </ul>
                </li>
                <li class="item"><a href="#">Domitórios</a>
                    <ul>
                        <li><a href="#" onclick="return SelecionarCategoria(2);">Casal</a></li>
                        <li><a href="#" onclick="return SelecionarCategoria(3);">Solteiro</a></li>
                        <li><a href="#" onclick="return SelecionarCategoria(4);">Infantil</a></li>
                        <li><a href="#" onclick="return SelecionarCategoria(5);">Closet</a></li>
                        <li><a href="#" onclick="return SelecionarCategoria(6);">Colchões</a></li>
                    </ul>
                </li>
                <li class="item"><a href="#">Salas</a>
                    <ul>
                        <li><a href="#">Sala de Estar</a></li>
                        <li><a href="#">Sala de Jantar</a></li>
                        <li><a href="#">Estofados</a></li>
                        <li><a href="#">Poltronas</a></li>
                    </ul>
                </li>
                <li class="item"><a href="#">Home Office</a></li>
                <li class="item"><a href="#">Banheiros</a></li>
                <li class="item"><a href="#">Rústico</a></li>
                <li class="item"><a href="#">Decoração</a></li>
            </ul>
        </div>
    </form>
</body>
</html>
