# Sincroniza la configuracion de IA desde la fuente de verdad (.ai/CONTEXTO_IA.md)
# hacia los archivos que cada asistente carga automaticamente.
#
# Uso:  pwsh .\.ai\sincronizar.ps1   (o)   powershell -File .\.ai\sincronizar.ps1
# Ejecutar desde la raiz del proyecto. No edites los archivos generados a mano.

$ErrorActionPreference = 'Stop'

# Raiz del proyecto = carpeta padre de este script (.ai)
$root   = Split-Path -Parent $PSScriptRoot
$source = Join-Path $PSScriptRoot 'CONTEXTO_IA.md'

if (-not (Test-Path -LiteralPath $source)) {
    throw "No se encuentra la fuente: $source"
}

# Cuerpo comun (la fuente, sin el comentario HTML de la cabecera)
$body = Get-Content -LiteralPath $source -Raw -Encoding UTF8
$body = [regex]::Replace($body, '(?s)^<!--.*?-->\s*', '')

$aviso = @"
<!-- ARCHIVO GENERADO AUTOMATICAMENTE. NO EDITAR A MANO.
     Fuente: .ai/CONTEXTO_IA.md  |  Regenerar: .ai/sincronizar.ps1 -->

"@

# Destinos: cada asistente lee su propio archivo
$targets = @(
    @{ Path = (Join-Path $root 'CLAUDE.md');                          Title = '# CLAUDE.md - Lineamientos del proyecto (Claude Code)' }
    @{ Path = (Join-Path $root 'AGENTS.md');                          Title = '# AGENTS.md - Lineamientos del proyecto (Codex / OpenAI y otros)' }
    @{ Path = (Join-Path $root '.github\copilot-instructions.md');    Title = '# Instrucciones del proyecto para GitHub Copilot' }
)

foreach ($t in $targets) {
    $dir = Split-Path -Parent $t.Path
    if (-not (Test-Path -LiteralPath $dir)) {
        New-Item -ItemType Directory -Force -Path $dir | Out-Null
    }
    $content = $aviso + $t.Title + "`r`n`r`n" + $body
    Set-Content -LiteralPath $t.Path -Value $content -Encoding UTF8 -NoNewline
    Write-Host "Sincronizado: $($t.Path)"
}

Write-Host "`nListo. Los 3 archivos de configuracion estan sincronizados con .ai/CONTEXTO_IA.md"