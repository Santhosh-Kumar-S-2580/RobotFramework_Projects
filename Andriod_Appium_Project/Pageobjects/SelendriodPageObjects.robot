*** Variables ***
${ContinueBTN}=             id=com.android.permissioncontroller:id/continue_button
${PERMISSION_OK_BTN}=       xpath=.//android.widget.Button[contains(@text,'OK')]
${ToastBTN}=                id=io.selendroid.testapp:id/showToastButton
${ToastMSG}=                xpath=//hierarchy/android.widget.Toast
${UserRegisterStartBTN}=    id=io.selendroid.testapp:id/startUserRegistration
${EnterUsername}=           id=io.selendroid.testapp:id/inputUsername
${EnterEmail}=              id=io.selendroid.testapp:id/inputEmail
${EnterPWD}=                id=io.selendroid.testapp:id/inputPassword
${EnterNAME}=               id=io.selendroid.testapp:id/inputName
${LANG_DropDown}=           id=io.selendroid.testapp:id/input_preferedProgrammingLanguage
${LANG_DropDown_Option}=    xpath=.//android.widget.CheckedTextView[contains(@text,'Python')]
${chkBox}=                  id=io.selendroid.testapp:id/input_adds
${RegisterBTN}=             id=io.selendroid.testapp:id/btnRegisterUser
${Username}=                id=io.selendroid.testapp:id/label_username_data
${Email}=                   id=io.selendroid.testapp:id/label_email_data
${PWD}=                     id=io.selendroid.testapp:id/label_password_data
${NAME}=                    id=io.selendroid.testapp:id/label_name_data
${PROG_LANG}=               id=io.selendroid.testapp:id/label_preferedProgrammingLanguage_data
${ACPT_chkBox}=             id=io.selendroid.testapp:id/label_acceptAdds_data


#/hierarchy/android.widget.Toast[contains(@text,'Hello selendroid toast!')]