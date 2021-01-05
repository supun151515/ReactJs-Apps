import React, { Component } from 'react'

class EventBind extends Component {
    constructor(props) {
        super(props)
    this.clickHandler = this.clickHandler.bind(this); //third approch and react official way
        this.state = {
             message: 'Hello'
        }
    }
    
    clickHandler() {
        this.setState({
            message: 'Good Bye'
        }); 
        console.log(this);
    }
    clickHandler4 = () => {
        this.setState({
            message: 'This is try 4'
        });
    }
    render() {
        return (
            <div>{this.state.message}
                <button onClick={this.clickHandler.bind(this)}>Click now</button>
                <button onClick={()=>this.clickHandler()}>Click now</button>
                <button onClick={this.clickHandler}>Click now</button>
                <button onClick={this.clickHandler4}>Click now</button>
            </div>
        )
    }
}

export default EventBind
