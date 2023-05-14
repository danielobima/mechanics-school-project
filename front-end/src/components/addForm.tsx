import {
  Button,
  Dialog,
  DialogContent,
  DialogTitle,
  Stack,
  TextField,
} from "@mui/material";
import axios from "axios";
import { Dispatch, FC, SetStateAction, useRef } from "react";

type Props = {
  open: boolean;
  setOpen: Dispatch<SetStateAction<boolean>>;
  insertFields: string[];
  insertName: string;
};
const AddForm: FC<Props> = ({ open, setOpen, insertFields, insertName }) => {
  const formRef = useRef<HTMLFormElement>(null);
  return (
    <Dialog open={open} onClose={() => setOpen(false)}>
      <DialogTitle>Add new record</DialogTitle>
      <DialogContent>
        <Stack
          component={"form"}
          spacing={1}
          py={1}
          onSubmit={async (e) => {
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
            try {
              await axios.post(
                `http://localhost:3000/query/${insertName}`,
                values
              );
              window.location.reload();
            } catch (error) {
              alert(error);
              console.log(error);
            }
          }}
          ref={formRef}
        >
          {insertFields.map((field) => (
            <TextField key={field} label={field} name={field} />
          ))}
          <Button type="submit">Submit</Button>
        </Stack>
      </DialogContent>
    </Dialog>
  );
};

export default AddForm;
