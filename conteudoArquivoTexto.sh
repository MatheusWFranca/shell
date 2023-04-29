# Define o caminho do arquivo
$caminho_arquivo = "C:\d\02 - STATUS_PRT.txt"

# Lê o conteúdo do arquivo
$conteudo = Get-Content $caminho_arquivo


#retorna conteudo para dentro do power automate
return $conteudo 