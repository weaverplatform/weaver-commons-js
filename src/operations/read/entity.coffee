module.exports =
  class Entity

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      try @id = payload.id
      try @opts = payload.opts

      @opts = {} if not @opts?
      @opts.eagerness = 1 if not @opts.eagerness?
      @opts

    isValid: ->
      @id?

