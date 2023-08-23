from robot.api.deco import library, keyword


@library
class wel:
    @keyword
    def hello_world(self):
        print("HELLO WORLD")

    @keyword
    def hello(self):
        return "HELLO WORLD"