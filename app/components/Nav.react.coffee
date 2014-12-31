# @cjsx React.DOM

React = require('react')

module.exports = React.createClass({

  render: ->
    return (
      <nav className="navbar navbar-inverse navbar-fixed-top">
        <div className="container-fluid">
          <a className="navbar-brand" href="/">
            <img alt="cine.io" src="http://www.cine.io/images/cine-logomark.png" />
            <div>Developer Documentation</div>
          </a>
        </div>
      </nav>
    )

})
