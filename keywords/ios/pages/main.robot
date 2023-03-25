*** Settings ***
Resource          ${CURDIR}/../../../../resources/import_features.robot
Resource          ${CURDIR}/../../../../resources/import.robot
Resource          ${CURDIR}/../../../../resources/import_pages.robot
Variables         ${CURDIR}/../../resources/test_data/${platform}/userPlayQuiz.yaml

*** Variables ***
${mainPage.titleQuiz}                    xpath=//XCUIElementTypeStaticText[@name="Quiz App!"]                
${mainPage.titleWelcome}                 xpath=//XCUIElementTypeStaticText[@name="Welcome"]
${mainPage.descTitle}                    xpath=//XCUIElementTypeStaticText[@name="Please Enter Your Name.."]
${mainPage.editTextInputName}            xpath=//XCUIElementTypeApplication[@name="Quiz App"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeTextField
${mainPage.btnStart}                     xpath=//XCUIElementTypeButton[@name="START"]
${mainPage.enterKeyborad}                xpath=//XCUIElementTypeButton[@name="Return"]

*** Keywords ***
Verify Input Name
    common_keywords.Wait Until Element Is Ready     ${mainPage.titleQuiz} 
    common_keywords.Wait Until Element Is Ready     ${mainPage.titleWelcome} 
    common_keywords.Wait Until Element Is Ready     ${mainPage.descTitle} 
    common_keywords.Wait Until Element Is Ready     ${mainPage.editTextInputName} 
    common_keywords.Wait Until Element Is Ready     ${mainPage.btnStart} 

    Element Should Contain Text      ${mainPage.titleQuiz}         Quiz App!
    Element Should Contain Text      ${mainPage.titleWelcome}      Welcome
    Element Should Contain Text      ${mainPage.descTitle}         Please Enter Your Name..
    Element Should Contain Text      ${mainPage.btnStart}          START
    
    Click Element                    ${mainPage.editTextInputName}
    Input Text                       ${mainPage.editTextInputName}    ${userPlayQuiz['name']}
    Element Should Contain Text      ${mainPage.editTextInputName}    ${userPlayQuiz['name']}

Verify Start Quiz
    common_keywords.Wait Until Element Is Ready     ${mainPage.editTextInputName} 
    common_keywords.Wait Until Element Is Ready     ${mainPage.btnStart}
    common_keywords.Wait Until Element Is Ready     ${mainPage.enterKeyborad}

    Click Element                    ${mainPage.enterKeyborad}
    Click Element                    ${mainPage.btnStart}
