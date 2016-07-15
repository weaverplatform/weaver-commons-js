require("../test-suite")()
EntityIndividual = require("../../src/entities/entityIndividual")
Individual = require("../../src/operations/create/request/individual")

describe 'Entities', ->

  payload_individual_entity = null

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

  it 'should return a entityindividual', ->

    entityIndividual = new EntityIndividual({
        name:'One',
        id:'555'
      })

    console.log entityIndividual

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

    console.log entityIndividual

  it 'should return an individual given a entityIndividual', ->

    individual = new EntityIndividual({
      entity: payload_individual_entity
      })

    console.log individual
    console.log individual.individual
