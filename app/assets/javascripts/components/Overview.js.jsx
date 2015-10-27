var Overview = React.createClass({
  render: function () {
    return (
      <div className="container">
        <HabitBox></HabitBox>
        <DailyBox></DailyBox>
        <TodoBox></TodoBox>
      </div>
    );
  }
});
