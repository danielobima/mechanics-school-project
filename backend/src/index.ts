import express from "express";
import cors from "cors";
import connectDb from "./db";
import dotenv from "dotenv";
import queryRouter from "./routes/query";
import { exec } from "child_process";

dotenv.config();

const app = express();

const execPromise = (command: string) => {
  return new Promise((resolve, reject) => {
    exec(command, (error, stdout, stderr) => {
      if (error) reject(error);
      else resolve(stdout);
    });
  });
};

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(cors());
app.use("/query", queryRouter);

app.listen(3000, async () => {
  try {
    console.log(process.cwd());
    await execPromise(
      `export LD_LIBRARY_PATH=${process.cwd()}/instantclient_21_10`
    );
    await connectDb();
    console.log("Db connection established");
    console.log("Server listening on port 3000");

    console.log("Hello world");
  } catch (error) {
    console.log(error);
    process.exit(1);
  }
});
