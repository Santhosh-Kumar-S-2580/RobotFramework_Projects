# open Notepad ,write content & save
# from pywinauto import application
#
# app=application.Application()
# app.start("Notepad.exe")
# #Method 1
# # dlg=app.window(title='Untitled - Notepad')
# # dlg.Edit.type_keys("HELLO WORLD!",with_spaces=True)
#
# #Method 2
# app.Notepad.Edit.type_keys("HELLO WORLD!",with_spaces=True)
# app.Notepad.menu_select("File->SaveAs")
# app.SaveAs.Edit.set_edit_text("sample.txt")
# app.SaveAs.save.click(double=True)

# Print the content or save as pdf
# from pywinauto.application import Application
# app=Application(backend='uia').start('notepad.exe')
# app.UntitledNotepad.menu_select('File->Print')
# app.PrintDialog.PrintButton.click()
# app.Dialog3['File name:Edit'].set_text('demo')
# app.Dialog3.SaveButton.click()



# Read the content from notepad
# from pywinauto import application
#
# app=application.Application()
# app.start("Notepad.exe")
# app.Notepad.menu_select("File->Open")
# app.Open.Edit.set_edit_text('sample.txt')
# app.Open.Open.click(double=True)
# print(app.Notepad.Edit.window_text())


# Write Content ,save,close application
# from pywinauto import application
#
# app=application.Application()
# app.start("Notepad.exe")
# app.Notepad.Edit.type_keys("HELLO WORLD!HELLO WORLD!",with_spaces=True)
# app.Notepad.menu_select("File->SaveAs")
# app.SaveAs.Edit.set_edit_text("sample3.txt")
# app.SaveAs.save.click(double=True)
# app.Notepad.menu_select("File->Exit")




from pywinauto import application

app=application.Application()
app.start("Notepad.exe")
app.Notepad.menu_select("File->Open")
app.Open.Edit.set_edit_text('sample3.txt')
app.Open.Open.click(double=True)
app.Notepad.Edit.type_keys("HAI......HELLO WORLD!HELLO WORLD!",with_spaces=True)
# app.Notepad.menu_select("File->SaveAs")
# app.SaveAs.Edit.set_edit_text("sample3.txt")
# app.SaveAs.save.click(double=True)