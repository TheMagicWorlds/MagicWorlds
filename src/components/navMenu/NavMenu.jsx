import logo from '@assets/images/logo.jpg';
import './NavMenu.css';

const NavMenu = () => {

    return (
        <> 
            <div id="navMenuContainer">
                <div id="navLogo">
                    <img src={logo} alt="This is a logo" />
                </div>
                <div id="menu-container">
                    <ul>
                        <li>Home</li>
                        <li>About</li>
                        <li>News</li>
                        <li>Contact</li>
                    </ul>
                </div>
            </div>
        </>
    )
}

export default NavMenu