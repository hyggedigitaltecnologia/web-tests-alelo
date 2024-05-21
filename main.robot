##################################################################################################################################
# Autor: Jhonattan Gomes
# Decrição: Compilation of project files.
##################################################################################################################################

*** Settings ***

### Bibliotecas

Library     Collections
Library     Process
Library     OperatingSystem 
Library     SeleniumLibrary
Library     String
Library     DateTime
Library     FakerLibrary    locale=pt_BR
Library     BuiltIn
Library     XML

### Bibliotecas personalizadas

Library     libraries/command.py

*** Variables ***

${PROJECT_PATH}             ${CURDIR}

&{URL}        dev=
...           qa=
...           hml=https://practice.automationtesting.in/
...           prd=

&{BROWSER}     CHROME=chrome
...            CHROMEHEADLESS=headlesschrome
...            EDGE=edge
...            EDGEHEADLESS=headlessedge
...            FIREFOX=firefox
...            FIREFOXHEADLESS=headlessfirefox