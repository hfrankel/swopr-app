import React, { useState } from 'react';
import { Link as RouterLink } from 'react-router-dom';
import {
  AppBar,
  Toolbar,
  IconButton,
  Link,
  Button,
  Drawer,
  List,
  ListItem,
  ListItemText,
  ListItemIcon,
  makeStyles,
  Box,
} from '@material-ui/core';
import {
  Menu as MenuIcon,
  List as ListIcon,
  Label as LabelIcon,
  Home as HomeIcon,
} from '@material-ui/icons';

const useStyles = makeStyles((theme) => ({
  menuIcon: {
    marginRight: theme.spacing(2),
  },
}));

const Navbar = () => {
  const [drawerOpen, setDrawOpen] = useState(false);
  const classes = useStyles();

  const toggleDrawer = () => {
    setDrawOpen(!drawerOpen);
  };

  const drawerItems = [
    { text: 'Home', icon: <HomeIcon /> },
    { text: 'About', icon: <LabelIcon /> },
  ];

  return (
    <>
      <AppBar position="fixed">
        <Toolbar>
          {/* TODO: work out why marginRight isn't working */}
          <IconButton
            onClick={toggleDrawer}
            className={classes.MenuIcon}
            edge="start"
          >
            <MenuIcon />
          </IconButton>
          {/* TODO: make link to home page */}
          <Link color="textPrimary" variant="h6" underline="none">
            Project Finder
          </Link>
          <Box flexGrow={1} />
          <Button size="large">Login</Button>
        </Toolbar>
        <Drawer
          anchor="top"
          variant="temporary"
          onClose={toggleDrawer}
          open={drawerOpen}
        >
          <List>
            {drawerItems.map((prop) => (
              <RouterLink to={`/${prop.text.toLowerCase()}`}>
                <ListItem onClick={toggleDrawer} button key={prop.text}>
                  <ListItemIcon>{prop.icon}</ListItemIcon>
                  <ListItemText>{prop.text}</ListItemText>
                </ListItem>
              </RouterLink>
            ))}
          </List>
        </Drawer>
      </AppBar>
    </>
  );
};

export default Navbar;
