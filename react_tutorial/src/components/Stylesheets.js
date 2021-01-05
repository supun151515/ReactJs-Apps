import React from 'react'
import './myClass.css';
function Stylesheets(props) {
    let className = props.primary ? 'primary' : ''
    return (
        <div>
            <h1 className={ `${className} font-xl`}>StyleSheets</h1>
        </div>
    )
}

export default Stylesheets
