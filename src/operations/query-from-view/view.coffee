module.exports =
  class View

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      try @id = payload.id






    isValid: ->
      @id?

