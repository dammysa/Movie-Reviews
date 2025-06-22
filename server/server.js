import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import pg from "pg";

const app = express();

app.use(cors());

app.use(express.json());

dotenv.config();

const db = new pg.Pool({
  connectionString: process.env.DB_CONN,
});

app.get("/", (req, res) => {
  res.json("rootRoute");
});

app.get("/movies", async (req, res) => {
  const result = await db.query(`SELECT * FROM movie_reviews`);
  res.json(result.rows);
});

app.post("/movies", async (req, res) => {
  const body = req.body;
  console.log(body);

  const movieFromClient = req.body.name;
  const reviewFromClient = req.body.review;
  const data = await db.query(
    `INSERT INTO movie_reviews (name, review) VALUES ($1, $2)`,
    [movieFromClient, reviewFromClient]
  );
  res.send(data);
});

app.listen("4242", () => console.log("using http://localhost:4242"));
