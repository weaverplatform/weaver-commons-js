WeaverCommons = {
  create: {
    Entity:             require('./operations/create/request/entity')
    Predicate:          require('./operations/create/request/predicate')
    Individual:         require('./operations/create/request/individual')
    IndividualProperty: require('./operations/create/request/individual-property')
    ValueProperty:      require('./operations/create/request/value-property')
  }
  read: {
    Entity:             require('./operations/read/entity')
    response: {
      View:             require('./operations/read/response/view')
    }
  }
  update: {
    AttributeLink:      require('./operations/update/attribute-link')
    EntityLink:         require('./operations/update/entity-link')
  }
  destroyAttribute: {
    Entity:             require('./operations/destroy-attribute/entity')
  }
  destroyEntity: {
    Entity:             require('./operations/destroy-entity/entity')
  }
  link: {
    Link:               require('./operations/link/link')
  }
  unlink: {
    Link:               require('./operations/unlink/link')
  }
  nativeQuery: {
    Query:              require('./operations/native-query/query')
  }
  queryFromView: {
    View:               require('./operations/query-from-view/view')
  }
  model: {
    Filter:             require('./handlers/filter')
    View:               require('./handlers/view')
  }
  etntities: {
    Individual:         require('./entities/entityIndividual')
  }
}
module.exports = WeaverCommons

# Browser export
window.WeaverCommons = WeaverCommons if window?
