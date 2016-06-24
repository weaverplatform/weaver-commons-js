require("./test-suite")()
Individual = require('../lib/model/individual.js')

describe 'Individual', ->

  payload_ok = null
  payload_ko = null

  beforeEach ->
    payload_ok = {
        type: "$INDIVIDUAL",
        id: "ciptr4z1f00093k6krpx3vuhe",
        attributes: {
            name: "Unnamed",
            type: "$INDIVIDUAL"
        },
        relations: { }
      }

    payload_ko = {
        type: "$INDIVIDUAL",
        attributes: {
            name: "Unnamed",
            type: "$INDIVIDUAL"
        },
        relations: { }
      }


  it 'should create a instance of $INDIVIDUAL', (done) ->
    individual = new Individual(payload_ok)
    if individual.isValid()
      console.log "       Individual id: " + individual.id
      done()

    else
      console.log 'error'

  it 'should fails on create a instance of $INDIVIDUAL because there is no id', (done) ->
    individual = new Individual(payload_ko)
    if individual.isValid()
      console.log 'error id: ' + individual.id

    else
      done()
