import dotenv from "dotenv";
import oracle, { Connection } from "oracledb";

oracle.outFormat = oracle.OUT_FORMAT_OBJECT;
dotenv.config();

export let sql: Connection = null;
const connectDb = async () => {
  sql = await oracle.getConnection({
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    connectString: process.env.DB_HOST,
    // privilege: oracle.DEFAULT,
  });

  // await sql.connect({
  //   user: process.env.DB_USERNAME,
  //   password: process.env.DB_PASSWORD,
  //   server: process.env.DB_HOST,
  //   database: process.env.DB_DATABASE,
  //   options: {
  //     trustServerCertificate: true,
  //   },
  // });
  return sql;
};

export default connectDb;
