require("../test-suite")()
Individual = require('../../src/operations/create/request/individual')

describe 'Individual', ->

  payload_ok = null
  payload_ko = null

  beforeEach ->
    payload_ok =
        type: "$INDIVIDUAL",
        id: "ciptr4z1f00093k6krpx3vuhe",
        attributes: {
            name: "Unnamed",
            type: "$INDIVIDUAL"
        },
        relations: { }


    payload_ko =
        type: "$INDIVIDUAL",
        attributes: {
            name: "Unnamed",
            type: "$INDIVIDUAL"
        },
        relations: { }



  it 'should create a instance of $INDIVIDUAL', ->
    individual = new Individual(payload_ok)
    expect(individual.isValid()).to.equal(true)


  it 'should fails on create a instance of $INDIVIDUAL because there is no id', ->
    individual = new Individual(payload_ko)
    expect(individual.isValid()).to.equal(false)
