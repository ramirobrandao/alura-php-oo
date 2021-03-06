<?php
require_once("cabecalho.php");
require_once("logica-usuario.php");
	verificaUsuario();

$produtoDao = new ProdutoDao($conexao);
$categoriaDao = new CategoriaDao($conexao);

$id = $_GET['id'];
$produto = $produtoDao->buscaProduto($id);
$categorias = $categoriaDao->listaCategorias();

$usado = $produto->isUsado() ? "checked='checked'" : "";
$produto->setUsado($usado);

?>
    <h1>Alterando Produto</h1>

    <form action="altera-produto.php" method="post">
        <input type="hidden" name="id" value="<?=$produto->getId()?>">
        <table class="table">
            <?php require_once("produto-formulario-base.php") ?>
            <tr>
                <td><button class="btn btn-primary" type="submit">Alterar</td>
            </tr>
        </table>
    </form>

<?php require_once("rodape.php"); ?>