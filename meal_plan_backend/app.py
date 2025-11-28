from flask import Flask, request, jsonify
import pandas as pd

app = Flask(__name__)

# Load dataset
dataset = pd.read_csv("Final list.csv")

@app.route("/recommend", methods=["POST"])
def recommend_meals():
    data = request.json
    age = data.get("age")
    weight = data.get("weight_kg")
    height = data.get("height_cm")
    gender = data.get("gender")
    activity = data.get("activity_level")
    goal = data.get("goal")

    if not all([age, weight, height, gender, activity, goal]):
        return jsonify({"error": "Missing parameters"}), 400

    # Example meal selection logic (replace with actual recommendation logic)
    recommended_meals = dataset.sample(n=3)["food"].tolist()

    return jsonify({"meals": recommended_meals})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
