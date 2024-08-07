import { useState } from 'react'
import Header from './Header'
import Footer from './Footer'
import Home from './Home'

function App() {
  return (
    <>
<Header title="Header component"></Header>
<Home title="Home component" content="lorem Home"></Home>
<Footer title="Footer component" content="Lorem Footer"></Footer>
    </>
  )
}

export default App
