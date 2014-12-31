Dispatcher = require("flux").Dispatcher
assign = require("object-assign")
MainConstants = require('../constants/MainConstants')
PayloadSources = MainConstants.PayloadSources

actions =
  handleViewAction: (action)->
    payload =
      source: PayloadSources.VIEW_ACTION
      action: action
    this.dispatch(payload)

AppDispatcher = assign new Dispatcher(), actions

module.exports = AppDispatcher
