*** Settings ***
Library           Selenium2Library
Resource          Utils.txt

*** Test Cases ***
Story1
    Login
    ClickManageButton
    CreateTicket    6165038015564028310    6165046330038053642    叁万元    test1
    SearchForCheckout    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    待编押
    Run Keyword If    ${is}    Checkout
    SearchForPress    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    待压印
    Run Keyword If    ${is}    Press    30000

Story2
    Login
    ClickManageButton
    CreateTicket    6165038015564028310    6165058854457943659    壹拾万元    test1
    SearchForCheckout    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    待编押
    Run Keyword If    ${is}    Checkout
    SearchForPress    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    待压印
    Run Keyword If    ${is}    Press    100000
    SearchForPressed    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    已出票
    Run Keyword If    ${is}    LargeAmountPay    100000    testForLAP

Story3
    Login
    ClickManageButton
    SearchForPress    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    待压印
    Run Keyword If    ${is}    Press    100000
    SearchForPressed    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    已出票
    Run Keyword If    ${is}    LargeAmountPay    100000    testForLAP

Story4
    Login
    ClickManageButton
    SearchForPressed    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    已出票
    Run Keyword If    ${is}    LargeAmountPay    100000    testForLAP
