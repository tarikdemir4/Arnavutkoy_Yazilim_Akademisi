import React from 'react'
import Categories from './Categories'

export default function Home(props) {
  return (
    <div>{props.title}-{props.content}
        <hr/>
    <Categories categories="electronics"/>
    
    
    </div>
  )
}
