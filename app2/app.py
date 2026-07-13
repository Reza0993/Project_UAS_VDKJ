from flask import Flask, jsonify
import mysql.connector
import os

app = Flask(__name__)

@app.route("/")
def index():
    conn = mysql.connector.connect(
        host=os.environ["DB_HOST"],
        user=os.environ["DB_USER"],
        password=os.environ["DB_PASS"],
        database=os.environ["DB_NAME"]
    )

    cursor = conn.cursor()
    cursor.execute("SELECT * FROM posts LIMIT 5")

    result = cursor.fetchall()

    cursor.close()
    conn.close()

    return jsonify({
        "app":"App2",
        "data":result
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0",port=8080)
