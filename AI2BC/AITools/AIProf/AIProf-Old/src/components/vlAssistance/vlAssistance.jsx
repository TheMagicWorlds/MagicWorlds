import vla from "@assets/images/vla2.png";
import './vlAssistance.css'

const VlAssistance = () => {
  return (
    <div id="vla-section">
      <h3>Learn Anything You Want to learn</h3>
      <div id="vla-container">
        <div id="left-block">
          <img src={vla} alt="This a vla screenshot" />
        </div>
        <div id="right-block">
          <div id="top">
            <p>
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsum
              reiciendis dolorum molestiae?
            </p>
          </div>
          <div id="down">
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat
              error nemo temporibus eum esse exercitationem, porro saepe
              delectus repellendus, voluptate recusandae soluta quaerat tempora
              tempore dolorem quae, optio at reiciendis?
            </p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default VlAssistance;
