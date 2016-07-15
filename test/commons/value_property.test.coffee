require("../test-suite")()
ValueProperty = require('../../src/operations/create/request/value-property')

describe 'Value Property', ->

  payload_ok = null
  payload_ko = null

  beforeEach ->
    payload_ok =
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


    payload_ko =
        type: "$VALUE_PROPERTY",
        attributes:{
          predicate: "rdfs:label",
          object: "Unnamed",
          type: "$VALUE_PROPERTY"
        },
        relations: {
          subject: "ciptr4z1f00093k6krpx3vuhe"
        }


  it 'should create a instance of $VALUE_PROPERTY', ->
    value_property = new ValueProperty(payload_ok)
    expect(value_property.isValid()).to.equal(true)


  it 'should fails on create a instance of $INDIVIDUAL_PROPERTY because there is no id', ->
    value_property = new ValueProperty(payload_ko)
    expect(value_property.isValid()).to.equal(false)
