import React from 'react'
import "./Slider.css"


export default class Slider extends React.Component {

  constructor(props) {
    super()
    this.formChange = this.formChange.bind(this)
    this.state = {
      value: props.startValue || 0
    }
  }

  formChange(e) {
    this.setState(
      { value: e.target.value }
    )  
  }

  render() {
    const value = this.state.value
    return (
      <div className="my-first-slider">
        <form onChange={this.formChange}> 
          <input type="range" value={value}/>
          <input type="number" value={value}/>
        </form>
      </div>
    )
  }
}