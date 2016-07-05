module.exports =
  class Predicate

    constructor: (payload) ->

      try
        @id = payload.id
        @name = payload.name

      catch error
        return null

    addSuper: (@super) ->

    isValid: ->

      @id? and @name?
