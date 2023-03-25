*** Keywords ***
Install And Open App
    Open Application    ${remoteUrl}
    ...                 automationName=${automation}
    ...                 platformName=${device}
    ...                 platformVersion=${deviceVer}
    ...                 deviceName=${udid}
    ...                 udid=${udid}
    ...                 app=${app}
    ...                 autoDismissAlerts=${alert}
    ...                 autoAcceptAlerts=${autoAcceptAlerts}
    ...                 usePrebuiltWDA=true
    ...                 wdaLocalPort=${wdaLocalPort}
    ...                 useJSONSource=true
    ...                 simpleIsVisibleCheck=true
    ...                 waitForQuiescence=false
    ...                 newCommandTimeout=80000
    ...                 launchTimeout=80000
    ...                 permissions=${permissions}
    ...                 showIOSLog=true

Open App
    Open Application    ${remoteUrl}
    ...                 automationName=${automation}
    ...                 platformName=${device}
    ...                 platformVersion=${deviceVer}
    ...                 deviceName=${udid}
    ...                 udid=${udid}
    ...                 app=${app}
    ...                 newCommandTimeout=60000
    ...                 launchTimeout=48000
    ...                 appWaitActivity=*
    ...                 noReset=true

    Wait Until Element Is Ready 
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds      ${retry}      ${retry_interval}     Element Should Be Visible