module.exports =
  class ValueProperty

    @id

    @subject

    @predicate

    @object

    constructor: (playload) ->

      try
        @id = playload.id
        @subject = playload.relations.subject
        @predicate = playload.attributes.predicate
        @object = playload.attributes.object

      catch error
        # console.log error
        return null


    isValid: () ->

      if @id && @subject && @predicate && @object
        return true

      else
        return false
    # constructor: (@id, @subject, @predicate, @object) ->
