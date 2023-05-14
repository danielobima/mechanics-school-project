import * as React from "react";
import ListItemButton from "@mui/material/ListItemButton";
import ListItemIcon from "@mui/material/ListItemIcon";
import ListItemText from "@mui/material/ListItemText";
import ListSubheader from "@mui/material/ListSubheader";
import AssignmentIcon from "@mui/icons-material/Assignment";
import {
  Construction,
  DataUsage,
  DirectionsCar,
  Engineering,
  Home,
  HomeRepairService,
  Inventory,
  Paid,
  Person,
} from "@mui/icons-material";

export const mainListItems = (
  <React.Fragment>
    <ListItemButton href="/">
      <ListItemIcon>
        <Home />
      </ListItemIcon>
      <ListItemText primary="Dashboard" />
    </ListItemButton>
    <ListItemButton href="/customers">
      <ListItemIcon>
        <Person />
      </ListItemIcon>
      <ListItemText primary="Customers" />
    </ListItemButton>
    <ListItemButton href="/mechanics">
      <ListItemIcon>
        <Engineering />
      </ListItemIcon>
      <ListItemText primary="Mechanics" />
    </ListItemButton>
    <ListItemButton href="/workshops">
      <ListItemIcon>
        <HomeRepairService />
      </ListItemIcon>
      <ListItemText primary="Workshops" />
    </ListItemButton>
    <ListItemButton href="/vehicles">
      <ListItemIcon>
        <DirectionsCar />
      </ListItemIcon>
      <ListItemText primary="Vehicles" />
    </ListItemButton>
    <ListItemButton href="/jobs">
      <ListItemIcon>
        <Construction />
      </ListItemIcon>
      <ListItemText primary="Jobs" />
    </ListItemButton>
    <ListItemButton href="/spareParts">
      <ListItemIcon>
        <Inventory />
      </ListItemIcon>
      <ListItemText primary="Spare Parts" />
    </ListItemButton>
    <ListItemButton href="/invoices">
      <ListItemIcon>
        <Paid />
      </ListItemIcon>
      <ListItemText primary="Invoices" />
    </ListItemButton>
    <ListItemButton href="/sparePartsUsage">
      <ListItemIcon>
        <DataUsage />
      </ListItemIcon>
      <ListItemText primary="Spare parts usage" />
    </ListItemButton>
  </React.Fragment>
);

export const secondaryListItems = (
  <React.Fragment>
    <ListSubheader component="div" inset>
      Saved reports
    </ListSubheader>
    <ListItemButton>
      <ListItemIcon>
        <AssignmentIcon />
      </ListItemIcon>
      <ListItemText primary="Current month" />
    </ListItemButton>
    <ListItemButton>
      <ListItemIcon>
        <AssignmentIcon />
      </ListItemIcon>
      <ListItemText primary="Last quarter" />
    </ListItemButton>
    <ListItemButton>
      <ListItemIcon>
        <AssignmentIcon />
      </ListItemIcon>
      <ListItemText primary="Year-end sale" />
    </ListItemButton>
  </React.Fragment>
);
