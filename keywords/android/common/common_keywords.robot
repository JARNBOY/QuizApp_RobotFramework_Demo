*** Settings ***
Resource    Resource          ../resources/import.robot
*** Keywords ***
Install And Open App
    Open Application    ${remoteUrl}
    ...                 automationName=${automation}
    ...                 platformName=${device}
    ...                 platformVersion=${deviceVer}
    ...                 udid=${udid}
    ...                 app=${app}
    ...                 systemPort=${systemPort}
    ...                 newCommandTimeout=60000
    ...                 launchTimeout=48000
    ...                 appWaitActivity=*
    ...                 autoGrantPermissions=${permissions}

Open App
    Open Application    ${remoteUrl}
    ...                 automationName=${automation}
    ...                 platformName=${device}
    ...                 platformVersion=${deviceVer}
    ...                 udid=${udid}
    ...                 app=${app}
    ...                 systemPort=${systemPort}
    ...                 newCommandTimeout=60000
    ...                 launchTimeout=48000
    ...                 appWaitActivity=*
    ...                 noReset=true

Wait Until Element Is Ready 
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds      ${retry}      ${retry_interval}     Element Should Be Visible     ${locator}