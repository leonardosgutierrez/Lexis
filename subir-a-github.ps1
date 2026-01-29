# Script para subir cambios a GitHub - Lexis
# Ejecutar: clic derecho -> "Ejecutar con PowerShell" o desde terminal: .\subir-a-github.ps1

Set-Location $PSScriptRoot

Write-Host "Agregando cambios..." -ForegroundColor Cyan
git add .

Write-Host "Haciendo commit..." -ForegroundColor Cyan
git commit -m "Actualizaciones: cambios en index, script e imagenes"

if ($LASTEXITCODE -eq 0) {
    Write-Host "Subiendo a GitHub..." -ForegroundColor Cyan
    git push origin main
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Listo. Cambios subidos correctamente." -ForegroundColor Green
    } else {
        Write-Host "Error al subir. Revisa tu conexion o credenciales de GitHub." -ForegroundColor Red
    }
} else {
    Write-Host "No hay cambios nuevos para commitear, o hubo un error." -ForegroundColor Yellow
}

Read-Host "Presiona Enter para cerrar"
