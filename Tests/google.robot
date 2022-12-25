# BeforeClass ile driver'i olusturun ve class icinde static yapin
    Maximize edin ve 10 sn bekletin
    http://www.google.com adresine gidin
    arama kutusuna "The Lord of the Rings" yazip, cikan sonuc sayisini yazdirin
    arama kutusuna "Brave Heart" yazip, cikan sonuc sayisini yazdirin
    arama kutusuna "Harry Potter" yazip, cikan sonuc sayisini yazdirin
    AfterClass ile kapatin
#
*** Settings ***
Library    SeleniumLibrary

Variables    ../Resources/TestData/testdata.py
Variables    ../Resources/Locators/locators.py


Test Setup    Open Browser    ${url}    ${browser}
#Test Teardown    Close All Browsers    

Resource    ../Resources/Keywords/googleHome.robot


*** Test Cases ***
test01
    [Documentation]    Search The Lord of the rings in Google
    Search The Lord of the Rings in Google

test02
    [Documentation]    Search Brave Heart in Google
    Search Brave Heart in Google

test03
    [Documentation]    Search Harry Potter in Google
    Search Harry Potter in Google    


