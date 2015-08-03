var pollInterval = 5000;

var TodoBox = React.createClass({
  getInitialState: function () {
    return { data: [] }
  },

  loadTodos: function () {
    $.ajax({
      url: this.props.url,
      dataType: 'json',
      cache: false,
      success: function (data) {
        this.setState({ data: data })
      }.bind(this),
      error: function (xhr, status, err) {
        console.error(this.props.url, status, err.toString());
      }.bind(this)
    });
  },

  componentDidMount: function () {
    this.loadTodos();
    setInterval(this.loadTodos, pollInterval);
  },

  render: function () {
    return (
      <div className="todo-box">
        <h1>To Do</h1>
        <TodoList todos={this.state.data} />
      </div>
    );
  }
});

var TodoList = React.createClass({
  render: function () {
    var todoNodes = this.props.todos.map(function (todo) {
      return (
        <Todo key={todo.id} name={todo.name} />
      );
    });
    return (
      <div className="todo-list">
        {todoNodes}
      </div>
    );
  }
});

var Todo = React.createClass({
  render: function () {
    return (
      <div className="todo">
        {this.props.name}
      </div>
    );
  }
});
