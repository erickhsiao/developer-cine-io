# @cjsx React.DOM

React = require('react')

module.exports = React.createClass({

  render: ->
    classes =
      peer: []
      broadcast: []

    return (
      <nav className="navbar navbar-inverse navbar-fixed-top">
        <div className="container-fluid">
          <div class="navbar-header">
            <a className="navbar-brand" href="/">
              <img alt="cine.io" src="http://www.cine.io/images/cine-logomark.png" />
              <div>Developer Documentation</div>
            </a>
          </div>

          <div className="collapse navbar-collapse">
            <ul className="nav navbar-nav navbar-right">
              <li className={classes.broadcast.join(' ')}>
                <a href="/broadcast"><i className="cine-broadcast"></i>&nbsp;Broadcast</a>
              </li>
              <li className={classes.peer.join(' ')}>
                <a href="/peer"><i className="cine-conference"></i>&nbsp;Peer</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    )

})
