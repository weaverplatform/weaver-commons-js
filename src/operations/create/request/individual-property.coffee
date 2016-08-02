###
 Class to deal with $INDIVIDUAL_PROPERTY
filter.
An object considered as $INDIVIDUAL_PROPERTY is something like:


"payload":
{
  "type": "$INDIVIDUAL_PROPERTY",
  "id": "ciptr5cuf000f3k6kyos9083o",
  "attributes":
  {
    "type": "$INDIVIDUAL_PROPERTY",
    "predicate": "..." -----> ?
  },
  "relations":
  {
    "subject": "ciptqwkw800043k6kg0qk1j4w",
    "object": "ciptr4z1f00093k6krpx3vuhe"
  }
}

###


module.exports =
  class IndividualProperty

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      try @type = payload.type
      try @id = payload.id
      try @attributes = payload.attributes
      try @relations = payload.relations


    getSubjectId: ->
      @relations.subject
    getPredicate: ->
      @attributes.predicate
    getObjectId: ->
      @relations.object



    isValid: ->
      @type? and @type is '$INDIVIDUAL_PROPERTY' and
      @id? and
      @attributes? and
      @relations? and
      @relations.subject? and
      @attributes.predicate? and
      @relations.object?
