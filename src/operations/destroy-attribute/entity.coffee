module.exports =
  class Entity

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      try @id = payload.id
      try @attribute = payload.attribute

    isValid: ->
      @id? and @attribute?

