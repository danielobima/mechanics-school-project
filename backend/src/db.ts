import sql from "mssql";
import dotenv from "dotenv";

dotenv.config();

const connectDb = async () => {
  await sql.connect({
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    server: process.env.DB_HOST,
    database: process.env.DB_DATABASE,
    options: {
      trustServerCertificate: true,
    },
  });
  return sql;
};
export default connectDb;
