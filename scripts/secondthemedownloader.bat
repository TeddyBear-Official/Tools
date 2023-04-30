@echo off
setlocal EnableDelayedExpansion

set originalDirectory=%cd%
set colors=eof

:main

cd %originalDirectory%

:: install needed things
if not exist utils ( mkdir utils )
if not exist scripts ( mkdir scripts )
if not exist settings ( mkdir settings )

if %colors%==eof (
	if exist utils\colors.bat (
		call utils\colors.bat
		set colors=done
		goto main
	) else ( 
		powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/TeddyBear-Official/Tools/main/utils/colors.bat -Outfile utils\colors.bat"
		goto main
	)
)

title Tools
cls

echo [%fore_dark_cyan%?%fore_default%]: Tools
echo [%fore_dark_cyan%?%fore_default%]: By Teddy and Subz
echo.

:: get all scripts
set index=0
cd scripts
for %%a in (*.*) do (
	set /a index+=1
	set fileName=%%a
	
	:: change whitespace
	set fileName=!fileName: =!
	set fileName=!fileName:_=!
	set fileName=!fileName:-=!
	set fileName=!fileName:+=!
	
	:: lower file name
	set fileName=!fileName:A=a! 
	set fileName=!fileName:B=b! 
	set fileName=!fileName:C=c! 
	set fileName=!fileName:D=d! 
	set fileName=!fileName:E=e! 
	set fileName=!fileName:F=f! 
	set fileName=!fileName:G=g! 
	set fileName=!fileName:H=h! 
	set fileName=!fileName:I=i! 
	set fileName=!fileName:J=j! 
	set fileName=!fileName:K=k! 
	set fileName=!fileName:L=l! 
	set fileName=!fileName:M=m! 
	set fileName=!fileName:N=n! 
	set fileName=!fileName:O=o! 
	set fileName=!fileName:P=p! 
	set fileName=!fileName:Q=q! 
	set fileName=!fileName:R=r! 
	set fileName=!fileName:S=s! 
	set fileName=!fileName:T=t! 
	set fileName=!fileName:U=u! 
	set fileName=!fileName:V=v! 
	set fileName=!fileName:W=w! 
	set fileName=!fileName:X=x! 
	set fileName=!fileName:Y=y! 
	set fileName=!fileName:Z=z! 
	
	:: remove file extension
	set fileName=!fileName:.bat=!
	set fileName=!fileName:.cmd=!
	
	:: remove whitespace
	set fileName=!fileName: =!
	
	:: change back original whitespace
	set fileName=!fileName:= !
	
	echo [%fore_dark_green%!index!%fore_default%]: !fileName!
)
cd %originalDirectory%
if !index!==0 (
	echo Sorry but we couldn't find any scripts.
	echo Restarting in 5 seconds.
	timeout 5 > nul
	start Main.bat
	exit
) else (
	echo.
	set command=refresh
	set /p command="%fore_dark_cyan%>>>%fore_default% "
	goto runCommand
)

:runCommand
set command=%command:A=a% 
set command=%command:B=b% 
set command=%command:C=c% 
set command=%command:D=d% 
set command=%command:E=e% 
set command=%command:F=f% 
set command=%command:G=g% 
set command=%command:H=h% 
set command=%command:I=i% 
set command=%command:J=j% 
set command=%command:K=k% 
set command=%command:L=l% 
set command=%command:M=m% 
set command=%command:N=n% 
set command=%command:O=o% 
set command=%command:P=p% 
set command=%command:Q=q% 
set command=%command:R=r% 
set command=%command:S=s% 
set command=%command:T=t% 
set command=%command:U=u% 
set command=%command:V=v% 
set command=%command:W=w% 
set command=%command:X=x% 
set command=%command:Y=y% 
set command=%command:Z=z%

set command=%command: =%
set command=%command:_=%
set command=%command:-=%
set command=%command:+=%

set index=0
cd scripts
for %%g in (*.*) do (
	set /a index+=1
	set fileName=%%g
	
	:: lower file name
	set fileName=!fileName:A=a! 
	set fileName=!fileName:B=b! 
	set fileName=!fileName:C=c! 
	set fileName=!fileName:D=d! 
	set fileName=!fileName:E=e! 
	set fileName=!fileName:F=f! 
	set fileName=!fileName:G=g! 
	set fileName=!fileName:H=h! 
	set fileName=!fileName:I=i! 
	set fileName=!fileName:J=j! 
	set fileName=!fileName:K=k! 
	set fileName=!fileName:L=l! 
	set fileName=!fileName:M=m! 
	set fileName=!fileName:N=n! 
	set fileName=!fileName:O=o! 
	set fileName=!fileName:P=p! 
	set fileName=!fileName:Q=q! 
	set fileName=!fileName:R=r! 
	set fileName=!fileName:S=s! 
	set fileName=!fileName:T=t! 
	set fileName=!fileName:U=u! 
	set fileName=!fileName:V=v! 
	set fileName=!fileName:W=w! 
	set fileName=!fileName:X=x! 
	set fileName=!fileName:Y=y! 
	set fileName=!fileName:Z=z! 
	
	:: remove file extension
	set fileName=!fileName:.bat=!
	set fileName=!fileName:.cmd=!
	
	:: remove whitespace
	set fileName=!fileName: =!
	set fileName=!fileName:_=!
	set fileName=!fileName:-=!
	set fileName=!fileName:+=!
	
	if %command%==!index! (
		cd %originalDirectory%
		cls
		call scripts\"%%g"
		goto main
	) else (
		if %command%==!fileName! (
			cd %originalDirectory%
			cls
			call scripts\"%%g"
			goto main
		)
	)
)

if %command%==refresh (
	goto main
) else (
	goto main
)
