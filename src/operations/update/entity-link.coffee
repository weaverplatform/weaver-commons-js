module.exports =
  class Link

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      @source = {}
      try @source.id = payload.source.id
      try @source.type = payload.source.type
      try @key = payload.key
      @target = {}
      try @target.id = payload.target.id
      try @target.type = payload.target.type



    getSourceId: ->
      @source.id
    getKey: ->
      @key
    getTargetId: ->
      @target.id



    isValid: ->
      @source? and
      @source.id? and
      @source.type? and
      @key? and
      @target? and
      @target.id?
      @target.type?


