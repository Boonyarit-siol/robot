# ***Settings*** 

# Library    SeleniumLibrary

#  Variables 
# ${browser}    chrome
# ${url}    https://codenboxautomationlab.com/practice/

#  Keywords 
# Open codenboxautomationlab
#     Open Browser    ${url}    ${browser}

# ClickRadio2
#     Click Element    xpath=//input[@value='radio2']

# InputCountry
#     [Arguments]    ${country}
#     Input Text    id=autocomplete    ${country}
#     Wait Until Element Is Visible    xpath=//[contains(@class, 'ui-menu-item') and contains(text(), 'Thailand')]
#     Click Element    xpath=//[contains(@class, 'ui-menu-item') and contains(text(), 'Thailand')]


# Static Dropdown Example
#     Sleep    3
#     Select From List by Label    //select[@id='dropdown-class-example']    API

# Select Checkbox
#     Sleep    3
#     Click Element    xpath=//input[@value='option1']
#     Click Element    xpath=//input[@value='option3']

# Mouse Hover 
#     Sleep    3
#     Mouse Over    xpath=//button[text()='Mouse Hover']

#  Test Cases 
# Open Google Website
#  Open codenboxautomationlab

# Radio Button Example
#  ClickRadio2
# Dynamic Dropdown Example
#  InputCountry   Thai
# Static Dropdown Example
#  Static Dropdown Example
# Select Checkbox
#  Select Checkbox

# Mouse Hover Example
#  Mouse Hover