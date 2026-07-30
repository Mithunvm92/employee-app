import { useEffect, useState } from "react";
import axios from "axios";
import "./App.css";

function App() {
  const [employees, setEmployees] = useState([]);

  const [form, setForm] = useState({
    name: "",
    department: "",
    email: "",
    salary: ""
  });

  const API = "http://localhost:5000";

  const loadEmployees = async () => {
    const res = await axios.get(`${API}/employees`);
    setEmployees(res.data);
  };

  useEffect(() => {
    loadEmployees();
  }, []);

  const addEmployee = async () => {
    await axios.post(`${API}/employees`, form);

    setForm({
      name: "",
      department: "",
      email: "",
      salary: ""
    });

    loadEmployees();
  };

  const deleteEmployee = async (id) => {
    await axios.delete(`${API}/employees/${id}`);
    loadEmployees();
  };

  return (
    <div className="container">

      <h1>Employee Management System</h1>

      <div className="form">

        <input
          placeholder="Name"
          value={form.name}
          onChange={(e)=>setForm({...form,name:e.target.value})}
        />

        <input
          placeholder="Department"
          value={form.department}
          onChange={(e)=>setForm({...form,department:e.target.value})}
        />

        <input
          placeholder="Email"
          value={form.email}
          onChange={(e)=>setForm({...form,email:e.target.value})}
        />

        <input
          placeholder="Salary"
          value={form.salary}
          onChange={(e)=>setForm({...form,salary:e.target.value})}
        />

        <button onClick={addEmployee}>
          Add Employee
        </button>

      </div>

      <table>

        <thead>

          <tr>

            <th>ID</th>

            <th>Name</th>

            <th>Department</th>

            <th>Email</th>

            <th>Salary</th>

            <th>Action</th>

          </tr>

        </thead>

        <tbody>

          {employees.map(emp=>(
            <tr key={emp.id}>

              <td>{emp.id}</td>

              <td>{emp.name}</td>

              <td>{emp.department}</td>

              <td>{emp.email}</td>

              <td>{emp.salary}</td>

              <td>

                <button
                  onClick={()=>deleteEmployee(emp.id)}
                >
                  Delete
                </button>

              </td>

            </tr>
          ))}

        </tbody>

      </table>

    </div>
  );
}

export default App;
