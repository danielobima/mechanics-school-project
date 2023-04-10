import { Router } from "express";
import { readFileSync } from "fs";
import sql from "mssql";

const setupRouter = Router();

setupRouter.get("/tables", async (_, res, next) => {
  try {
    let createTableScript = readFileSync(
      `${process.cwd()}/sql_statements/create_table.sql`
    ).toString();
    let results = await sql.query(createTableScript);
    res.json({ results });
  } catch (error) {
    next(error);
  }
});

setupRouter.get("/insert", async (_, res, next) => {
  try {
    let insertScript = readFileSync(
      `${process.cwd()}/sql_statements/insert_data.sql`
    ).toString();
    let results = await sql.query(insertScript);
    res.json({ results });
  } catch (error) {
    next(error);
  }
});

setupRouter.get("/triggers", async (_, res, next) => {
  try {
    let triggersScript = readFileSync(
      `${process.cwd()}/sql_statements/triggers.sql`
    ).toString();
    let results = await sql.query(triggersScript);
    res.json({ results });
  } catch (error) {
    next(error);
  }
});

export default setupRouter;
