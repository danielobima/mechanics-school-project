import axios from "axios";
import TablePage from "./tablePage";

const Customers = () => {
  const deleteCustomer = async (record: any) => {
    try {
      await axios.post(`http://localhost:3000/query/delete_customer`, {
        customer_id: record.customer_id,
      });
      window.location.reload();
    } catch (error) {
      alert(error);
      console.log(error);
    }
  };
  return (
    <TablePage
      title="Customers"
      query="customers_query"
      insertFields={["customer_name", "customer_phone"]}
      insertName="insert_customer"
      onDelete={(record) => deleteCustomer(record)}
    />
  );
};
export default Customers;
