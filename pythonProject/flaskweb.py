from flask import Flask

app = Flask(__name__)  # creating the Flask class object


@app.route('/')  # decorator drfines the
def home():
    # return "hello, this is our first flask website";
    return "<h1>Hello!</h1>"


if __name__ == '__main__':
    app.run(debug=True)