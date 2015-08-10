var TodoBox = React.createClass({
  render: function () {
    return (
      <div className="todo-box">
        <h1>To Do</h1>
        <TodoForm />
        <TodoList />
      </div>
    );
  }
});

var TodoForm = React.createClass({
  render: function () {
    return (
      <form className="todo-form">
        <input type="text" placeholder="New To Do" />
        <button type="submit"><i className="fa fa-plus" /></button>
      </form>
    );
  }
});

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

var TodoItem = React.createClass({
  render: function () {
    return (
      <li className="todo-item">
        <span>{this.props.name}</span>
        <div className="todo-item-controls">
          <i className="fa fa-pencil" />
          <i className="fa fa-trash-o" />
        </div>
      </li>
    );
  }
});
