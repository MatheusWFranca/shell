# Define o diretório em que as pastas serão criadas
$dir = "C:\d\"

# Define o mês para o qual as pastas serão criadas
$mes = "05"  #mês desejado

# Define o ano para o qual as pastas serão criadas
$ano = "2023"  #Ano desejado

# Cria as pastas para cada dia útil
for ($dia = 1; $dia -le 31; $dia++) {
    $data = Get-Date -Year $ano -Month $mes -Day $dia
    if ($data.DayOfWeek -ne "Saturday" -and $data.DayOfWeek -ne "Sunday") {
        $path = Join-Path $dir "$dia-$mes-$ano"
        New-Item -ItemType Directory -Path $path
    }
}
