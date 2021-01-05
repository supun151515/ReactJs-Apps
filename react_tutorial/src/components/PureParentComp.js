import React, { Component, PureComponent } from 'react'
import MemoComp from './MemoComp'
import PureComp from './PureComp'
import RegComp from './RegComp'

export class PureParentComp extends Component {
    constructor(props) {
        super(props)
    
        this.state = {
             name: 'Supun'
        }
    }
    componentDidMount() {
        setInterval(() =>
        {
            this.setState({
            name: 'Supun'
        })
        }, 2000)
    }
    render() {
        console.log("Parent Comp Render");
        return (
            <div>
                <h2>Parent Component</h2>
                <MemoComp name={this.state.name} />
                {/* <RegComp name={this.state.name} />
                <PureComp name={this.state.name} /> */}
            </div>
        )
    }
}

export default PureParentComp
