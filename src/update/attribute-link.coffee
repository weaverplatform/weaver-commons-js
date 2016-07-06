module.exports =
  class Link

    constructor: (payload) ->
      payload = JSON.parse(payload) if typeof payload is 'string'

      @source = {}
      try @source.id = payload.source.id
      try @source.type = payload.source.type
      try @key = payload.key
      @target = {}
      try @target.value = payload.target.value
#      try @target.datatype = payload.target.datatype    # todo



    getSourceId: ->
      @source.id
    getKey: ->
      @key
    getValue: ->
      @target.value
    getDatatype: ->
      throw new Error('future work')      # todo



    isValid: ->
      @source? and
      @source.id? and
      @source.type? and
      @key? and
      @target? and
      @target.value?
#      @target.datatype?                   # todo


