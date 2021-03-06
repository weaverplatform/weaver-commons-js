require("../test-suite")()
IndividualProperty = require('../../src/operations/create/request/individual-property')

describe 'Individual Property', ->

  payload_ok = null
  payload_ko_id = null

  beforeEach ->
    payload_ok =
      type: "$INDIVIDUAL_PROPERTY",
      id: "ciptr5cuf000f3k6kyos9083o",
      attributes:{
          type: "$INDIVIDUAL_PROPERTY",
          predicate: "eats"
      },
      relations:{
          subject: "ciptqwkw800043k6kg0qk1j4w",
          object: "ciptr4z1f00093k6krpx3vuhe"
        }

    payload_ko_id =
      type: "$INDIVIDUAL_PROPERTY",
      attributes:{
          type: "$INDIVIDUAL_PROPERTY",
          predicate: "eats"
      },
      relations:
        {
          subject: "ciptqwkw800043k6kg0qk1j4w",
          object: "ciptr4z1f00093k6krpx3vuhe"
        }



  it 'should create a instance of $INDIVIDUAL_PROPERTY', ->
    individual_property = new IndividualProperty(payload_ok)
    expect(individual_property.isValid()).to.equal(true)

  it 'should fails on create a instance of $INDIVIDUAL_PROPERTY because there is no id', ->
    individual_property = new IndividualProperty(payload_ko_id)
    expect(individual_property.isValid()).to.equal(false)

  it 'should return the predicate of an individual_property', ->
    individual_property = new IndividualProperty(payload_ok)
    expect(individual_property.getPredicate()).to.equal('eats')

  it 'should return the subject of an individual_property', ->
    individual_property = new IndividualProperty(payload_ok)
    expect(individual_property.getSubjectId()).to.equal('ciptqwkw800043k6kg0qk1j4w')

  it 'should return the object of an individual_property', ->
    individual_property = new IndividualProperty(payload_ok)
    expect(individual_property.getObjectId()).to.equal('ciptr4z1f00093k6krpx3vuhe')
