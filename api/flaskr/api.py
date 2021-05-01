from flask import Flask
from flask import jsonify
from flask_cors import CORS

app = Flask(__name__)
cors = CORS(app)

@app.route('/health>', methods=['GET'])
def health(chrom, start, stop):
    return jsonify({"health": "okay"})

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=3061)


    