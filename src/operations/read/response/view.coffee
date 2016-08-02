Promise = require('bluebird')

module.exports =
class View



  constructor: (@payload) ->


  getFilters: ->

    # view might not exist, or have no filters
    if not @payload? or
    not @payload._RELATIONS? or
    not @payload._RELATIONS.filters? or
    not @payload._RELATIONS.filters._RELATIONS?
      throw new Error('the view object does not contain the required fields')
      return []

    filtersMap = @payload._RELATIONS.filters._RELATIONS
    filters = []
    for filter_id, filter of filtersMap

      conditions = []
      for cond_id, condition of filter._RELATIONS.conditions._RELATIONS

        conditions.push({
          operation:     condition._ATTRIBUTES.operation
          value:         condition._ATTRIBUTES.value
          conditiontype: condition._ATTRIBUTES.conditiontype
        })

      filterPayload = {
        label: filter._ATTRIBUTES.label
        predicate: filter._ATTRIBUTES.predicate
        celltype: filter._ATTRIBUTES.celltype
        conditions: conditions
      }

      filters.push(filterPayload)

    filters


