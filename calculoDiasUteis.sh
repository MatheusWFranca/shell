# Obter o primeiro dia do mês atual
$primeiro_dia = Get-Date -Day 1

# Obter o último dia do mês atual
$ultimo_dia = Get-Date -Day (Get-Date -Day 1 -Month (Get-Date).Month -Year (Get-Date).Year).AddMonths(1).AddDays(-1).Day

# Iterar sobre cada dia do mês e verificar se é um dia útil
$dias_uteis = @()
for ($dia = $primeiro_dia; $dia -le $ultimo_dia; $dia = $dia.AddDays(1)) {
    # Se o dia não for sábado nem domingo, adicioná-lo à lista de dias úteis
    if ($dia.DayOfWeek -ne "Saturday" -and $dia.DayOfWeek -ne "Sunday") {
        $dias_uteis += $dia.ToString("ddMMyyyy")
    }
}

# Retornar a lista de dias úteis
return $dias_uteis
