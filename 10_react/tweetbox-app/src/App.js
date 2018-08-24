import React, { Component } from 'react';

import './App.css';

import Tweetbox from './TweetBox'
import Bar from './Bar'

class App extends Component {
  render() {
    return (
      <div className="App">
        {/* <Bar width="55%" color="green"/> */}
        <Tweetbox maxCharlength="60" />
        <Tweetbox />
      </div>
    );
  }
}

export default App;
