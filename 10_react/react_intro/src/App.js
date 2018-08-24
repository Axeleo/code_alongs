import React, { Component } from 'react';

// const Copyright = require('./Copyright')
// React way
// ||
// VVV
import Copyright from './Copyright'
import Hello from "./Hello";
import LikeButton from "./LikeButton"
import Slider from "./Slider"

class App extends Component {
  render() {
    return (
      <div className="App">
        <h1>Demo</h1>
        <p>good stuff</p>
        {/* Stateless Components */}
        <Copyright year="2017"/>
        <Hello name="dt"/>
        {/* Stateful Components */}
        <LikeButton count="7"/>
        <Slider />
        <Slider startValue="50" />
      </div>
    );
  }
}

export default App;
