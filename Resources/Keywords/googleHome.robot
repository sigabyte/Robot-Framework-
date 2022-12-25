*** Settings ***
Library    SeleniumLibrary


Variables    ../Locators/locators.py
Variables    ../TestData/testdata.py

*** Keywords ***
Fill Searchbox in Google
    [Arguments]    ${words}
    Input Text    ${searchBox}    ${words}

Press Enter Key
    Press Keys    ${searchBox}    ENTER

Get Result Text And Write To Console
    ${resultText}    Get Text    ${searchResultText}
    Log To Console    ${resultText}
    
     

       

    


