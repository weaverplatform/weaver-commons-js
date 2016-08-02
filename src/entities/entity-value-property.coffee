###
payload_value_property = {
     [
       {
         "_ATTRIBUTES": {
           "predicate": "$LABEL",
           "object": "Port"
         },
         "_META": {
           "type": "$VALUE_PROPERTY",
           "id": "4f838d1a-40fc-4848-bc84-743972c0b161"
         },
         "_RELATIONS": {
           "subject": {
             "_REF": "0"
           }
         }
       }
     ]
   }
###

ValueProperty = require('../operations/create/request/value-property')

module.exports =

  class EntityValueProperty

    constructor: (opts) ->

      opts = JSON.parse(opts) if typeof opts is 'string'

      if opts.valueProperty?

        @_ATTRIBUTES = {}
        @_META = {}
        @_RELATIONS = {}
        @_RELATIONS.subject = {}

        valueProp = new ValueProperty(opts.valueProperty)

        if valueProp.isValid
          try @_ATTRIBUTES.predicate = valueProp.getPredicate()
          try @_ATTRIBUTES.object = valueProp.getValue()
          try @_META.type = '$VALUE_PROPERTY'
          try @_META.id = valueProp.id
          try @_RELATIONS.subject._REF = valueProp.getSubjectId()


      if opts.id? and opts.predicate? and opts.subject? and opts.object?

        @_ATTRIBUTES = {}
        @_META = {}
        @_RELATIONS = {}
        @_RELATIONS.subject = {}

        try @_ATTRIBUTES.predicate = opts.predicate
        try @_ATTRIBUTES.object = opts.object
        try @_META.type = '$VALUE_PROPERTY'
        try @_META.id = opts.id
        try @_RELATIONS.subject._REF = opts.subject

      if opts.entity_value_property?

        try @value_property = new ValueProperty({
          type: opts.entity_value_property._META.type,
          id: opts.entity_value_property._META.id,
          attributes:{
            predicate: opts.entity_value_property._ATTRIBUTES.predicate,
            object: opts.entity_value_property._ATTRIBUTES.object,
            type: "$VALUE_PROPERTY"
          },
          relations:{
            subject: opts.entity_value_property._RELATIONS.subject._REF
          }
        })
