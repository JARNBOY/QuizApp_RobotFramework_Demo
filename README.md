Robot framwork - Mobile Automation
=================================
## This workshop is part of shreknowledge my blog 
[(link)](https://medium.com/@paponsmc/appium-robot-framework-step-by-step-zero-to-hero-ui-automate-test-for-mobile-app-ios-android-f3a012b4afe2)

## Folder Pattern for Test Case / Object Repository

> Folder Standard Format will be: 
```
   REBOTFRAMWORK-QuizAPP
    ├── keyword (keyword Store)  
    │   |   ├── android
    |   |   |   ├──common
    |   |   |   |   ├──common_keywords.robot
    |   |   |   |    ...
    |   |   |   ├──pages (Store element and keyword per features)
    |   |   |   |    ├──main.robot
    |   |   |   |    |   
    |   |   |   |    ├──quizQuestion.robot 
    |   |   |   |    |   
    |   |   |   |    ├──result.robot 
    |   |   |   |    |
    |   |   |   |    ...
    │   |   ├── ios
    |   |   |   ├──common
    |   |   |   |   ├──common_keywords.robot
    |   |   |   |    ...
    |   |   |   ├──pages (Store element and keyword per features)
    |   |   |   |    ├──main.robot
    |   |   |   |    |   
    |   |   |   |    ├──quizQuestion.robot 
    |   |   |   |    |   
    |   |   |   |    ├──result.robot 
    |   |   |   |    |   
    |   |   |   |    ...  
    ├── resources (Test Data Store)     #importFeatures.robot    #importPages.robot   #import.robot
    │   |   ├── config
    |   |   |   ├── android
    |   |   |   |    ├──envConfig.yaml 
    |   |   |   ├── ios
    |   |   |   |    ├──envConfig.yaml 
    │   |   ├── test_data
    |   |   |   ├── android
    |   |   |   |    ├──userPlayQuiz.yaml 
    |   |   |   |    |   ...         
    |   |   |   ├── ios
    |   |   |   |    ├──userPlayQuiz.yaml
    |   |   |   |    |  ...   
    │   |   ├── translation
    |   |   |   ├── quizquestion.yaml
    |   |   |   ...
    ├── testcase
    │   |   ├── inputNameStartQuizSuccess.robot
    |   |   |   
    |   |   ├── quizSelectChoiceOneOnly.robot
    |   |   |   ...# QuizApp_RobotFramework_Demo
