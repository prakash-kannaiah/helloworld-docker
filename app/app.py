# app/app.py

from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "<h1>Hello from Docker Lite.v1.2!</h1>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
