*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{cities}  banalore  hyderabad
*** Test Cases ***
SAMPLELOOPS
    FOR  ${i}  IN   @{cities}
        log to console  ${i}
    END

LOOPS1
    FOR  ${i}  IN RANGE    1  6
        Log to console  ${i}
    END

LOOPSWITHLIST
    @{names}  create list  shaik  jakeer  hussain
    FOR  ${i}  IN  @{names}
        log to console  ${i}
    END
LOOPSWITHOUTLIST
    FOR  ${i}  IN  shaik  jakeer  hussain
        log to console   ${i}
    END
LOOPSWITHINTLIST
    @{numbers}  create list  1  2  3  4  5
     FOR  ${i}  IN  @{numbers}
        log to console   ${i}
    END
LOOPSWITHOUTINTLIST
    FOR  ${i}  IN  1  2  3  4  5
        log to console   ${i}
    END
LOPSWITHCONDITION
    @{numbers}  create list  1  2  3  4  5
     FOR  ${i}  IN  @{numbers}
        log to console   ${i}
        Exit For Loop If    ${i}==3
    END


*** Keywords ***

