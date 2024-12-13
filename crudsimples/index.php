<!DOCTYPE html>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    
    <title>Crud Simples</title>
    <?php
        //echo "<pre>";
       // print_r ( $_POST);
        //echo "</pre>";
        
        //if ($conexao){
       //     print_r("banco conectado");
       // }

       //conexao com o banco 
    $conexao = mysqli_connect('localhost', 'root', '', 'gerenciadordesenhas');
    //crear
       if ($_POST){
         $servico = $_POST ["servico"];
         $login = $_POST["login"];
         $senha = $_POST["senha"];
         mysqli_query($conexao, "INSERT INTO tb_info (LOGIN,SENHA,SERVICO ) VALUES ('$login', '$senha','$servico' )");
         unset($_POST);
         header('location: index.php');
       }
       //Read
       $resultado = mysqli_query($conexao,'SELECT * FROM tb_info');

       //delete
       if ($_GET && $_GET['acao'] = 'Excluir'){
        mysqli_query($conexao, 'DELETE FROM tb_info WHERE ID = '.$_GET['ID']);

       }
     ?>
</head>


<body>
    <div>
        <h1>Gerenciador de senhas</h1>
        <form method="post" action="index.php">
            <label>Serviço/Site <input type= "text" name="servico" required></label>
            <label>login/e-mail <input type= "text" name="login" required></label>
            <label> senha <input type= "text" name="senha" required></label>
            <button type= "submit">Cadastrar</button>
        </form>
    </div>
    <hr>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Servico</th>
                <th>Login/e-mail</th>
                <th>Senha</th>
                 <th>Status</th>
            </tr>
        </thead>
      
        <tbody>
            <?php
            while($dados = mysqli_fetch_assoc($resultado)){
                    echo "<tr>";
                        echo "<td>".$dados['ID']."</td>";
                        echo "<td>".$dados['servico']."</td>";
                        echo "<td> ".$dados['login']. "</td>";
                        echo "<td>".$dados['senha']."</td>";
                        echo "  <td>
                                    <button class='btn-edit'><a href='atualizar.php? acao=atualizar&
                                    id=".$dados['ID']."
                                    &servico=".$dados['servico']."
                                    &login=".$dados['login']."
                                    &senha=".$dados['senha']."
                                    '> Editar </a></button>  
                                    
                                    
                                    <button class='btn-delete'><a href='index.php? acao=excluir&id=".$dados['ID']."'>Excluir</a></button>
                                </td>";
                    echo "</tr>";
                }
            ?>
        </tbody>
    </table>
 
</body>
</html>