*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://codenboxautomationlab.com/practice/

*** Keywords ***
Open codenboxautomationlab
    Open Browser    ${url}    ${browser}

ClickRadio2
    Click Element    xpath=//input[@value='radio2']

InputCountry
    [Arguments]    ${country}
    Input Text    id=autocomplete    ${country}
    Wait Until Element Is Visible    xpath=//div[contains(@class, 'ui-menu-item-wrapper') and contains(text(), 'Thailand')]
    Click Element    xpath=//div[contains(@class, 'ui-menu-item-wrapper') and contains(text(), 'Thailand')]

Static Dropdown Example
    Sleep    3
    Select From List by Label    xpath=//select[@id='dropdown-class-example']    API

Select Checkbox
    Sleep    3
    Click Element    xpath=//input[@value='option1']
    Click Element    xpath=//input[@value='option3']

Mouse Hover 
    Sleep    3
    Mouse Over    xpath=//button[text()='Mouse Hover']

*** Test Cases ***
Open Codenboxautomationlab Website
    Open codenboxautomationlab

Radio Button Example
    ClickRadio2

Dynamic Dropdown Example
    InputCountry   Thai

Static Dropdown Example
    [Documentation]    This is a static dropdown example.
    Static Dropdown Example

Select Checkbox Example
    [Documentation]    This is a checkbox example.
    Select Checkbox

Mouse Hover Example
    [Documentation]    This is a mouse hover example.
    Mouse Hover
