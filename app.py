from flask import Flask

def create_app():
    app = Flask(__name__)
    print("inside create app func")

    @app.route('/')
    def home():
        print("inside hme func")
        return "Hello, Flask is running smoothly!"
    
    return app

if __name__ == '__main__':
    app = create_app()

    app.run(host='0.0.0.0', port=80, debug=True)