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


      if opts.individual?

        @_ATTRIBUTES = {}
        @_META = {}


        indi = new Individual(opts.individual)


        if indi.isValid
          try @_ATTRIBUTES.name = indi.attributes.name
          try @_META.type = indi.type
          try @_META.id = indi.id

      # else

      if opts.name? and opts.id?

        @_ATTRIBUTES = {}
        @_META = {}


        try @_ATTRIBUTES.name = opts.name
        try @_META.type = '$INDIVIDUAL'
        try @_META.id = opts.id

      if opts.entity?

        try @individual = new Individual({
          type:"$INDIVIDUAL",
          id: opts.entity._META.id,
          attributes:{
            "name":opts.entity._ATTRIBUTES.name,
            },
          relations:""
        })
