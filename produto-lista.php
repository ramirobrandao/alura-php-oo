<?php require_once("cabecalho.php");
	  require_once("logica-usuario.php");	
	  require_once("class/Produto.php");
	  require_once("class/Categoria.php");
	  verificaUsuario();
?>

<table class="table table-hover table-bordered">
	<thead>
      <tr>
        <th>Nome</th>
        <th>Preço</th>
		<th>Imposto</th>
		<th>Descrição</th>
		<th>Categoria</th>
		<th>ISBN</th>
		<th>Alterar</th>
		<th>Remover</th>
      </tr>
    </thead>
    <?php
        $produtoDao = new ProdutoDao($conexao);
		$produtos = $produtoDao->listaProdutos();
        foreach($produtos as $produto) :
    ?>
	<tr>
        <td><?= $produto->getNome(); ?></td>
        <td><?= $produto->getPreco(); ?></td>
		<td><?= $produto->calculaImposto();?></td>
		<td><?= substr($produto->getDescricao(), 0, 40); ?></td>
        <td><?= $produto->getCategoria()->getNome() ?></td>
		<td>
			<?php 
			     if($produto->temIsbn()) {
					 echo $produto->getIsbn();
				 } 
			?> </td>	
			
        <td><a class="btn btn-primary" href="produto-altera-formulario.php?id=<?=$produto->getId() ?>">alterar</a></td>
        <td>	
            <form action="remove-produto.php" method="post">
                <input type="hidden" name="id" value="<?=$produto->getId()?>" />
                <button class="btn btn-danger">remover</button>
            </form>
        </td>
    </tr>
    <?php
        endforeach
    ?>
</table>

<?php require_once("rodape.php"); ?>