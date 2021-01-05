import React, { Component } from 'react'

class UserGreeting extends Component {
    constructor(props) {
        super(props)
    
        this.state = {
             isLoggedIn: false
        }
    }
    
    render() {

        //last method only rander if the value is true
        return this.state.isLoggedIn && <div>Welcome Supun Only</div>
       /*  return (
            this.state.isLoggedIn ?
            <div>Welcome Supun3</div> :
            <div>Welcome Guest3</div>
        ) */
        //element veriable
       /*  let message
        if(this.state.isLoggedIn){
            message = (<div>Welcome Supun1</div>)
        }
        else{
            message = <div>Welcome Guest</div>
        }
        return <div>{message}</div> */

     /*    if(this.state.isLoggedIn){
            return (
                <div>
                    Welcome Supun
                </div>
            )
        }else {
            return (
                <div>
                    Welcome Guest
                </div>
            )
        } */
        
    }
}

export default UserGreeting
