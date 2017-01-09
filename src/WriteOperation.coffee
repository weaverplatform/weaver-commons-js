Action    = {}
Signature = {}

# Helper method
signature = (action, attributes) ->
  Signature[action] = {}
  Signature[action][attribute] = null for attribute in attributes
  action

Action.CREATE_NODE            = signature('create-node',        ['id'])
Action.REMOVE_NODE            = signature('remove-node',        ['id'])
Action.UPDATE_ATTRIBUTE       = signature('update-attribute',   ['id', 'key', 'value', 'datatype'])
Action.REMOVE_ATTRIBUTE       = signature('remove-attribute',   ['id', 'key'])
Action.CREATE_RELATION        = signature('create-relation',    ['from', 'key', 'to' ])             # only on relation with this key can exist between these two ids
Action.REMOVE_RELATION        = signature('remove-relation',    ['from', 'key', 'to' ])
Action.OBJECTIFY_RELATION     = signature('objectify-relation', ['from', 'key', 'to', 'id' ])
Action.MERGE_NODES            = signature('merge-nodes',        ['id_into', 'id_merge'])

module.exports = {Action, Signature}