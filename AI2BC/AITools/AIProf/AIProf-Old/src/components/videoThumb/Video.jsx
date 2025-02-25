import{ useRef, useEffect } from 'react';
import './VideoThumbnail.css';

const VideoThumbnail = () => {
  const videoId = 'vP_VihdeIGY'; 
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
    <div>
      <div id='thumbnail' ref={playerRef}></div>
    </div>
  );
};

export default VideoThumbnail;
