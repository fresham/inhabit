var TodoList = React.createClass({
  render: function () {
    return (
      <div className="todo-list">
        <ul>
          <TodoItem name="Todo 1" />
          <TodoItem name="Todo 2" />
          <TodoItem name="Todo 3" />
        </ul>
      </div>
    );
  }
});
