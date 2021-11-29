*** Settings ***
Library     AppiumLibrary


*** Test Cases ***
user should be able to search in Apna application
    Launch the Apna Application
    Login through mobile number and verify through OTP
    User should be able to choose there language 
    User should be able to Edit the name and details
    User work experience
    User educ details
    Users can use these many types of jobs 
    User should be able to update profile picture 





*** Keywords ***
Launch the Apna Application
    Open Application  ${mir_server}  platformName=${platformName}  platformVersion=${platformVersion}  deviceName=${deviceName}   appActivity=${app_activity}  appPackage=${app_package}  noReset=true
   
Login through mobile number and verify through OTP
    Wait Until Page Contains Element  ${Login}  timeout=40s
    Input Text  ${Login}  9864432116
    Click Element  ${send}

    Wait Until Element Is Visible  ${enter_otp}  timeout=30s
    Input Text  ${otp1}  3
    Input Text  ${otp2}  1
    Input Text  ${otp3}  3
    Input Text  ${otp4}  4 

User should be able to choose there language 
    sleep  5s
    Click Element  xpath=//android.widget.TextView[@text="English"]
    sleep  5s
    Click Element  id=com.apnatime.debug:id/btn_continue
    sleep  5s
    Click Element  xpath=//android.widget.Button[@text="Let’s go!"]
    sleep  5s

User should be able to Edit the name and details
    Input Text  ${name}  Nayana
    Click Element  id=com.apnatime.debug:id/act_profile_info_et_city
    sleep  5s
    Click Element  xpath=//android.widget.TextView[@text="Bengaluru"]
    #selecting location
    sleep  5s
    Click Element  id=com.apnatime.debug:id/act_profile_info_et_location
    sleep  5s
    Click Element  xpath=//android.widget.TextView[@text="Acharya College"]

    #selecting gender
    sleep  5s
    Click Element  id=com.apnatime.debug:id/btn_gender_female
    sleep  5s
    Click Element  id=com.apnatime.debug:id/act_profile_info_btn_continue
    
User work experience
    sleep  5s
    Click Element  id=com.apnatime.debug:id/act_education_btn_fresher
    sleep  5s 
    Click Element  id=com.apnatime.debug:id/act_education_btn_continue

User educ details 
    sleep  5s
    Click Element  id=com.apnatime.debug:id/et_education
    Click Element  id=com.apnatime.debug:id/tv_education_detail_info
    sleep  5s
    Click Element  id=com.apnatime.debug:id/act_education_btn_continue

Users can use these many types of jobs 
    sleep  3s
    Click Element  xpath=//android.widget.TextView[@text="Delivery Person"]
    Click Element  xpath=//android.widget.TextView[@text="Maid"]
    Click Element  xpath=//android.widget.TextView[@text="Telecaller / BPO"]
    sleep  3s
    Click Element  id=com.apnatime.debug:id/btn_save

User should be able to update profile picture 
    sleep  3s 
    Click Element  id=com.apnatime.debug:id/tv_skip_photo
    sleep  3s
    Click Element  id=com.apnatime.debug:id/tvSeeJobs


*** Variables ***
${mir_server} =  http://localhost:4723/wd/hub
${platformName} =  Android
${platformVersion} =  11.0
${deviceName} =  emulator-5554
${app_activity} =  com.apnatime.activities.splash.SplashActivity
${app_package} =  com.apnatime.debug



${Login} =  id=com.apnatime.debug:id/et_login_number
${send} =  id=com.apnatime.debug:id/btn_send

${enter_otp} =  id=com.apnatime.debug:id/tv_title

${otp1} =  id=com.apnatime.debug:id/et_otp1
${otp2} =  id=com.apnatime.debug:id/et_otp2
${otp3} =  id=com.apnatime.debug:id/et_otp3
${otp4} =  id=com.apnatime.debug:id/et_otp4

${name} =  id=com.apnatime.debug:id/act_profile_info_et_full_name




