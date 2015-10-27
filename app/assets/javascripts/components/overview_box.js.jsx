var OverviewBox = React.createClass({
  render: function () {
    return (
      <div className="overview-box">
        <h1>{this.props.title}</h1>
        {this.props.children}
      </div>
    );
  }
});
