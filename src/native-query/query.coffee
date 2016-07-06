module.exports =
  class Query

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      try @query = payload.query
      try @selects = payload.selects




    isValid: ->
      @query? and
      @selects? and typeof @selects is 'object'

