<tr>
    <tr><td>Nome</td>
    <td>
        <input class="form-control" type="text" name="nome"
               value="<?=$produto->getNome() ?>">
    </td>
</tr>
<tr>
    <td>Preço</td>
    <td><input class="form-control" type="number" name="preco" step="0.01"
               value="<?=$produto->getPreco() ?>"></td>
</tr>
<tr>
    <td>Descrição</td>
    <td><textarea placeholder="Limite de 40 caracteres" class="form-control" name="descricao"><?=$produto->getDescricao() ?></textarea></td>
</tr>
<td>Categorias</td>
<td>
    <select name="categoria_id" class="form-control">
        <?php foreach ($categorias as $categoria):
            $selCategoria = $produto->getCategoria()->getId() == $categoria->getId();
            $selecao = $selCategoria ? "selected='selected'" : "";
            ?>
            <option value="<?=$categoria->getId() ?>" <?=$selecao?>>
                <?=$categoria->getNome()?></option>
        <?php endforeach; ?>
    </select>
</td>
</tr>
<tr>
    <td>Tipo do produto</td>
    <td>
        <select name="tipoProduto" class="form-control">
            <optgroup label="Livros">
                <?php 
                $tipos = array("Livro Fisico", "Ebook");
                foreach($tipos as $tipo) : 
                    $tipoSemEspaco = str_replace(' ', '', $tipo);
                    $esseEhOTipo = get_class($produto) == $tipoSemEspaco;
                    $selecaoTipo = $esseEhOTipo ? "selected='selected'" : "";
                ?>
                    <option value="<?=$tipoSemEspaco?>" <?=$selecaoTipo?>>
                        <?=$tipo?>
                    </option>
                <?php endforeach ?>
            </optgroup>
        </select>
    </td>
</tr>
    <td>ISBN</td>
    <td>
        <input type="text" name="isbn" placeholder="International Standard Book Number" class="form-control" 
                    value="<?php if ($produto->temIsbn()) { echo $produto->getIsbn(); }?>" >
    </td>
</tr>
 <td>Taxa de Impressão</td>
    <td>
        <input type="text" name="taxaImpressao" placeholder="Caso seja um Livro Físico" class="form-control" 
                    value="<?php if ($produto->temTaxaImpressao()) { echo $produto->getTaxaImpressao(); }?>" >
    </td>
</tr>
 <td>Water Mark</td>
    <td>
        <input type="text" name="waterMark" placeholder="Caso seja um eBook" class="form-control" 
                    value="<?php if ($produto->temWaterMark()) { echo $produto->getWaterMark(); }?>" >
    </td>
</tr>
<td><input type="checkbox" name="usado" <?=$produto->isUsado() ?> value="true">Usado</td>