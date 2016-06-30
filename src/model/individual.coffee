###
 Object to work with $INDIVIDUAL
 an object considered as $INDIVIDUAL is something like:

 "payload":
   {
    "type": "$INDIVIDUAL",
    "id": "ciptr4z1f00093k6krpx3vuhe",
    "attributes":
    {
     "name": "Unnamed",
     "type": "$INDIVIDUAL"
    },
   "relations": { }
 }
###



module.exports =
  class Individual

    constructor: (payload) ->

      try
        @id = payload.id
      catch error
        return null


    ###
     taking a look if this object is correct
    ###

    isValid: ->
      @id?
