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
    "type": "$INDIVIDUAL_PROPERTY"
  },
  "relations":
  {
    "subject": "ciptqwkw800043k6kg0qk1j4w",
    "predicate": "...",
    "object": "ciptr4z1f00093k6krpx3vuhe"
  }
}

###


module.exports =
  class IndividualProperty

    constructor: (payload) ->

      try
        # @payload = JSON.parse(@payload) if typeof payload is 'string'
        @id = payload.id
        @subject = payload.relations.subject
        @predicate = payload.relations.predicate
        @object = payload.relations.object

      catch error
        return null


    isValid: ->

      @id? and @subject? and @predicate? and @object?


# Browser export
window.IndividualProperty = IndividualProperty if window?