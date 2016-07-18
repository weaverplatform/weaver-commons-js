###
{
     [
       {
         "_ATTRIBUTES": {
           "name": "0"
         },
         "_META": {
           "type": "$INDIVIDUAL",
           "id": "0"
         }
       }
     ]
   }
###



Individual = require('../operations/create/request/individual')

module.exports =

  class EntityIndividual


    constructor: (opts) ->

      opts = JSON.parse(opts) if typeof opts is 'string'


      # If I have an individual I'll return an Entity_Individual, a Node

      if opts.individual?

        @_ATTRIBUTES = {}
        @_META = {}


        indi = new Individual(opts.individual)


        if indi.isValid
          try @_ATTRIBUTES.name = indi.attributes.name
          try @_META.type = indi.type
          try @_META.id = indi.id


      # If I have a name and an id I will return a Entity_Individual

      if opts.name? and opts.id?

        @_ATTRIBUTES = {}
        @_META = {}


        try @_ATTRIBUTES.name = opts.name
        try @_META.type = '$INDIVIDUAL'
        try @_META.id = opts.id


      # If I have a Entity_Individual I will return an Individual

      if opts.entity_individual?

        try @individual = new Individual({
          type:"$INDIVIDUAL",
          id: opts.entity_individual._META.id,
          attributes:{
            "name":opts.entity_individual._ATTRIBUTES.name,
            },
          relations:""
        })

        # TODO: make some checks like: Is a valid (EntityIndividual)?
        # TODO: implement some getters and setters
