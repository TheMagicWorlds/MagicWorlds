import './footer.css'

const Footer = () => {
    return (
        <>
            <div id="footer-container">
                <div id="footer">
                    <div id="footer-left">
                        <div id="logo">
                            <img src="" alt="This is our brand logo" />
                        </div>
                        <div id="description">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus culpa facere vel expedita magnam
                        </div>
                    </div>
                    <div id="contact-us">
                        <div id="cotanct-title">Contact us</div>
                        <div id="devider"></div>
                        <div id="address">
                            <div id="office">
                                <div id="icon">
                                    <img src="" alt="This is office icon" />
                                </div>
                                <p>San Francisco</p> 
                            </div>    
                            <div id="email">
                                <div id="icon">
                                    <img src="" alt="This is email icon" />
                                </div>
                                <p>info@aiprof.com</p>
                            </div>
                        </div> 
                        <div id="social">
                            
                        </div>
                    </div>
                </div>
                <div id="copyright">
                    This is copyright section
                </div>
            </div>
        </>
    )
}

export default Footer;