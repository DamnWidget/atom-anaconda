{View} = require 'atom'

module.exports =
class AnacondaView extends View
  @content: ->
    @div class: 'anaconda overlay from-top', =>
      @div "The Anaconda package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "anaconda:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "AnacondaView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
