*** Variables ***
${MoreOptions} =      xpath=//android.widget.ImageView[contains(@content-desc,'More options')]
${ChooseTheme} =      xpath=//*[contains(@text,'Choose theme')]
${ThemeSelect} =      xpath=//*[contains(@text,'Dark')]
${ClickOK} =          xpath=//*[contains(@text,'OK')]
${CalcBtns}=          xpath=//android.widget.ImageButton
${second_BTN}=        id=com.google.android.calculator:id/digit_2
${fifth_BTN}=         id=com.google.android.calculator:id/digit_5
${ADD_BTN}=           id=com.google.android.calculator:id/op_add
${MUL_BTN}=           id=com.google.android.calculator:id/op_mul
${CLR_BTN}=           id=com.google.android.calculator:id/clr
${EQLTO_BTN}=         id=com.google.android.calculator:id/eq
${result}=            xpath=//android.widget.TextView[contains(@resource-id,'com.google.android.calculator:id/result_final')]


#resource-id
#com.google.android.calculator:id/result_preview
#com.google.android.calculator:id/result_final

#com.google.android.calculator:id/result_container