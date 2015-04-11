<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>XMLCreator</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#num').keyup(function () {
                    $('#listatrib').empty();
                    var $num = $('#num').val();
                    for (i = 0; i < $num; i++) {
                        $("ul").append("<li><input type=\"text\"><input type=\"text\"></li>");
                    }
                });
                $('#btn').click(function () {
                    $('li').each(function () {
                        var $this = $(this);
                        var input = $("<input>")
                                .attr("type", "hidden")
                                .attr("name", $this.children("input")[0].value).val($this.children("input")[1].value);
                        $('#form').append($(input));
                    });
                });
            });</script>
    </head>
    <body>
        <div>
            <h1>XMLCreator</h1>
            <form id="form" method="POST" name="formn" action="CreatorServlet">
                <label>Nombre del archivo: <input type="text" name="archivo"></label> 
                <label>Elemento raíz: <input type="text" name="raiz"></label>
                <label>Numero de atributos: <input id="num" type="text" name="numatrib"></label>
                <label>Atributos: (nombre, valor)  <input id="btn" type="submit" value="Crear XML"></label>
                <ul id="listatrib">
                </ul>
            </form>
        </div>
    </body>
</html>
