# @cjsx React.DOM

React = require('react')

module.exports = React.createClass({

  getInitialState: ->
    return {
      menuCollapsed: true
    }

  toggleMenu: (event)->
    console.log "toggling menu"
    event.preventDefault()
    @setState(menuCollapsed: !@state.menuCollapsed)

  render: ->
    classes =
      peer: []
      broadcast: []
      menuToggle: ['navbar-toggle']
      navLinks: ['collapse navbar-collapse']

    if @state.menuCollapsed
      classes.menuToggle.push 'collapsed'
    else
      classes.navLinks.push 'in'

    console.log classes.menuToggle
    console.log classes.navLinks

    return (
      <nav className="navbar navbar-inverse navbar-fixed-top">
        <div className="container-fluid">
          <div class="navbar-header">
            <a className="navbar-brand" href="/">
              <img alt="cine.io" src="http://www.cine.io/images/cine-logomark.png" />
              <div>Dev<span className="visible-md-inline">eloper&nbsp;Documentation</span></div>
            </a>

            <button type="button" className={classes.menuToggle.join(' ')} onClick={@toggleMenu}>
              <span className="sr-only">Menu</span>
              <span className="icon-bar"></span>
              <span className="icon-bar"></span>
              <span className="icon-bar"></span>
            </button>
          </div>

          <div className={classes.navLinks.join(' ')}>
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
