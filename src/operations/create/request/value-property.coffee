###
Object to work with $VALUE_PROPERTY
an object considered as $VALUE_PROPERTY is something like:


"payload":
  {
    "type": "$VALUE_PROPERTY",
    "id": "ciptr4z1g000d3k6kiybrvep4",
    "attributes":
    {
      "object": "Unnamed", -------> ?
      "type": "$VALUE_PROPERTY" ---> repeated?
    },
    "relations":
    {
      "subject": "ciptr4z1f00093k6krpx3vuhe"
      "predicate": "circhqgcf00003k6poa8w0g0q",
    }
  }

###



module.exports =
  class ValueProperty

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      try @type = payload.type
      try @id = payload.id
      try @attributes = payload.attributes
      try @relations = payload.relations


    getSubjectId: ->
      @relations.subject
    getPredicateId: ->
      @relations.predicate  
    getValue: ->
      @attributes.object
    getDatatype: ->
      throw new Error('future work')      # todo



    isValid: ->
      @type? and @type is '$VALUE_PROPERTY' and
      @id? and
      @attributes? and
      @attributes.object? and
      @relations? and
      @relations.subject? and
      @relations.predicate?