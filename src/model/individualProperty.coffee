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
    "predicate": "eats",
    "type": "$INDIVIDUAL_PROPERTY"
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

    @id

    @subject

    @predicate

    @object

    constructor: (playload) ->

      try
        @id = playload.id
        @subject = playload.relations.subject
        @predicate = playload.attributes.predicate
        @object = playload.relations.object

      catch error
        return null


    isValid: () ->

      if @id && @subject && @predicate && @object
        return true

      else
        return false
