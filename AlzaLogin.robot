*** Settings ***
library     SeleniumLibrary
resource  Keywords.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username
    Input Password
    Submit
    Logout