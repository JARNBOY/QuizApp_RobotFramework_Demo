*** Settings ***
Resource          ${CURDIR}/../../../../resources/import_features.robot
Resource          ${CURDIR}/../../../../resources/import.robot
Resource          ${CURDIR}/../../../../resources/import_pages.robot
Variables         ${CURDIR}/../../resources/test_data/${platform}/userPlayQuiz.yaml

*** Variables ***   
${resultPage.title}                 xpath=//XCUIElementTypeStaticText[@name="Result"]
${resultPage.textCongrat}           xpath=//XCUIElementTypeStaticText[@name="Hey, Congratulations!"]
${resultPage.textNameQuiz}          xpath=//XCUIElementTypeStaticText[@name="${userPlayQuiz['name']}"]
${resultPage.textScore}             xpath=//XCUIElementTypeStaticText[@name="Your Score is 3 out of 10"]
${resultPage.btnFinish}             xpath=//XCUIElementTypeButton[@name="FINISH"]

*** Keywords ***
Show Result One Answer All Quiz Question
    common_keywords.Wait Until Element Is Ready     ${resultPage.title} 
    common_keywords.Wait Until Element Is Ready     ${resultPage.textCongrat}
    common_keywords.Wait Until Element Is Ready     ${resultPage.textNameQuiz}
    common_keywords.Wait Until Element Is Ready     ${resultPage.textScore}
    common_keywords.Wait Until Element Is Ready     ${resultPage.btnFinish}
    
    Element Should Contain Text      ${resultPage.title}               Result
    Element Should Contain Text      ${resultPage.textCongrat}         Hey, Congratulations!
    Element Should Contain Text      ${resultPage.textNameQuiz}        ${userPlayQuiz['name']}
    Element Should Contain Text      ${resultPage.textScore}           Your Score is 3 out of 10
    Element Should Contain Text      ${resultPage.btnFinish}           FINISH

    Click Element                    ${resultPage.btnFinish}
