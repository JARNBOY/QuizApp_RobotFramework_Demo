*** Settings ***
Resource          ${CURDIR}/../../../../resources/import_features.robot
Resource          ${CURDIR}/../../../../resources/import.robot
Resource          ${CURDIR}/../../../../resources/import_pages.robot
Variables         ${CURDIR}/../../resources/test_data/${platform}/userPlayQuiz.yaml

*** Variables ***   
${resultPage.title}                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView[1]
${resultPage.textCongrat}           xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView[2]
${resultPage.textNameQuiz}          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView[3]
${resultPage.textScore}             xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView[4]
${resultPage.btnFinish}             xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.Button

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
    Element Should Contain Text      ${resultPage.textScore}           Your score is 3 out of 10
    Element Should Contain Text      ${resultPage.btnFinish}           FINISH

    Click Element                    ${resultPage.btnFinish}
