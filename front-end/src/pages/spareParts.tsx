import {
  Button,
  Dialog,
  DialogContent,
  DialogTitle,
  Stack,
  TextField,
} from "@mui/material";
import TablePage from "./tablePage";
import axios from "axios";
import { useRef, useState } from "react";

const SpareParts = () => {
  const formRef = useRef<HTMLFormElement>(null);
  const [dialogOpen, setDialogOpen] = useState(false);
  const updateInventory = async (values: any) => {
    try {
      await axios.post(
        "http://localhost:3000/query/update_spare_part_inventory",
        values
      );
      window.location.reload();
    } catch (error) {
      alert(error);
      console.log(error);
    }
  };
  return (
    <>
      <TablePage
        title="Spare Parts"
        query="spare_parts_query"
        insertFields={["part_name", "cost_per_unit", "quantity_in_stock"]}
        insertName="insert_spare"
        otherActions={
          <Button
            variant="contained"
            size="small"
            onClick={() => setDialogOpen(true)}
          >
            Update Inventory
          </Button>
        }
      />
      <Dialog open={dialogOpen} onClose={() => setDialogOpen(false)}>
        <DialogTitle>Update Inventory</DialogTitle>
        <DialogContent>
          <Stack
            component={"form"}
            spacing={1}
            onSubmit={(e) => {
              e.preventDefault();

              if (!formRef.current) {
                return;
              }
              const values = Object.values(formRef.current).reduce(
                (obj, field) => {
                  obj[field.name] = field.value;
                  return obj;
                },
                {}
              );
              console.log(values);
              updateInventory(values);
            }}
            ref={formRef}
          >
            <TextField label={"part_id"} name={"part_id"} />
            <TextField label={"quantity_in_stock"} name={"quantity_in_stock"} />
            <Button type="submit">Submit</Button>
          </Stack>
        </DialogContent>
      </Dialog>
    </>
  );
};

export default SpareParts;
