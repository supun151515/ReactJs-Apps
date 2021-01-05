import React from 'react'

function Inline() {
    const InlineStyle = {
        fontSize: '50px',
        color: 'blue'

    }
    return (
        <div>
            <h1 style= {InlineStyle}>Inline</h1>
            <h1 className="error">Inline</h1>
        </div>
    )
}

export default Inline
