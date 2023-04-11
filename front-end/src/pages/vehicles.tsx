import axios from "axios";
import TablePage from "./tablePage";

const Vehicles = () => {
  const deleteVehicle = async (record: any) => {
    try {
      await axios.post(`http://localhost:3000/query/delete_vehicle`, {
        vehicle_id: record.vehicle_id,
      });
      window.location.reload();
    } catch (error) {
      alert(error);
      console.log(error);
    }
  };
  return (
    <TablePage
      title="Vehicles"
      query="vehicles_query"
      insertFields={["make", "model", "year", "customer_id"]}
      insertName="insert_vehicle"
      onDelete={(record) => deleteVehicle(record)}
    />
  );
};
export default Vehicles;
