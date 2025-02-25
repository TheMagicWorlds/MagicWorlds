import NavMenu from '@components/navMenu/NavMenu.jsx';
import Hero from '@components/heroSection/hero.jsx';
import VlAssitance from '@components/vlAssistance/vlAssistance';
import Learn from '@components/learn/learn';
import Features from '@components/features/features';
import Join from '@components/Join/join';
import Footer from '@components/footer/footer';

import './App.css'

const App = () => {

  return ( 
    <>
        <NavMenu />
        <Hero />
        <VlAssitance /> 
        <Features /> 
        <Learn />
        <Join /> 
        <Footer />
    </>
  )
}
  
export default App
