from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn
@library
class QuitBrowser:
    def __init__(self):
        self.sel = BuiltIn().get_library_instance("SeleniumLibrary")
    @keyword
    def close_Quit(self):
        self.sel.close_browser()
