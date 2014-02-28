AnacondaView = require './anaconda-view'

module.exports =
  anacondaView: null

  activate: (state) ->
    @anacondaView = new AnacondaView(state.anacondaViewState)

  deactivate: ->
    @anacondaView.destroy()

  serialize: ->
    anacondaViewState: @anacondaView.serialize()
