import { useState } from "react";
import "./App.css";
import Dashboard from "./components/Dashboard";
import { RouterProvider, createBrowserRouter } from "react-router-dom";
import Home from "./components/Home";

const router = createBrowserRouter([
  {
    path: "/",
    element: <Dashboard />,
    children: [{ index: true, element: <Home /> }],
  },
]);
function App() {
  const [count, setCount] = useState(0);

  return <RouterProvider router={router} />;
}

export default App;
