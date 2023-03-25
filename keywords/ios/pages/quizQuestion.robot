*** Settings ***
Resource          ${CURDIR}/../../../../resources/import_features.robot
Resource          ${CURDIR}/../../../../resources/import.robot
Resource          ${CURDIR}/../../../../resources/import_pages.robot
Variables         ${CURDIR}/../../resources/test_data/${platform}/userPlayQuiz.yaml

*** Variables ***   
${quizPage.numberProgressQuizOne}           xpath=//XCUIElementTypeStaticText[@name="1/10"]
${quizPage.numberProgressQuizTwo}           xpath=//XCUIElementTypeStaticText[@name="2/10"]
${quizPage.numberProgressQuizThree}         xpath=//XCUIElementTypeStaticText[@name="3/10"]
${quizPage.numberProgressQuizFour}          xpath=//XCUIElementTypeStaticText[@name="4/10"]
${quizPage.numberProgressQuizFive}          xpath=//XCUIElementTypeStaticText[@name="5/10"]
${quizPage.numberProgressQuizSix}           xpath=//XCUIElementTypeStaticText[@name="6/10"]
${quizPage.numberProgressQuizSeven}         xpath=//XCUIElementTypeStaticText[@name="7/10"]
${quizPage.numberProgressQuizEight}         xpath=//XCUIElementTypeStaticText[@name="8/10"]
${quizPage.numberProgressQuizNine}          xpath=//XCUIElementTypeStaticText[@name="9/10"]
${quizPage.numberProgressQuizTen}           xpath=//XCUIElementTypeStaticText[@name="10/10"]
${quizPage.answerOne}                       xpath=//XCUIElementTypeApplication[@name="Quiz App"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton
${quizPage.btnSubmit}                       xpath=//XCUIElementTypeButton[@name="SUBMIT"]
${quizPage.btnSubmitNext}                   xpath=//XCUIElementTypeButton[@name="GO TO NEXT QUESTION"]
${quizPage.btnSubmitFinish}                 xpath=//XCUIElementTypeButton[@name="FINISH"]
*** Keywords ***
Choose One Answer All Quiz Question
    
    common_keywords.Wait Until Element Is Ready     ${quizPage.answerOne}
    common_keywords.Wait Until Element Is Ready     ${quizPage.btnSubmit}
    #start question 1
    common_keywords.Wait Until Element Is Ready     ${quizPage.numberProgressQuizOne} 
    Element Should Contain Text      ${quizPage.numberProgressQuizOne}         1/10
    Choose Answer One

    #start question 2
    common_keywords.Wait Until Element Is Ready     ${quizPage.numberProgressQuizTwo} 
    Element Should Contain Text      ${quizPage.numberProgressQuizTwo}         2/10
    Choose Answer One

    #start question 3
    common_keywords.Wait Until Element Is Ready     ${quizPage.numberProgressQuizThree} 
    Element Should Contain Text      ${quizPage.numberProgressQuizThree}         3/10
    Choose Answer One

    #start question 4
    common_keywords.Wait Until Element Is Ready     ${quizPage.numberProgressQuizFour} 
    Element Should Contain Text      ${quizPage.numberProgressQuizFour}         4/10
    Choose Answer One

    #start question 5
    common_keywords.Wait Until Element Is Ready     ${quizPage.numberProgressQuizFive} 
    Element Should Contain Text      ${quizPage.numberProgressQuizFive}         5/10
    Choose Answer One

    #start question 6
    common_keywords.Wait Until Element Is Ready     ${quizPage.numberProgressQuizSix} 
    Element Should Contain Text      ${quizPage.numberProgressQuizSix}         6/10
    Choose Answer One

    #start question 7
    common_keywords.Wait Until Element Is Ready     ${quizPage.numberProgressQuizSeven} 
    Element Should Contain Text      ${quizPage.numberProgressQuizSeven}         7/10
    Choose Answer One

    #start question 8
    common_keywords.Wait Until Element Is Ready     ${quizPage.numberProgressQuizEight} 
    Element Should Contain Text      ${quizPage.numberProgressQuizEight}         8/10
    Choose Answer One

    #start question 9
    common_keywords.Wait Until Element Is Ready     ${quizPage.numberProgressQuizNine} 
    Element Should Contain Text      ${quizPage.numberProgressQuizNine}         9/10
    Choose Answer One

    #start question 10
    common_keywords.Wait Until Element Is Ready     ${quizPage.numberProgressQuizTen} 
    Element Should Contain Text      ${quizPage.numberProgressQuizTen}         10/10
    Choose Answer One Last Quiz

Choose Answer One
    Element Should Contain Text      ${quizPage.btnSubmit}                  SUBMIT
    Click Element                    ${quizPage.answerOne}
    Click Element                    ${quizPage.btnSubmit}
    Element Should Contain Text      ${quizPage.btnSubmitNext}                  GO TO NEXT QUESTION
    Click Element                    ${quizPage.btnSubmitNext}

Choose Answer One Last Quiz
    Element Should Contain Text      ${quizPage.btnSubmit}                  SUBMIT
    Click Element                    ${quizPage.answerOne}
    Click Element                    ${quizPage.btnSubmit}
    Element Should Contain Text      ${quizPage.btnSubmitFinish}                  FINISH
    Click Element                    ${quizPage.btnSubmitFinish}