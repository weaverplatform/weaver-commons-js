module.exports =
  class Predicate

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      try @type = payload.type
      try @id = payload.id
      try @attributes = payload.attributes
      try @relations = payload.relations


    isValid: ->
      @type? and @type is '$PREDICATE' and
        @id? and
        @attributes? and
        @relations?