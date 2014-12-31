# @cjsx React.DOM

React = require('react')

module.exports = React.createClass({

  render: ->
    return (
      <iframe src={@props.path} />
    )

})
