*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    http://localhost:44322/AE302.aspx  # Replace with the actual website URL

*** Keywords ***
Open Website
    Open Browser    ${url}    ${browser}

SlowClickEditButton
    Sleep    5s  # Add a 2-second delay
    Click Element    xpath=//button[contains(@class, 'btn btn-link dxbs-button') and @data-toggle='gridview-datarow-edit']

SlowClickCancelButton
    Sleep    5s  # Add a 2-second delay
    Wait Until Element Is Visible    xpath=//button[contains(@class, 'btn btn-link dxbs-button') and @data-toggle='gridview-cancelchanges']
    Click Element    xpath=//button[contains(@class, 'btn btn-link dxbs-button') and @data-toggle='gridview-cancelchanges']

*** Test Cases ***
Open Website, Edit, and Cancel Slowly
    Open Website
    SlowClickEditButton
    SlowClickCancelButton
