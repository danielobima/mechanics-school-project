import { FC } from "react";
import TablePage from "./tablePage";
import { useParams } from "react-router-dom";

type Props = {};
const JobSpareParts: FC<Props> = () => {
  const { job_id } = useParams();
  return (
    <TablePage
      title="Job spare parts"
      query="job_spare_parts_query"
      postData={{ job_id }}
      insertFields={["job_id", "part_id", "quantity_used", "cost"]}
      insertName="insert_job_part"
    />
  );
};
export default JobSpareParts;
