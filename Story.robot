*** Settings ***
Library           Selenium2Library
Resource          Utils.txt

*** Test Cases ***
Story1sanselfpayReady
    Login
    ClickManageButton
    CreateTicket    6165038015564028310    6165046330038053642    叁万元    story1
    SearchForCheckout    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    待编押
    Run Keyword If    ${is}    Checkout
    SearchForPress    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    待压印
    Run Keyword If    ${is}    Press    30000

Story2sanTofengLargePaying
    Login
    ClickManageButton
    CreateTicket    6165038015564028310    6165058854457943659    壹拾万元    story2
    SearchForCheckout    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    待编押
    Run Keyword If    ${is}    Checkout
    SearchForPress    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    待压印
    Run Keyword If    ${is}    Press    100000
    SearchForPressed    6165038015564028310
    ${is}=    Run Keyword And Return Status    Page Should Contain    已出票
    Run Keyword If    ${is}    LargeAmountPay    100000    testForLAP

Story3sanselfpayLargePaying
    Login
    ClickManageButton
    CreateTicket    11650601555282354    11650588544579758    壹拾万元    story3
    SearchForCheckout    11650601555282354
    ${is}=    Run Keyword And Return Status    Page Should Contain    待编押
    Run Keyword If    ${is}    Checkout
    SearchForPress    11650601555282354
    ${is}=    Run Keyword And Return Status    Page Should Contain    待压印
    Run Keyword If    ${is}    Press    100000
    SearchForPressed    11650601555282354
    ${is}=    Run Keyword And Return Status    Page Should Contain    已出票
    Run Keyword If    ${is}    LargeAmountPay    100000    testForLAP

Story4sanselfpayLargePaying
    Login
    ClickManageButton
    CreateTicket    11650601555282354    6165038015564028310    壹拾万元    story4
    SearchForCheckout    11650601555282354
    ${is}=    Run Keyword And Return Status    Page Should Contain    待编押
    Run Keyword If    ${is}    Checkout
    SearchForPress    11650601555282354
    ${is}=    Run Keyword And Return Status    Page Should Contain    待压印
    Run Keyword If    ${is}    Press    100000
    SearchForPressed    11650601555282354
    ${is}=    Run Keyword And Return Status    Page Should Contain    已出票
    Run Keyword If    ${is}    LargeAmountPay    100000    testForLAP

Story5santofengLargePaying
    Login
    ClickManageButton
    CreateTicket    6165058854457948302    6165058854457943659    壹拾万元    story5
    SearchForCheckout    6165058854457948302
    ${is}=    Run Keyword And Return Status    Page Should Contain    待编押
    Run Keyword If    ${is}    Checkout
    SearchForPress    6165058854457948302
    ${is}=    Run Keyword And Return Status    Page Should Contain    待压印
    Run Keyword If    ${is}    Press    100000
    SearchForPressed    6165058854457948302
    ${is}=    Run Keyword And Return Status    Page Should Contain    已出票
    Run Keyword If    ${is}    LargeAmountPay    100000    testForLAP

Story6santofengLargePayed
    StoryLargeAmountPayed    100000    壹拾万元    6165058854457948302    6165058854457943659    story6

Story7Search
    Login
    ClickManageButton
    SearchOnlyByApplicant    6165038015564028310

Story8sanselfpayLargePayed
    StoryLargeAmountPayed    100000    壹拾万元    11650601555282354    6165038015564028310    story8
