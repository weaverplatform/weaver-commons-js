Code      = {}
Signature = {}

# Helper method
signature = (code, attributes) ->
  Signature[code] = {}
  Signature[code][attribute] = null for attribute in attributes
  code

Code.CREATE_NODE            = signature(1, ['id'])
Code.UPDATE_NODE_ATTRIBUTE  = signature(2, ['id', 'attribute', 'value'])
Code.REMOVE_NODE_ATTRIBUTE  = signature(3, ['id', 'attribute'])

module.exports= {Code, Signature}