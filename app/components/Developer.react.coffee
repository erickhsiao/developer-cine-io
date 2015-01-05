# @cjsx React.DOM

React = require('react')
Nav = require('./Nav.react')
Document = require('./Document.react')

getInitialDoc = ->
  switch window.location.pathname
    when '/peer'
      return "/docs/peer.html"
    when '/broadcast'
      return "/docs/broadcast.html"
    else
      return "/docs/index.html"
module.exports = React.createClass({

  getInitialState: ->
    return {
      docPath: getInitialDoc()
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
