import { Delete } from "@mui/icons-material";
import {
  Button,
  IconButton,
  Stack,
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableRow,
} from "@mui/material";
import { FC } from "react";

type Props = {
  tableData: {
    [key: string]: any;
  }[];
  title: string;
  onRecordClick?: (record: any) => void;
  onDelete?: (record: any) => void;
};

const CoolTable: FC<Props> = ({
  tableData,
  title,
  onRecordClick,
  onDelete,
}) => {
  return (
    <>
      <Table size="small">
        {tableData.length > 0 && (
          <>
            <TableHead>
              <TableRow>
                {Object.keys(tableData[0]).map((header) => (
                  <TableCell key={header} sx={{ fontWeight: "bold" }}>
                    {header}
                  </TableCell>
                ))}
              </TableRow>
            </TableHead>
            <TableBody>
              {tableData.map((row, index) => (
                <TableRow
                  key={"row" + index}
                  onClick={() => {
                    if (onRecordClick) onRecordClick(row);
                  }}
                  sx={{
                    ...(onRecordClick
                      ? {
                          cursor: "pointer",
                          "&:hover": {
                            backgroundColor: "#ccc",
                          },
                        }
                      : {}),

                    transition: "background-color 0.15s",
                  }}
                >
                  {Object.values(row).map((value, index) => (
                    <TableCell key={value + Math.random() * index}>
                      {typeof value === "boolean" ? `${value}` : value}
                    </TableCell>
                  ))}
                  {onDelete !== undefined && (
                    <TableCell>
                      <IconButton onClick={() => onDelete(row)}>
                        <Delete />
                      </IconButton>
                    </TableCell>
                  )}
                </TableRow>
              ))}
            </TableBody>
          </>
        )}
      </Table>
    </>
  );
};
export default CoolTable;
