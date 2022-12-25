*** Settings ***
Library    SeleniumLibrary

Variables    ../Resources/TestData/testdata.py
Variables    ../Resources/Locators/locators.py


Test Setup    Open Browser    ${url}    ${browser}
Test Teardown    Close All Browsers    

Resource    ../Resources/Keywords/googleHome.robot


*** Test Cases ***
Search The Lord of the rings in Google
    Fill Searchbox in Google    ${testWords}[0]
    Press Enter Key
    Get Result Text And Write To Console

Search Brave Hearts in Google
    Fill Searchbox in Google    ${testWords}[1]
    Press Enter Key
    Get Result Text And Write To Console

Search Harry Potters in Google
    Fill Searchbox in Google    ${testWords}[2]
    Press Enter Key
    Get Result Text And Write To Console        
    



