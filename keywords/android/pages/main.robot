*** Settings ***
Resource          ${CURDIR}/../../../../resources/import_features.robot
Resource          ${CURDIR}/../../../../resources/import.robot
Resource          ${CURDIR}/../../../../resources/import_pages.robot
Variables         ${CURDIR}/../../resources/test_data/${platform}/userPlayQuiz.yaml

*** Variables ***
${mainPage.titleQuiz}                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView                
${mainPage.titleWelcome}                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.cardview.widget.CardView/android.widget.LinearLayout/android.widget.TextView[1]
${mainPage.descTitle}                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.cardview.widget.CardView/android.widget.LinearLayout/android.widget.TextView[2]
${mainPage.editTextInputName}            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.cardview.widget.CardView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.EditText    
${mainPage.btnStart}                     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.cardview.widget.CardView/android.widget.LinearLayout/android.widget.Button
   

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
    Click Element                    ${mainPage.btnStart}
