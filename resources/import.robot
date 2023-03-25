*** Settings ***
Library      AppiumLibrary
Library      String
Library      Collections
Library      DateTime
Library      DatabaseLibrary
Resource     ../keywords/${platform}/common/common_keywords.robot
Variables    ../resources/config/${platform}/env_config.yaml
Resource     ../resources/import_translations.robot