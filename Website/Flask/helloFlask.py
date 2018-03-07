#Web app tutorial: https://code.tutsplus.com/tutorials/creating-a-web-app-from-scratch-using-python-flask-and-mysql--cms-22972

#Installing Flask on Windows: http://www1.cmc.edu/pages/faculty/alee/cs40/penv/installFlaskOnWindows.html

from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
	return "Hello Flask!"

if __name__ == "__main__":
	app.run()
