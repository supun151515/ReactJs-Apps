import React, {Component} from 'react';

class Welcome extends Component {
    render() {
        const {name, heroName} = this.props;
        
        return (
        <div>
        <h1>Class Component</h1>
        <p>Name: {name}</p>
        <p>Hero Name: {heroName}</p>
        <p>{this.props.children}</p>
        </div>);
    }
}

export default Welcome;