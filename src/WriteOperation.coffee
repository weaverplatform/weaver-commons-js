Code      = {}
Signature = {}

# Helper method
signature = (code, attributes) ->
  Signature[code] = {}
  Signature[code][attribute] = null for attribute in attributes
  code

Code.CREATE_NODE            = signature('create-node',        ['id'])
Code.REMOVE_NODE            = signature('remove-node',        ['id'])
Code.UPDATE_ATTRIBUTE       = signature('update-attribute',   ['id', 'key', 'value', 'datatype'])
Code.REMOVE_ATTRIBUTE       = signature('remove-attribute',   ['id', 'key'])
Code.UPDATE_RELATION        = signature('update-relation',    ['from', 'key', 'to' ])             # only on relation with this key can exist between these two ids
Code.REMOVE_RELATION        = signature('remove-relation',    ['from', 'key', 'to' ])
Code.OBJECTIFY_RELATION     = signature('objectify-relation', ['from', 'key', 'to', 'id' ])
Code.MERGE_NODES            = signature('merge-nodes',        ['id_into', 'id_merge'])

module.exports= {Code, Signature}