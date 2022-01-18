*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.alza.cz/
${browser}  chrome
${loginbutton}  id:lblLogin
${usernamefield}    id:userName
${username}     bludra.kure@gmail.com
${passwordfield}    id:password
${password}     35000510
${loginsubmit}  id:btnLogin
${logout}   id:lblSignOut

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${url}  ${browser}
    Click Link  ${loginbutton}

Input Username
    Select Frame    id:loginIframe
    Input Text  ${usernamefield}    ${username}

Input Password
    Input Text  ${passwordfield}    ${password}

Submit
    Click Button    ${loginsubmit}

Logout
    Click Link  ${logout}