<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atualzar</title>
    <?php 
    print_r ( $_GET);

    //
    if ($_POST){

        $id= $_POST ["ID"];
        $servico = $_POST ["servico"];
        $login = $_POST["login"];
        $senha = $_POST["senha"];
    }
    //conexao
    require './conexao.php';
    $id= $_GET ["id"];
    $servico = $_GET ["servico"];
    $login = $_GET["login"];
    $senha = $_GET["senha"];

    ?>
</head>

<body>
    <h1>Atualização de senhas</h1>
    <br><hr><hr>
    <div>
        <form method="post" action="index.php">
                <label> ID <input type= "text" name="servico" value ="<?php echo $id; ?>" readonly></label>
                <label>Serviço/Site <input type= "text" name="servico" required></label>
                <label>login/e-mail <input type= "text" name="login" required></label>
                <label> senha <input type= "text" name="senha" required></label>
                <button type= "submit"> Atualizar </button>
            </form>
    </div>
</body>
</html>