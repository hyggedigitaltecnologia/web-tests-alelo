*** Comments ***

##################################################################################################################################
# Author: Jhonattan Gomes
# Description: Tests regarding the my account component
##################################################################################################################################

*** Settings ***

Resource    ../../../helpers/dependencies.robot

*** Test Cases ***

CT001 - Successful Registration
    [Tags]    test    successful_registration

    GIVEN That access "hml"
    WHEN Navigate the "My Account" page
    AND Fill in the registration data "correctly"
    THEN Validate registration "successfully"