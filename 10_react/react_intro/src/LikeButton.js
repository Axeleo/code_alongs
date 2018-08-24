import React from 'react'

class LikeButton extends React.Component {

  constructor() {
    super()
    this.handleClick = this.handleClick.bind(this)
    this.state = {
      count: 0
    }
  }

  handleClick() {
    this.setState({
      count: this.state.count + 1
    })
  }

  render() {
    return (
      <div>
        <button onClick={this.handleClick}>like</button>
        <span>{this.state.count}</span>
      </div>
    )
  } 
}

export default LikeButton


