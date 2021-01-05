import React from 'react'

function Columns() {
    const items = [
        {id:1, name: 'supun'},
        {id:2, name: 'Lanka'}
    ]

    return (
        <React.Fragment>
            <tr>
            <th>ID</th>
            <th>Title</th>
            </tr>
            {
            items.map (item => (
                <React.Fragment key={item.id}>
                    <tr>
                    <td>{item.id}</td>
                    <td>{item.name}</td>
                    </tr>
                </React.Fragment>
            ))
            }
       
            
        </React.Fragment>
    )
}

export default Columns
