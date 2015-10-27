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
