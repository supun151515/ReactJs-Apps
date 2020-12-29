import React from 'react';

class Prices extends React.Component {
    state = {
        currency: 'USD'
    }

    render() {
        let list ='';
        let list2 = this.props.bpi;
        list2 = list2[this.state.currency];
        list = <li className="list-group=item">
            Bitcoin rate for {list2.description}
            : <span className="badge badge-primary">
                {list2.code}
            </span>
            <strong> {list2.rate}</strong>
        </li>;
        return (
        <div>
            <ul className="list-group">
                {list}
            </ul>
            <br />
            <select onChange={e =>this.setState({currency: e.target.value})}
            className="form-control" >
                <option value="USD">USD</option>
                <option value="GBP">GBP</option>
                <option value="EUR">EUR</option>
            </select>
        </div>
        );
        
    }
}

export default Prices;