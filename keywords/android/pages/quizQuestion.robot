*** Settings ***
Resource          ${CURDIR}/../../../../resources/import_features.robot
Resource          ${CURDIR}/../../../../resources/import.robot
Resource          ${CURDIR}/../../../../resources/import_pages.robot
Variables         ${CURDIR}/../../resources/test_data/${platform}/userPlayQuiz.yaml

*** Variables ***   
${quizPage.numberProgressQuiz}           xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
${quizPage.answerOne}                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TextView[2]
${quizPage.btnSubmit}                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button

*** Keywords ***
Choose One Answer All Quiz Question
    common_keywords.Wait Until Element Is Ready     ${quizPage.numberProgressQuiz} 
    common_keywords.Wait Until Element Is Ready     ${quizPage.answerOne}
    common_keywords.Wait Until Element Is Ready     ${quizPage.btnSubmit}
    #start question 1
    Element Should Contain Text      ${quizPage.numberProgressQuiz}         1/10
    Choose Answer One

    #start question 2
    Element Should Contain Text      ${quizPage.numberProgressQuiz}         2/10
    Choose Answer One

    #start question 3
    Element Should Contain Text      ${quizPage.numberProgressQuiz}         3/10
    Choose Answer One

    #start question 4
    Element Should Contain Text      ${quizPage.numberProgressQuiz}         4/10
    Choose Answer One

    #start question 5
    Element Should Contain Text      ${quizPage.numberProgressQuiz}         5/10
    Choose Answer One

    #start question 6
    Element Should Contain Text      ${quizPage.numberProgressQuiz}         6/10
    Choose Answer One

    #start question 7
    Element Should Contain Text      ${quizPage.numberProgressQuiz}         7/10
    Choose Answer One

    #start question 8
    Element Should Contain Text      ${quizPage.numberProgressQuiz}         8/10
    Choose Answer One

    #start question 9
    Element Should Contain Text      ${quizPage.numberProgressQuiz}         9/10
    Choose Answer One

    #start question 10
    Element Should Contain Text      ${quizPage.numberProgressQuiz}         10/10
    Choose Answer One Last Quiz

Choose Answer One
    Element Should Contain Text      ${quizPage.btnSubmit}                  SUBMIT
    Click Element                    ${quizPage.answerOne}
    Click Element                    ${quizPage.btnSubmit}
    Element Should Contain Text      ${quizPage.btnSubmit}                  GO TO NEXT QUESTION
    Click Element                    ${quizPage.btnSubmit}

Choose Answer One Last Quiz
    Element Should Contain Text      ${quizPage.btnSubmit}                  SUBMIT
    Click Element                    ${quizPage.answerOne}
    Click Element                    ${quizPage.btnSubmit}
    Element Should Contain Text      ${quizPage.btnSubmit}                  FINISH
    Click Element                    ${quizPage.btnSubmit}