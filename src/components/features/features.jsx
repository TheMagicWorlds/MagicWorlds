import { useEffect, useRef } from "react";
import "./features.css";

const featureContentData = [
  {
    title: "Open Response",
    description:
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos dolore laborum reprehenderit ullam vitae quod!",
  },
  {
    title: "Formative Assessment",
    description:
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos dolore laborum reprehenderit ullam vitae quod!",
  },
  {
    title: "One-To-One Tutoring",
    description:
      "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis animi suscipit debitis repudiandae placeat quod ut minus ipsam.",
  },
  {
    title: "Adaptive Personalization",
    description:
      "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis animi suscipit debitis repudiandae placeat quod ut minus ipsam.",
  },
];
const videoId = "X-AWdfSFCHQ";

const Features = () => {
  const playerRef = useRef(null);
  useEffect(() => {
    if (playerRef.current) {
      new window.YT.Player(playerRef.current, {
        videoId,
        playerVars: {
          autoplay: 1,
        },
      });
    }
  }, []);
  return (
    <div id="feature-container">
      <div id="feature-title"><h3> Our Key Features </h3> </div>
      <div id="fcontent-container">
        {featureContentData.map((feature, index) => (
          <div className="feature-content" key={index}>
            <div className="content-icon">
              <img src={`icon-url-${index}.png`} alt="" />
            </div>
            <div className="content-title">
              <h4>{feature.title}</h4>
            </div>
            <div className="content-description">
              <p>{feature.description}</p>
            </div>
          </div>
        ))}
      </div>
      <div id="more-feature">
        <div id="mf-title"> <h3> How it works </h3> </div>
        <div id="mf-video-container">
          <div id="mf-video" ref={playerRef}></div>
        </div>
      </div>
    </div>
  );
};

export default Features;
