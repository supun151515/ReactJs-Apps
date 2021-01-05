import React, { Component } from 'react'

class HoverCounter extends Component {
    constructor(props) {
        super(props)
    
        this.state = {
             count: 0
        }
    }
    hoverHandler = () => {
        this.setState(prevState => {
            return {count : prevState.count + 1}
        })
    }
    render() {
        const {count} = this.state
        return (
            <div>
               <h2 onMouseOver={this.hoverHandler}>Hovered {count} times</h2> 
            </div>
        )
    }
}

export default HoverCounter
