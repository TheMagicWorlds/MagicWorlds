import "./learn.css";

const feedBacks = [
  {
    feedback:
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis magni, voluptatum recusandae est, exercitationem",
    author: "Alex",
  },
  {
    feedback:
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis magni, voluptatum recusandae est, exercitationem",
    author: "James",
  },
  {
    feedback:
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis magni, voluptatum recusandae est, exercitationem",
    author: "Jane",
  },
];
const Distinct = () => {
  return (
    <>
      <div id="feedback-container">
        <div id="fTitle"><h3> Feedback From Our Learners </h3></div>
        <div id="fConternt-container">
          {feedBacks.map((feedback, index) => (
            <div className="fcontent" key={index}>
              <div className="feedback">{feedback.feedback}</div>
              <div className="author">{feedback.author}</div>
            </div>
          ))}
        </div>
      </div>
    </>
  );
};

export default Distinct;
