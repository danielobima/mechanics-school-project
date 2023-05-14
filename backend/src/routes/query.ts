import dayjs from "dayjs";
import { Router } from "express";
import { readFileSync } from "fs";
import { sql } from "../db";

const queryRouter = Router();

queryRouter.get("/:fileName", async (req, res, next) => {
  try {
    let file = readFileSync(
      `${process.cwd()}/sql_statements/${req.params.fileName}.sql`
    ).toString();
    console.log(dayjs().toISOString(), ">>>", file);
    let results = await sql.execute(file);
    res.json(results);
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
      //use regex to check if x[1] is a date
      //if it is, then convert it to a date
      //if it is not, then leave it as a string
      let dateRegex = new RegExp(
        "^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2} [0-9]{2}:[0-9]{2}"
      );
      if (dateRegex.test(x[1] as string)) {
        x[1] = `TO_TIMESTAMP('${dayjs(x[1] as string).format(
          "YYYY-MM-DD HH:mm"
        )}', 'YYYY-MM-DD HH24:MI')`;
      }

      file = file.replace(`<<${x[0]}>>`, x[1] ? (x[1] as string) : "NULL");
    }
    console.log(dayjs().toISOString(), ">>>", file);

    let results = await sql.execute(file, [], { autoCommit: true });
    res.json(results);
  } catch (error) {
    next(error);
  }
});

export default queryRouter;
