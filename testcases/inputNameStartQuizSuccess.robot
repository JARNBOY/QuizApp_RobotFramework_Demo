*** Settings ***
Resource          ../resources/import.robot
Resource          ../resources/import_features.robot
Resource          ../resources/import_pages.robot
Variables         ../resources/test_data/${platform}/userPlayQuiz.yaml
Variables         ../resources/config/${platform}/env_config.yaml
Suite Setup       Set Appium Timeout    60
Suite Teardown    Close All Applications
Test Teardown     Close All Applications

*** Test Cases ***
Verify Open Quiz First Main Screen
    [Documentation]     | Workshop Robot   | [iOS] Test Case Assume in case "input name start quiz success" |\n
    ...                 | Workshop Robot   | [Android] Test Case Assume in case "input name start quiz success"
    [Tags]  Smoke    Regression
    log      ========== Given ==========
    common_keywords.Install And Open App
    log      ========== When ==========
    main.Verify Input Name
    log      ========== Then ==========
    main.Verify Start Quiz