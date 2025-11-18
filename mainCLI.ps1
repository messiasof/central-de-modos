#########################################################################################
# Projeto MODO (Módulos Otimizados de Organização) by Emanuel Messias, 2025             #
# www.messias.me                                                                        #
#                                                                                       #
# Glossário no fim do código.                                                           #
#########################################################################################

# Cleanup de terminal por precaução e setup de variáveis utilitárias
Clear-Host
$Host.UI.RawUI.WindowTitle = "Projeto MODO (V1)"
$space = ""
$void = ""

$nnl = " "
$line = [char]::ConvertFromUtf32(0x2501)
$tip = [char]::ConvertFromUtf32(0x252b)
$tipextra = [char]::ConvertFromUtf32(0x258e)
$deco_longline = -join ($line*60)
$deco_shortline = -join ($line*10)
$deco_miniline = -join ($line*2+$tip+$tipextra)

$deco_miniline_custom1 = -join ($line*18+$line*10+$tip+$tipextra)

# Declaração de funções (o coração do programa)
function Clean{
    Clear-Host
}

function Intro {
    # Tela introdutória
    Write-Host $deco_longline -ForegroundColor Yellow
    Write-Host "         CENTRAL DE MODOS V1 by Emanuel Messias" -ForegroundColor Yellow
    Write-Host "                      www.messias.me" -ForegroundColor Yellow
    Write-Host $deco_longline -ForegroundColor Yellow
    Write-Host $space
    ###### Talvez colocar uma função pra centralizar com -join automaticamente invés de harcoded
}

function Menu {
    while ($true) {
    Intro

    # Menu inicial
    Write-Host $deco_shortline "LISTA DE MODOS" $deco_miniline -ForegroundColor Blue

    Write-Host " [1] " -BackgroundColor Blue -ForegroundColor Black -NoNewline
    Write-Host $nnl "Visual" -ForegroundColor Blue

    Write-Host " [2] " -BackgroundColor Blue -ForegroundColor Black -NoNewline
    Write-Host $nnl "Audio" -ForegroundColor Blue

    Write-Host " [3] " -BackgroundColor Blue -ForegroundColor Black -NoNewline
    Write-Host $nnl "Audiovisual" -ForegroundColor Blue

    Write-Host " [4] " -BackgroundColor Blue -ForegroundColor Black -NoNewline
    Write-Host $nnl "Desenvolvimento" -ForegroundColor Blue

    Write-Host " [r] " -BackgroundColor Blue -ForegroundColor Black -NoNewline
    Write-Host $nnl "Relaxamento" -ForegroundColor Blue

    Write-Host " [0] " -BackgroundColor Red -ForegroundColor Black -NoNewline
    Write-Host $nnl  "Sair" -ForegroundColor Red

    Write-Host $deco_miniline_custom1 -ForegroundColor Blue
    Write-Host $space

    Write-Host " [H] " -BackgroundColor White -ForegroundColor Black -NoNewline
    Write-Host $nnl  "Ajuda" -ForegroundColor White

    $void

    $opcao = Read-Host "Escolha um modo"
    
    if ($opcao -eq "1") {
        Clean
        ModoVisual
        break
        }
    elseif ($opcao -eq "r"){
        Clean
        ModoRelaxamento
        break
    }
    elseif ($opcao -eq "0"){
        Write-Host "Saindo..."
        Start-Sleep -Seconds 5
        exit
        }
    }
}

function ModoVisual {
    while ($true) {
        Write-Host "Tu ta no modo de artes visuais!"
        $opcao = Read-Host "Fala algo mano"
        if($opcao -eq "a") {
            exit
        }
        elseif ($opcao -eq "b") {
            Clean
            Menu
        }
        elseif ($opcao -eq "c") {
            Clean
            Start-Process '.\user\shortcuts\pencil2d.lnk' # Teste
            ModoVisual
        }
    }
}

function ModoRelaxamento {
    while ($true) {
        Write-Host "Tu ta no modo de artes relaxamento!"
        $opcao = Read-Host "Fala algo mano"
        if($opcao -eq "a") {
            exit
        }
        elseif ($opcao -eq "b") {
            Menu
        }
        elseif ($opcao -eq "c") {
            Start-Process '.\user\shortcuts\spotify.lnk' # Teste
            ModoRelaxamento
        }
    }
}

# Execução
Menu