import React from "react"
import './TweetBox.css'
import Bar from './Bar'


export default class TweetBox extends React.Component {

  constructor(props) {
    super()
    this.handleChange = this.handleChange.bind(this)
    this.state = {
      content: '',
      maxCharLength: props.maxCharlength || 140
    }
  }

  handleChange(e) {
    // might not work in rare cases
    // this.setState({
    //   content: e.target.value
    // })

    // this method is you are reading from state, in this case it is not relevant
    e.persist()
    this.setState((prevState, props) => {
      return { content: e.target.value }
    })
    console.log(this.state.content)
  }

  render() {
    // const maxChars = 20
    // const charsRemain = maxChars - this.state.content.length
    // const isDisabled = this.state.content.length <= 0 || this.state.content.length > maxChars

    // Destructuring
    const { content } = this.state
    const { maxCharLength } = this.state
    const charsRemain = maxCharLength - content.length
    const isDisabled = content.length <= 0 || content.length > maxCharLength

    const spanClassLength = charsRemain < 10 ? "warning" : ''
    const barLength = charsRemain / maxCharLength * 100 

    return (
      <div>
        <Bar width={`${barLength}%`}/>
        <textarea onChange={this.handleChange}></textarea>
        <footer>
          <span className={spanClassLength}>{charsRemain}</span>
          <button disabled={isDisabled}>Tweet</button>
        </footer>
      </div>
    )
  }
}

