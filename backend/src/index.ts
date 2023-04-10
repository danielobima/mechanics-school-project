import express from "express";
import cors from "cors";
import connectDb from "./db";
import dotenv from "dotenv";
import setupRouter from "./routes/setup";
import queryRouter from "./routes/query";

dotenv.config();

const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(cors());
app.use("/setup", setupRouter);
app.use("/query", queryRouter);

app.listen(3000, async () => {
  try {
    await connectDb();
    console.log("Db connection established");
    console.log("Server listening on port 3000");
  } catch (error) {
    console.log(error);
    process.exit(1);
  }
});
