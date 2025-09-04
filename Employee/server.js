const express = require("express");
const mysql = require("mysql");
const app = express();
const PORT = 3000;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));



// MySQL connection
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "employee_db"
});

db.connect((err) => {
  if (err) throw err;
  console.log("✅ Connected to MySQL database");
});

// Serve frontend files (Public Folder)
app.use(express.static("public"));


app.get("/", (req, res) => {
  res.send("✅ Employee Server is Running!");
});


app.get("/employees", (req, res) => {
  db.query("SELECT * FROM employees", (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});

//Post new employee
app.post("/employees", (req, res) => {
  const {First_Name, Last_Name, Email, Department } = req.body;

  
  if (!First_Name || !Last_Name || !Email || !Department) {
    return res.status(400).json({ error: "All fields are required" });
  }

const sql = "INSERT INTO employees (First_Name, Last_Name, Email, Department) VALUES (?, ?, ?, ?)";
  db.query(sql, [First_Name, Last_Name, Email, Department], (err, result) => {
    if (err) {
      console.error("DB error:", err);
      return res.status(500).json({ error: "Database error" });
    }
    return res.json({ message: "Employee added", id: result.insertId });
  });
  })





// Start server
app.listen(PORT, () => {
  console.log(`🚀 Server running at http://localhost:${PORT}`);
});
