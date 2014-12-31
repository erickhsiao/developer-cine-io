AppDispatcher = require("../dispatcher/AppDispatcher")
MainConstants = require("../constants/MainConstants")

ActionTypes = MainConstants.ActionTypes

DeveloperActionCreators =
  nop: (cb)->
    return cb()

module.exports = DeveloperActionCreators
