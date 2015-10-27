var TodoList = React.createClass({
  getInitialState: function () {
    return { todoItems: [] };
  },

  componentDidMount: function () {
    $.get('/api/todos.json', function (data) {
      if (this.isMounted()) {
        this.setState({ todoItems: data });
      }
    }.bind(this));
  },

  render: function () {
    return (
      <div className="todo-list">
        <ul>
          {this.state.todoItems.map(function (item) {
            return <TodoItem name={item.name} />;
          })}
        </ul>
      </div>
    );
  }
});
