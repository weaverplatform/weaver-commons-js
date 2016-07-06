module.exports =
  class Link

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      try @id = payload.id
      try @key = payload.key






    isValid: ->
      @id? and @key?

