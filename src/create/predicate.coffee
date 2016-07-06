module.exports =
  class Predicate

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      try @id = payload.id
      try @name = payload.name


    addSuper: (@super) ->

    isValid: ->

      @id? and
      @name?


