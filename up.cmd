@echo off


:: Captura informações
set "HOSTNAME=%COMPUTERNAME%"
set "DATA=%date%"
set "HORA=%time:~0,8%"

:: Cria o README.md
(
echo # ?? Projeto Atualizado **%DATA% %HORA%** ??
echo.
echo.
echo ^<img width="300" src="https://www.guj.com.br/uploads/default/optimized/3X/9/4/94998aed39aad1c8d4c8dc744412e1148eaefdb0_2_690x387.png" alt="Visual G " style="border: 5px solid #333; border-radius: 10px;" /^>
echo.
echo ?? Última atualização: **%DATA% %HORA%**
echo.
echo Diretório atual: %CD%
echo.
echo Hostname da máquina: %HOSTNAME%
echo.
echo ---
echo.
echo ## ?? Histórico
echo Este projeto é atualizado automaticamente via script.
echo.
echo ?? Commits enviados diretamente para o repositório remoto
echo ?? Registro de data e hora no README.md
echo.
echo ---
echo.
echo ????????????
) > README.md

git init
git add . -v
git commit -m "Primeiro Commit"
git branch -M main
git remote add origin git@github.com:Prof-Josimar/visualg.git
git push -u origin main


start https://github.com/Prof-Josimar/visualg