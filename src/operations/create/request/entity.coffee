###
 Object to work with Entity
 an object considered as Entity is something like:

 "5eb22807-de77-40ae-8934-672199c515cc": {
                        "_ATTRIBUTES": {
                            "source": "unset"
                        },
                        "_META": {
                            "fetched": true,
                            "type": "$INDIVIDUAL",
                            "id": "5ecf4e18-a285-e211-a3a8-b8ac6f902f00"
                        },
                        "_RELATIONS": {
                            "properties": {
                                "_ATTRIBUTES": {},
                                "_META": {
                                    "fetched": true,
                                    "type": "$COLLECTION",
                                    "id": "58b5dced-bc34-443b-8d65-8f0add3559b4"
                                },
                                "_RELATIONS": {
                                    "5eb22807-de77-40ae-8934-672199c515cc": {
                                        "_ATTRIBUTES": {
                                            "predicate": "lib:hasBeginOfLife",
                                            "source": "unset"
                                        },
                                        "_META": {
                                            "fetched": true,
                                            "type": "$INDIVIDUAL_PROPERTY",
                                            "id": "5eb22807-de77-40ae-8934-672199c515cc"
                                        },
                                        "_RELATIONS": {
                                            "object": {
                                                "_ATTRIBUTES": {
                                                    "name": "Bol propertyBol property",
                                                    "source": "ins:RelaticsPMS"
                                                },
                                                "_META": {
                                                    "fetched": true,
                                                    "type": "$INDIVIDUAL",
                                                    "id": "7e3561cd-2b95-4a4f-991d-0b8fcce4bcea"
                                                },
                                                "_RELATIONS": {
                                                    "properties": {
                                                        "_ATTRIBUTES": {},
                                                        "_META": {
                                                            "fetched": true,
                                                            "type": "$COLLECTION",
                                                            "id": "f010ccdc-4dcb-451d-9b05-f4e4fb6ff180"
                                                        },
                                                        "_RELATIONS": {
                                                            "984cff0e-b011-4068-b65b-a1c2fc2b29cb": {
                                                                "_ATTRIBUTES": {
                                                                    "predicate": "lib:hasValue",
                                                                    "source": "unset",
                                                                    "object": "2014-07-22"
                                                                },
                                                                "_META": {
                                                                    "fetched": true,
                                                                    "type": "$VALUE_PROPERTY",
                                                                    "id": "984cff0e-b011-4068-b65b-a1c2fc2b29cb"
                                                                },
                                                                "_RELATIONS": {
                                                                    "subject": {
                                                                        "_REF": "7e3561cd-2b95-4a4f-991d-0b8fcce4bcea"
                                                                    }
                                                                }
                                                            },
                                                            "4e10c867-db9c-4310-b3f8-37acd42afc6d": {
                                                                "_ATTRIBUTES": {
                                                                    "predicate": "rdf:type",
                                                                    "source": "unset"
                                                                },
                                                                "_META": {
                                                                    "fetched": true,
                                                                    "type": "$INDIVIDUAL_PROPERTY",
                                                                    "id": "4e10c867-db9c-4310-b3f8-37acd42afc6d"
                                                                },
                                                                "_RELATIONS": {
                                                                    "object": {
                                                                        "_REF": "lib:BeginOfLife"
                                                                    },
                                                                    "subject": {
                                                                        "_REF": "7e3561cd-2b95-4a4f-991d-0b8fcce4bcea"
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            },
                                            "subject": {
                                                "_REF": "5ecf4e18-a285-e211-a3a8-b8ac6f902f00"
                                            }
                                        }
                                    }
###



module.exports =
  class Entity

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      try @type       = payload.type
      try @id         = payload.id
      try @attributes = payload.attributes
      try @relations  = payload.relations






    isValid: ->
      @type? and
      @id? and
      @attributes? and typeof @attributes is 'object' and
      @relations? and typeof @relations is 'object'
