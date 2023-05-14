import "./App.css";
import Dashboard from "./components/Dashboard";
import { RouterProvider, createBrowserRouter } from "react-router-dom";
import Home from "./pages/Home";
import TablePage from "./pages/tablePage";
import JobSpareParts from "./pages/jobSpareParts";
import Customers from "./pages/customers";
import Vehicles from "./pages/vehicles";
import SpareParts from "./pages/spareParts";
import { ThemeProvider, createTheme } from "@mui/material";

const router = createBrowserRouter([
  {
    path: "/",
    element: <Dashboard />,
    children: [
      { index: true, element: <Home /> },
      {
        element: <Customers />,
        path: "/customers",
      },
      {
        element: (
          <TablePage
            title="Mechanics"
            query="mechanics_query"
            insertFields={["mechanic_name", "workshop_id"]}
            insertName="insert_mechanic"
          />
        ),
        path: "/mechanics",
      },
      {
        element: (
          <TablePage
            title="Workshops"
            query="workshops_query"
            insertFields={["workshop_name", "location"]}
            insertName="insert_workshop"
          />
        ),
        path: "/workshops",
      },
      {
        element: <Vehicles />,
        path: "/vehicles",
      },
      {
        element: <SpareParts />,
        path: "/spareParts",
      },
      {
        element: (
          <TablePage
            title="Jobs"
            query="jobs_query"
            onRecordClick={(record) => {
              window.location.pathname = "/jobSpareParts/" + record.JOB_ID;
            }}
            insertFields={[
              "vehicle_id",
              "mechanic_id",
              "workshop_id",
              "start_time",
              "end_time",
              "job_status",
              "job_description",
              "is_paid",
            ]}
            insertName="insert_job"
          />
        ),
        path: "/jobs",
      },
      {
        element: <JobSpareParts />,
        path: "/jobSpareParts/:job_id",
      },
      {
        element: <TablePage title="Invoices" query="invoices_query" />,
        path: "/invoices",
      },
      {
        element: (
          <TablePage
            title="Spare Parts Usage Summary"
            query="spare_parts_usage_query"
          />
        ),
        path: "/sparePartsUsage",
      },
    ],
  },
]);
function App() {
  const theme = createTheme({
    palette: {
      primary: {
        main: "#000000",
      },
    },
  });
  return (
    <ThemeProvider theme={theme}>
      <RouterProvider router={router} />
    </ThemeProvider>
  );
}

export default App;
