import React from 'react'

function ChildComponent(props) {
    return (
        <div>
            <button onClick={ () => props.greetHandler('Supun Silva')}>Greet Parents</button>
        </div>
    )
}

export default ChildComponent
