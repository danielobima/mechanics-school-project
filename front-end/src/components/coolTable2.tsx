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
import { FC, JSXElementConstructor, ReactElement, ReactFragment } from "react";

type Props = {
  rows: any[];
  headers: { name: string }[];
  title: string;
  onRecordClick?: (record: any) => void;
  onDelete?: (record: any) => void;
};

const CoolTable2: FC<Props> = ({
  rows,
  headers,
  title,
  onRecordClick,
  onDelete,
}) => {
  return (
    <>
      <Table size="small">
        {rows.length && headers.length && (
          <>
            <TableHead>
              <TableRow>
                {headers.map((header) => (
                  <TableCell key={header.name} sx={{ fontWeight: "bold" }}>
                    {header.name}
                  </TableCell>
                ))}
              </TableRow>
            </TableHead>
            <TableBody>
              {rows.map((row, index) => (
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
                  {row.map(
                    (
                      value:
                        | string
                        | number
                        | boolean
                        | ReactElement<any, string | JSXElementConstructor<any>>
                        | ReactFragment
                        | null
                        | undefined,
                      index: number
                    ) => (
                      <TableCell key={`${value}` + Math.random() * index}>
                        {typeof value === "boolean" ? `${value}` : value}
                      </TableCell>
                    )
                  )}
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
export default CoolTable2;
