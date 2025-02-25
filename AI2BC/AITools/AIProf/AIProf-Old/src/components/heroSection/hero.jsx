import heroImage from "@assets/images/aiteacher.jpg";
import "./hero.css";
import VideoThumbnail from "../videoThumb/Video";
import teacher from "@assets/images/teacher.jpg";
import student from "@assets/images/student.jpg";
import organization from "@assets/images/orga.jpg";
const Hero = () => {

  return (
    <>
      <div className="hero-container">
        <div id="hero-image">
          <img src={heroImage} alt="This is the hero image" />
        </div>
        <div id="hero-description">
          <h4>Hi My names John & Im your AiTeacher today (Try next teacher)</h4>
          <div id="hero-video">
            <div id="vido-thumb">
              <VideoThumbnail />
            </div>
          </div>
        </div>
        <div id="hero-bottom">
          <div id="student">
            <h4>Student</h4>
            <img src={student} alt="This is a student picture" />
            <div className="hbDescription">
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Obcaecati, consectetur quisquam. Ratione labore laudantium vero
                vitae, quod distinctio.
              </p>
            </div>
          </div>
          <div id="educator">
            <h4>Teacher</h4>
            <img src={teacher} alt="This is a teacher picture" />
            <div className="hbDescription">
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Obcaecati, consectetur quisquam. Ratione labore laudantium vero
                vitae, quod distinctio.
              </p>
            </div>
          </div>
          <div id="organizations">
            <h4>Organizations</h4>
            <img src={organization} alt="This is a organization picture" />
            <div className="hbDescription">
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Obcaecati, consectetur quisquam. Ratione labore laudantium vero
                vitae, quod distinctio.
              </p>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default Hero;
