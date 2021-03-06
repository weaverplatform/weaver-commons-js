module.exports =
  class Filter

    constructor: (@predicate) ->

      @conditions = []

    # currently implemented operations: 'any-individual', 'this-individual'
    addIndividualCondition: (operation, individual) ->
      @conditions.push({
        operation: operation
        value: individual.id
        conditiontype: 'individual'
      })

    # currently implemented operations: 'any-value', 'this-value'
    addValueCondition: (operation, value) ->
      @conditions.push({
        operation: operation
        value: value
        conditiontype: 'string'
      })

    addViewCondition: (operation, view) ->
      @conditions.push({
        operation: operation
        value: view.id
        conditiontype: 'view'
      })
