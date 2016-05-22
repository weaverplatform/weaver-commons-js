module.exports =
  class Filter

    constructor: (@predicate) ->

      @conditions = []

    addIndividualCondition: (operation, individual) ->
      @conditions.push({
        operation: operation
        individual: individual.id
        conditiontype: 'individual'
      })

    addValueCondition: (operation, value) ->
      @conditions.push({
        operation: operation
        value: value
        conditiontype: 'value'
      })

    addViewCondition: (operation, view) ->
      @conditions.push({
        operation: operation
        view: view.id
        conditiontype: 'view'
      })
