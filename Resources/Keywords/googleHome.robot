*** Settings ***
Library    SeleniumLibrary

Variables    ../TestData/testdata.py
Variables    ../Locators/locators.py

*** Keywords ***
Search The Lord of the Rings in Google
    Input Text    ${searchBox}    The Lord of the Rings
    Press Keys    ${searchBox}    RETURN
        
    ${result01}    Get Text    ${searchResultText}
    Log To Console    ${result01}

Search Brave Heart in Google
    Input Text    ${searchBox}    Brave Heart
    Press Keys    ${searchBox}    RETURN
    
    ${result02}    Get Text    ${searchResultText}    
    Log To Console    ${result02}
    
Search Harry Potter in Google
    Input Text    ${searchBox}    Harry Potter
    Press Keys    ${searchBox}    RETURN
        
    ${result03}    Get Text    ${searchResultText}    
    Log To Console    ${result03} 

       

    


