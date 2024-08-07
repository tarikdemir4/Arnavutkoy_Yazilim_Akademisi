import React from 'react'
import CategoryItem from './CategoryItem'

export default function Categories(props) {
  return (
    <div>{" "}
    <CategoryItem category={props.categories}/>
    </div>
  )
}
