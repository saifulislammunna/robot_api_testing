*** Settings ***
Library  RequestLibrary


*** Variables ***
$[App_Base_URL]  http://thetestingworldapi.com/
$[StudentID]    28


*** Test Cases ***
TC_001_Fetch_Student_details_by_id
    create session  FetchData   $[App_Base_URL]
    ${Response}= get request  FetchData  api/studentsDetails/$[StudentID]
    log to console ${Response.status_code}
    log to console  ${Response.content}





