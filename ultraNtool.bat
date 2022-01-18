@echo off
:language
cls
set /p language=choose a language (CZ/SK/EN)
 if %language% == CZ goto toolcz 
 if %language% == cz goto toolcz
 if %language% == sk goto toolsk 
 if %language% == SK goto toolsk
 if %language% == EN goto toolen
 if %language% == en goto toolen
cls
 goto language
pause>nul
 goto language
#---------------------------------------------CZ-------------------------------------
:toolcz
cls
Echo (1) Ping IP nebo DOMENU 
echo (2) Zobrazit WIFI HESLO 
echo (3) trace IP nebo DOMAIN
echo (4) death of ping
echo (5) SSH
echo (6) change language
echo (7) Ukoncit program 
set /p toolcz=select tool: 
if %toolcz% == 1 goto pingcz
if %toolcz% == 2 goto ssidcz
if %toolcz% == 3 goto tracecz
if %toolcz% == 5 goto language
if %toolcz% == 4 goto deathpingcz
if %toolcz% == 6 goto sshcz
if %toolcz% == 7 goto close
goto toolcz
cls
pause>nul
goto  toolcz
:tracecz
cls
set /p tracecz=Zadaj IP alebo Domenu ktoru chces tracenut: 
tracert %tracecz%
pause>nul
goto toolcz
:pingcz

cls
echo Zadaj IP alebo Domenu ktoru chces pingnut
set /p ping=Ping:
ping %ping%
pause>nul
goto toolcz
:deathpingcz

cls
echo Zadaj IP alebo Domenu ktoru chces DDoSnut
set /p ping=Ping:
:loop
ping %ping% –t |65500
goto :loop
pause>nul
goto toolcz

:sshcz
set /p user=zadaj uzivatela: 
set /p ipdoname=zadaj IP alebo domenu SSH: 
ssh %user%@%ipdoname%
goto toolcz

:ssidcz
 cls
set /p SSID=zde zadejte SSID: 
goto showpasscz
pause>nul
:showpasscz
 cls
 NETSH WLAN SHOW PROFILE %SSID% KEY=CLEAR 
 pause>nul
 goto toolcz
pause>nul
#---------------------------------END-CZ--------------------------------------------
#---------------------------------------------SK-------------------------------------
:toolsk
cls
Echo (1) Ping IP alebo DOMENU 
echo (2) zobrazit WIFI HESLO
echo (3) trace IP alebo DOMENU 
echo (4) change language
echo (5) Ukoncit program
set /p toolcz=select tool: 
if %toolcz% == 1 goto pingsk
if %toolcz% == 2 goto ssidsk
if %toolcz% == 3 goto tracesk
if %toolcz% == 4 goto language
if %toolcz% == 5 goto close
goto toolsk
cls
pause>nul
goto  toolsk
:tracesk
cls
echo Zadaj IP alebo Domenu ktoru chces tracenut: 
set /p tracesk=Trace: 
tracert %tracesk%
pause>nul
goto toolsk
:pingcz

:pingsk
cls
echo Zadaj IP alebo Domenu ktoru chces pingnut
set /p ping=Ping: 
ping %ping%
pause>nul
goto toolsk

:ssidsk
 cls
set /p SSID=enter SSID here: 
goto showpasssk
pause>nul
:showpasssk
 cls
 NETSH WLAN SHOW PROFILE %SSID% KEY=CLEAR 
 pause>nul
 goto toolsk
pause>nul
#---------------------------------END-SK--------------------------------------------
#---------------------------------------------en-------------------------------------
:toolen
Echo (1) Ping IP or DOMAIN
echo (2) Show WIFI PASS
echo (3) trace IP or DOMAIN
echo (4) change language
echo (5) Close program
set /p toolcz=select tool: 
if %toolcz% == 1 goto pingen
if %toolcz% == 2 goto ssiden
if %toolcz% == 3 goto traceen
if %toolcz% == 4 goto language
if %toolcz% == 5 goto close
goto toolen
cls
pause>nul
goto  toolen
:traceen
cls
set /p traceen=Napiš IP alebo DOMENU: 
tracert %traceen%
pause>nul
goto toolen
:pingcz

:pingen
cls
echo Zadaj IP alebo Domenu ktoru chces pingnut
set /p ping=Ping:
ping %ping%
pause>nul
goto toolen
:ssiden
cls
set /p SSID=enter SSID here: 
goto showpassen
pause>nul


pause>nul
:showpassen
 cls
 NETSH WLAN SHOW PROFILE %SSID% KEY=CLEAR 
 pause>nul
 goto toolen
pause>nul
#---------------------------------END-en--------------------------------------------