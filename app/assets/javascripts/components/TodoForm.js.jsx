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
