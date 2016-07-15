module.exports =
  class Link

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      @source = {}
      try @source.id = payload.source.id
      try @key = payload.key
      @target = {}
      try @target.id = payload.target.id






    isValid: ->
      @source? and
      @source.id? and
      @key? and
      @target? and
      @target.id?


