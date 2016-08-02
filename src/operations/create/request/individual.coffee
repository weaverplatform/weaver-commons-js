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
      payload = JSON.parse(payload) if typeof payload is 'string'

      try @type = payload.type
      try @id = payload.id
      try @attributes = payload.attributes
      try @relations = payload.relations


    isValid: ->
      @type? and @type is '$INDIVIDUAL' and
      @id? and
      @attributes? and
      @relations?
