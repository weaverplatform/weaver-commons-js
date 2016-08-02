require("../test-suite")()

EntityIndividual = require("../../src/entities/entity-individual")
Individual = require("../../src/operations/create/request/individual")

EntityIndividualProperty = require("../../src/entities/entity-individual-property")
IndividualProperty = require("../../src/operations/create/request/individual-property")

EntityValueProperty = require("../../src/entities/entity-value-property")
ValueProperty = require("../../src/operations/create/request/value-property")

describe 'Entities', ->

  payload_individual_entity = null
  payload_individual_property_entity = null
  payload_value_property_entity = null

  before ->

    payload_individual_entity = {
      "_ATTRIBUTES": {
        "name": "Cero"
      },
      "_META": {
        "type": "$INDIVIDUAL",
        "id": "0"
      }
    }

    payload_individual_property_entity = {
        "_ATTRIBUTES": {
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

    payload_value_property_entity = {
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

  it 'should return an entityindividual', ->

    entityIndividual = new EntityIndividual({
        name:'One',
        id:'555'
      })


  it 'should return an entityindividual given a individual payload', ->

    individual = new Individual({
      type:"$INDIVIDUAL",
      id:"44",
      attributes:{
        "name":"UnNamed",
        },
      relations:"some Realtions"
      })

    entityIndividual = new EntityIndividual({
      individual: individual
    })


  it 'should return an individual given a entityIndividual', ->

    individual = new EntityIndividual({
      entity: payload_individual_entity
      })


  it 'should return an Entity_IndividualProperty', ->

    entityIndividualProperty = new EntityIndividualProperty({
      id: '555',
      predicate: 'knows',
      subject: '1',
      object: '2'
    })


  it 'should return a entityIndividualProperty given a individual_property payload', ->

    individual_property = new IndividualProperty({
      type: "$INDIVIDUAL_PROPERTY",
      id: "ciptr5cuf000f3k6kyos9083o",
      attributes:{
        type: "$INDIVIDUAL_PROPERTY",
        predicate: "knows"
      },
      relations:{
        subject: "ciptqwkw800043k6kg0qk1j4w",
        object: "ciptr4z1f00093k6krpx3vuhe"
      }
    })

    entityIndividualProperty = new EntityIndividualProperty({
      individualProperty: individual_property
    })

  it 'should return a individualProperty given an entity_individual_property', ->

    individualProperty = new EntityIndividualProperty({
      entity_individual_property: payload_individual_property_entity
    })



  it 'should return an Entity_valueProperty', ->

    entityValueProperty = new EntityValueProperty({
      id: '556',
      predicate: '$LABEL',
      subject: '0',
      object: 'Port'
    })

  it 'should return a entityValueProperty given a value_property payload', ->

    value_property = new ValueProperty({
      type: "$VALUE_PROPERTY",
      id: "ciptr4z1g000d3k6kiybrvep4",
      attributes:{
        "predicate": "rdfs:label",
        "object": "Unnamed",
        "type": "$VALUE_PROPERTY"
      },
      relations:{
        "subject": "ciptr4z1f00093k6krpx3vuhe"
      }
    })

    entityValueProperty = new EntityValueProperty({
      valueProperty: value_property
    })

  it 'should return a valueProperty given an entity_value_property', ->

    valueProperty = new EntityValueProperty({
      entity_value_property: payload_value_property_entity
    })
