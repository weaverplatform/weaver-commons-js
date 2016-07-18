###
payload_individual_property = {
     [
       {"_ATTRIBUTES": {
         "predicate": "knows",
       },
       "_META": {
         "type": "$INDIVIDUAL_PROPERTY",
         "id": "a437190a-c1f2-4702-803a-c3c72fee258f"
       },
       "_RELATIONS":{
         "object": {
           "_REF": "0"
         },
         "subject": {
           "_REF": "1"
         }
       }
     }
   ]
 }
###

IndividualProperty =  require('../operations/create/request/individual-property')

module.exports =

  class EntityIndividualProperty

    constructor: (opts) ->

      opts = JSON.parse(opts) if typeof opts is 'string'

      # If I have an individual_property I'll return an Entity_IndividualProperty, a Node

      if opts.individualProperty?

        @_ATTRIBUTES = {}
        @_META = {}
        @_RELATIONS = {}
        @_RELATIONS.subject = {}
        @_RELATIONS.object = {}

        indiProp = new IndividualProperty(opts.individualProperty)

        if indiProp.isValid
          try @_ATTRIBUTES.predicate = indiProp.getPredicate()
          try @_META.type = '$INDIVIDUAL_PROPERTY'
          try @_META.id = indiProp.id
          try @_RELATIONS.subject._REF = indiProp.relations.subject()
          try @_RELATIONS.object._REF = indiProp.relations.object()

      if opts.id? and opts.predicate? and opts.subject? and opts.object?

        @_ATTRIBUTES = {}
        @_META = {}
        @_RELATIONS = {}
        @_RELATIONS.subject = {}
        @_RELATIONS.object = {}

        try @_ATTRIBUTES.predicate = opts.predicate
        try @_META.type = '$INDIVIDUAL_PROPERTY'
        try @_META.id = opts.id
        try @_RELATIONS.subject._REF = opts.subject
        try @_RELATIONS.object._REF = opts.object

      if opts.entity_individual_property?

        try @individual_property = new IndividualProperty({
          type: '$INDIVIDUAL_PROPERTY',
          id: opts.entity_individual_property._META.id
          attributes:{
            type: '$INDIVIDUAL_PROPERTY',
            predicate: opts.entity_individual_property._ATTRIBUTES.predicate
          },
          relations:{
            subject: opts.entity_individual_property._RELATIONS.subject._REF
            object: opts.entity_individual_property._RELATIONS.object._REF
          }
        })
