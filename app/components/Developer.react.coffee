# @cjsx React.DOM

React = require('react')
Nav = require('./Nav.react')
Document = require('./Document.react')

module.exports = React.createClass({

  getInitialState: ->
    return {
      docPath: "/docs/peer.html"
    }

  render: ->
    console.log "loading #{@state.docPath}"

    return (
      <div id="developer">
        <Nav />
        <Document path={@state.docPath} />
      </div>
    )

})
