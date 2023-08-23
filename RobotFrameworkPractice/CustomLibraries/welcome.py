from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn
from SeleniumLibrary import SeleniumLibrary

@library
class welcome:


    def __init__(self):
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def page_title(self):
        return self.selLib.get_title()
