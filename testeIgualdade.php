<?php
    require ("class/Produto.php");
	require ("class/Categoria.php");

	$categoria = new Categoria("escolar");
	
	$produto = new Produto("Livro da Casa do Codigo", 59.9, null, $categoria, null);
 
	$outroProduto = new Produto("Livro da Casa do Codigo", 59.9, null, $categoria, null);

    if ($produto == $outroProduto) {
        echo "São Iguais!";
    } else {
        echo "São diferentes!";
    }
?>

