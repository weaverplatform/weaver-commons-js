WeaverCommons = {
  create: {
    Entity:             require('./create/entity')
    Predicate:          require('./create/predicate')
    Individual:         require('./create/individual')
    IndividualProperty: require('./create/individual-property')
    ValueProperty:      require('./create/value-property')
  }
  read: {
    Entity:             require('./read/entity')
    response: {
      View:             require('./read/response/view')
    }
  }
  update: {
    AttributeLink:      require('./update/attribute-link')
    EntityLink:         require('./update/entity-link')
  }
  destroyAttribute: {
    Entity:             require('./destroy-attribute/entity')
  }
  destroyEntity: {
    Entity:             require('./destroy-entity/entity')
  }
  link: {
    Link:               require('./link/link')
  }
  unlink: {
    Link:               require('./unlink/link')
  }
  nativeQuery: {
    Query:              require('./native-query/query')
  }
  queryFromView: {
    View:               require('./query-from-view/view')
  }
  model: {
    Filter:             require('./model/filter')
    View:               require('./model/view')
  }
}
module.exports = WeaverCommons

# Browser export
window.WeaverCommons = WeaverCommons if window?