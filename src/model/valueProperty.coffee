###
Object to work with $VALUE_PROPERTY
an object considered as $VALUE_PROPERTY is something like:


"payload":
  {
    "type": "$VALUE_PROPERTY",
    "id": "ciptr4z1g000d3k6kiybrvep4",
    "attributes":
    {
      "predicate": "rdfs:label",
      "object": "Unnamed",
      "type": "$VALUE_PROPERTY"
    },
    "relations":
    {
      "subject": "ciptr4z1f00093k6krpx3vuhe"
    }
  }

###



module.exports =
  class ValueProperty

    constructor: (payload) ->

      try
        @id = payload.id
        @subject = payload.relations.subject
        @predicate = payload.relations.predicate
        @object = payload.attributes.object

      catch error
        return null

    isValid: ->

      @id? and @subject? and @predicate? and @object?
