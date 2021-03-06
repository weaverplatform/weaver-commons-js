require("../test-suite")()
Filter     = require('../../src/handlers/filter')
Individual = require('../../src/operations/create/request/individual')

describe 'Filter', ->

  individual = null
  value_property = null

  beforeEach ->
    individual =
        type: "$INDIVIDUAL",
        id: "ciptr4z1f00093k6krpx3vuhe",
        attributes: {
            name: "Unnamed",
            type: "$INDIVIDUAL"
        },
        relations: { }


    value_property =
        type: "$VALUE_PROPERTY",
        id: "ciptr4z1g000d3k6kiybrvep4",
        attributes:{
          predicate: "rdfs:label",
          object: "Unnamed",
          type: "$VALUE_PROPERTY"
        },
        relations: {
          subject: "ciptr4z1f00093k6krpx3vuhe"
        }




  it 'should init Filters', ->
    filter = new Filter()


  it 'should add Individual Condition', ->
    filter = new Filter(value_property.attributes.predicate)
    cond = filter.addIndividualCondition('equals', new Individual(individual))
