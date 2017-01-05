Code      = {}
Signature = {}

# Helper method
signature = (code, attributes) ->
  Signature[code] = {}
  Signature[code][attribute] = null for attribute in attributes
  code

Code.CREATE_NODE            = signature(1, ['id'])
Code.REMOVE_NODE            = signature(2, ['id'])
Code.UPDATE_NODE_ATTRIBUTE  = signature(3, ['id', 'key', 'value', 'datatype'])
Code.REMOVE_NODE_ATTRIBUTE  = signature(4, ['id', 'key'])
Code.CREATE_RELATION        = signature(5, ['id', 'key', 'to' ])    # only on relation with this key can exist between these two ids
Code.UPDATE_RELATION        = signature(6, ['id', 'key', 'to' ])
Code.OBJECTIFY_RELATION     = signature(7, ['id', 'key', 'to' ])
Code.REMOVE_RELATION        = signature(8, ['id', 'key', 'to' ])
Code.MERGE_NODES            = signature(9, ['id_into', 'id_merge'])

module.exports= {Code, Signature}