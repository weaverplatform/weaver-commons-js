require("../test-suite")()
ValueProperty = require('../../src/model/valueProperty')

describe 'Value Property', ->

  payload_ok = null
  payload_ko = null

  beforeEach ->
    payload_ok = {
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
      }

    payload_ko = {
        type: "$VALUE_PROPERTY",
        attributes:{
          predicate: "rdfs:label",
          object: "Unnamed",
          type: "$VALUE_PROPERTY"
        },
        relations: {
          subject: "ciptr4z1f00093k6krpx3vuhe"
        }
      }

  it 'should create a instance of $VALUE_PROPERTY', (done) ->
    value_property = new ValueProperty(payload_ok)
    if value_property.isValid()
      console.log "     Value Property is Valid? " + value_property.isValid()
      console.log "     Value Property id: " + value_property.id
      console.log "     Value Property subject: " + value_property.subject
      console.log "     Value Property predicate: " + value_property.predicate
      console.log "     Value Property object: " + value_property.object
      done()

    else
      console.log 'error'

  it 'should fails on create a instance of $INDIVIDUAL_PROPERTY because there is no id', (done) ->
    value_property = new ValueProperty(payload_ko)
    console.log value_property

    if value_property.isValid()
      console.log 'error id: ' + value_property.id


    else
      console.log "     Value Property is Valid? " + value_property.isValid()
      console.log "     Value Property id: " + value_property.id
      console.log "     Value Property subject: " + value_property.subject
      console.log "     Value Property predicate: " + value_property.predicate
      console.log "     Value Property object: " + value_property.object
      done()
