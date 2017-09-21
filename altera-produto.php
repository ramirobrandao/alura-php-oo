<?php
require_once("cabecalho.php");
require_once("class/Produto.php");
require_once("class/Categoria.php");

$tipoProduto = $_POST['tipoProduto'];
$produto_id = $_POST['id'];
$categoria_id = $_POST['categoria_id'];

$factory = new ProdutoFactory();
$produto = $factory->criaPor($tipoProduto, $_POST);
$produto->atualizaBaseadoEm($_POST);

$produto->setId($produto_id);
$produto->getCategoria()->setId($categoria_id);

if(array_key_exists('usado', $_POST)) {
    $produto->setUsado("true");
} else {
    $produto->setUsado("false");
}

$produto->setId($_POST['id']);

$produtoDao = new ProdutoDao($conexao);

if($produtoDao->alteraProduto($produto)): ?>
    <h3><p class="text-success">Produto <?= $produto->getNome() ?>, de valor: R$ <?= $produto->getPreco() ?> alterado com sucesso!</p></h3> <?php
else:
    $error = mysqli_error($conexao); ?>
    <p class="text-danger">Produto não alterado: <?= $error;?> </p>
    <?php
endif
?>


<?php require_once("rodape.php"); ?>