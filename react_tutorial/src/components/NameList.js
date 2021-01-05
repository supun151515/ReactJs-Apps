import React from 'react'
import Person from './Person'

function NameList() {
     const names = ['Bruce', 'Clark', 'Diana']
/*
     return (
        <div>
            {
                names.map(name => <h3>{name}</h3>)
            }
        </div>
    ) */
    //second method
    /* const nameList = names.map(name => <h2>{name}</h2>)
    return <div>{nameList} </div> */
    const persons = [
        {
            id:1,
            name: 'Bruce',
            age: 30,
            skills: 'React'
        },
        {
            id:2,
            name: 'Clark',
            age: 40,
            skills: 'Redux'
        },
        {
            id:3,
            name: 'Diana',
            age: 50,
            skills: 'NextJs'
        },
    ]
    const perosnsList = persons.map(person => (
    <Person key={person.id} person={persons}></Person>
    ))
    return <div>{perosnsList}</div>
}

export default NameList
