import { Copyright } from "@mui/icons-material";
import {
  Box,
  Button,
  Container,
  Grid,
  Paper,
  Stack,
  Toolbar,
} from "@mui/material";
import CoolTable from "../components/table";
import { FC, ReactNode, useEffect, useState } from "react";
import axios from "axios";
import AddForm from "../components/addForm";
import Title from "../components/Title";

type Props = {
  query: string;
  title: string;
  postData?: any;
  onRecordClick?: (record: any) => void;
  insertFields?: string[];
  insertName?: string;
  onDelete?: (record: any) => void;
  otherActions?: ReactNode | ReactNode[];
};
const TablePage: FC<Props> = ({
  query,
  title,
  postData,
  onRecordClick,
  insertFields,
  insertName,
  onDelete,
  otherActions,
}) => {
  const [tableData, setTableData] = useState([]);

  const [addFormOpen, setAddFormOpen] = useState(false);
  const fetchData = async () => {
    try {
      let response = postData
        ? await axios.post(`http://localhost:3000/query/${query}`, postData)
        : await axios.get(`http://localhost:3000/query/${query}`);

      setTableData(response.data.results.recordsets[0]);
    } catch (error) {
      alert("error");
      console.log(error);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);
  return (
    <Box
      component="main"
      sx={{
        backgroundColor: (theme) =>
          theme.palette.mode === "light"
            ? theme.palette.grey[100]
            : theme.palette.grey[900],
        flexGrow: 1,
        height: "100vh",
        overflow: "auto",
      }}
    >
      <Toolbar />
      <Container maxWidth="lg" sx={{ mt: 4, mb: 4, height: "80%" }}>
        <Grid container spacing={3} sx={{ height: "100%" }}>
          <Grid item xs={12} sx={{ height: "100%" }}>
            <Paper
              sx={{
                p: 2,
                display: "flex",
                flexDirection: "column",
                overflow: "auto",
                height: "100%",
                gap: 1,
              }}
            >
              <Title>{title}</Title>
              <Stack direction={"row"} spacing={2}>
                {insertFields && (
                  <Button
                    variant="contained"
                    size="small"
                    onClick={() => setAddFormOpen(true)}
                  >
                    Add new
                  </Button>
                )}
                {otherActions}
              </Stack>

              <CoolTable
                title={title}
                tableData={tableData}
                onRecordClick={onRecordClick}
                onDelete={onDelete}
              />
            </Paper>
          </Grid>
        </Grid>
        <Copyright sx={{ pt: 4 }} />
      </Container>
      {insertFields !== undefined && insertName && (
        <AddForm
          open={addFormOpen}
          setOpen={setAddFormOpen}
          insertName={insertName}
          insertFields={insertFields}
        />
      )}
    </Box>
  );
};
export default TablePage;
