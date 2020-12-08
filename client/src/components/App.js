import React from 'react';
import Navbar from './Navbar';
import { BrowserRouter as Router, Switch, Route, Link } from 'react-router-dom';
const App = () => {
  return (
    <>
      <Router>
        <Switch>
          <Navbar />
        </Switch>
      </Router>
      <h1>My App</h1>
    </>
  );
};

export default App;
