from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS
import os

app = Flask(__name__)
CORS(app)

DB_USER = os.getenv("DB_USER", "postgres")
DB_PASSWORD = os.getenv("DB_PASSWORD", "password")
DB_HOST = os.getenv("DB_HOST", "db")
DB_NAME = os.getenv("DB_NAME", "employees")

app.config["SQLALCHEMY_DATABASE_URI"] = (
    f"postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:5432/{DB_NAME}"
)

app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

db = SQLAlchemy(app)


class Employee(db.Model):
    __tablename__ = "employees"

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100))
    department = db.Column(db.String(100))
    email = db.Column(db.String(100))
    salary = db.Column(db.Integer)


@app.route("/")
def home():
    return {"message": "Employee Backend Running"}


@app.route("/employees", methods=["GET"])
def get_employees():
    employees = Employee.query.all()

    result = []

    for e in employees:
        result.append({
            "id": e.id,
            "name": e.name,
            "department": e.department,
            "email": e.email,
            "salary": e.salary
        })

    return jsonify(result)


@app.route("/employees", methods=["POST"])
def add_employee():

    data = request.json

    employee = Employee(
        name=data["name"],
        department=data["department"],
        email=data["email"],
        salary=data["salary"]
    )

    db.session.add(employee)
    db.session.commit()

    return {"message": "Employee Added"}, 201


@app.route("/employees/<int:id>", methods=["DELETE"])
def delete_employee(id):

    employee = Employee.query.get(id)

    if employee:
        db.session.delete(employee)
        db.session.commit()

    return {"message": "Deleted"}


if __name__ == "__main__":
    with app.app_context():
        db.create_all()

    app.run(host="0.0.0.0", port=5000)
