var TodoBox = React.createClass({
  render: function () {
    return (
      <OverviewBox title="Todo">
        <TodoForm />
        <TodoList />
      </OverviewBox>
    );
  }
});
