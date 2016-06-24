require("./test-suite")()
IndividualProperty = require('../lib/model/individualProperty.js')

describe 'Individual Property', ->

  payload_ok = null
  payload_ko = null

  beforeEach ->
    payload_ok = {
      type: "$INDIVIDUAL_PROPERTY",
      id: "ciptr5cuf000f3k6kyos9083o",
      attributes:{
          predicate: "eats",
          type: "$INDIVIDUAL_PROPERTY"
      },
      relations:
        {
          subject: "ciptqwkw800043k6kg0qk1j4w",
          object: "ciptr4z1f00093k6krpx3vuhe"
        }
    }

    payload_ko_id = {
      type: "$INDIVIDUAL_PROPERTY",
      attributes:{
          predicate: "eats",
          type: "$INDIVIDUAL_PROPERTY"
      },
      relations:
        {
          subject: "ciptqwkw800043k6kg0qk1j4w",
          object: "ciptr4z1f00093k6krpx3vuhe"
        }
    }


  it 'should create a instance of $INDIVIDUAL_PROPERTY', (done) ->
    individual_property = new IndividualProperty(payload_ok)
    if individual_property.isValid()
      console.log "     Individual Property id: " + individual_property.id
      console.log "     Individual Property subject: " + individual_property.subject
      console.log "     Individual Property predicate: " + individual_property.predicate
      console.log "     Individual Property object: " + individual_property.object
      done()

    else
      console.log 'error'

  it 'should fails on create a instance of $INDIVIDUAL_PROPERTY because there is no id', (done) ->
    individual_property = new IndividualProperty(payload_ko)

    # console.log '=^^=|_'

    # console.log individual_property
    if individual_property.isValid()
      console.log 'error id: ' + individual_property.id

    else
      done()
