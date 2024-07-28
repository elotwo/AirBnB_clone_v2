#!/usr/bin/python3
"""
web pakage
This package contains the Flask web application for the AirBnB clone project.

"""
from flask import Flask
app = Flask(__name__)


@app.route("/", strict_slashes=False)
def hello():
    """
Route handler for the root URL.
Returns:
str: The string "Hello HBNB!".
    """
    return ('Hello HBNB!')


@app.route("/hbnb", strict_slashes=False)
def dem():
    """
    Route handler for
    str: The string 'HBNB'
    """
    return ('HBNB')


if __name__ == "__main__":
    """
The main entry point of the Flask application.
Runs the Flask application on host 0.0.0.0 and port 5000.
    """
    app.run(host="0.0.0.0", port=5000)
