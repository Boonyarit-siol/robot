*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    http://localhost:44322/AE302.aspx  # Replace with the actual website URL
${input_value}    20231865  # The value to input
${column_locator}    id=ContentPlaceHolder1_GVUserAccess_DXFREditorcol1_I

*** Keywords ***
Open Website
    Open Browser    ${url}    ${browser}

InputValueIntoField
    [Arguments]    ${locator}    ${value}
    Input Text    ${locator}    ${value}
    Sleep    5s  # Add a 2-second delay
    Log    Input value: ${value}

*** Test Cases ***
Open Website and Input Value
    Open Website
    InputValueIntoField    ${column_locator}    ${input_value}
