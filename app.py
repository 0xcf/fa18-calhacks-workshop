from flask import Flask, request
from subprocess import check_output


app = Flask(__name__)


@app.route('/')
def index():
    return "Hello world!"


@app.route('/echo/<to_echo>')
def echo(to_echo):
    return to_echo

"""
@app.route('/whoami')
def whoami():
    return check_output(['whoami'],)


@app.route('/myip')
def myip():
    return request.remote_addr


@app.route('/headers')
def headers():
    return request.headers
"""
