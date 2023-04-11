import { Router } from "express";
import { readFileSync } from "fs";
import sql from "mssql";

const queryRouter = Router();

queryRouter.get("/:fileName", async (req, res, next) => {
  try {
    let file = readFileSync(
      `${process.cwd()}/sql_statements/${req.params.fileName}.sql`
    ).toString();

    let results = await sql.query(file);
    res.json({ results });
  } catch (error) {
    next(error);
  }
});

queryRouter.post("/:fileName", async (req, res, next) => {
  try {
    let file = readFileSync(
      `${process.cwd()}/sql_statements/${req.params.fileName}.sql`
    ).toString();

    for (let x of Object.entries(req.body)) {
      file = file.replace(`<<${x[0]}>>`, x[1] as string);
    }
    console.log(file);

    let results = await sql.query(file);
    res.json({ results });
  } catch (error) {
    next(error);
  }
});

export default queryRouter;
