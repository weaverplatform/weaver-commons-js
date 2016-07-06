(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){

/*
 Object to work with $INDIVIDUAL
 an object considered as $INDIVIDUAL is something like:

 "payload":
   {
    "type": "$INDIVIDUAL",
    "id": "ciptr4z1f00093k6krpx3vuhe",
    "attributes":
    {
     "name": "Unnamed",
     "type": "$INDIVIDUAL"
    },
   "relations": { }
 }
 */

(function() {
  var Entity;

  module.exports = Entity = (function() {
    function Entity(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      try {
        this.type = payload.type;
      } catch (undefined) {}
      try {
        this.id = payload.id;
      } catch (undefined) {}
      try {
        this.attributes = payload.attributes;
      } catch (undefined) {}
      try {
        this.relations = payload.relations;
      } catch (undefined) {}
    }

    Entity.prototype.isValid = function() {
      return (this.type != null) && (this.id != null) && (this.attributes != null) && typeof this.attributes === 'object' && (this.relations != null) && typeof this.relations === 'object';
    };

    return Entity;

  })();

}).call(this);

},{}],2:[function(require,module,exports){

/*
 Class to deal with $INDIVIDUAL_PROPERTY
filter.
An object considered as $INDIVIDUAL_PROPERTY is something like:


"payload":
{
  "type": "$INDIVIDUAL_PROPERTY",
  "id": "ciptr5cuf000f3k6kyos9083o",
  "attributes":
  {
    "type": "$INDIVIDUAL_PROPERTY"
  },
  "relations":
  {
    "subject": "ciptqwkw800043k6kg0qk1j4w",
    "predicate": "...",
    "object": "ciptr4z1f00093k6krpx3vuhe"
  }
}
 */

(function() {
  var IndividualProperty;

  module.exports = IndividualProperty = (function() {
    function IndividualProperty(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      try {
        this.type = payload.type;
      } catch (undefined) {}
      try {
        this.id = payload.id;
      } catch (undefined) {}
      try {
        this.attributes = payload.attributes;
      } catch (undefined) {}
      try {
        this.relations = payload.relations;
      } catch (undefined) {}
    }

    IndividualProperty.prototype.getSubjectId = function() {
      return this.relations.subject;
    };

    IndividualProperty.prototype.getPredicateId = function() {
      return this.relations.predicate;
    };

    IndividualProperty.prototype.getObjectId = function() {
      return this.relations.object;
    };

    IndividualProperty.prototype.isValid = function() {
      return (this.type != null) && this.type === '$INDIVIDUAL_PROPERTY' && (this.id != null) && (this.attributes != null) && (this.relations != null) && (this.relations.subject != null) && (this.relations.predicate != null) && (this.relations.object != null);
    };

    return IndividualProperty;

  })();

}).call(this);

},{}],3:[function(require,module,exports){

/*
 Object to work with $INDIVIDUAL
 an object considered as $INDIVIDUAL is something like:

 "payload":
   {
    "type": "$INDIVIDUAL",
    "id": "ciptr4z1f00093k6krpx3vuhe",
    "attributes":
    {
     "name": "Unnamed",
     "type": "$INDIVIDUAL"
    },
   "relations": { }
 }
 */

(function() {
  var Individual;

  module.exports = Individual = (function() {
    function Individual(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      try {
        this.type = payload.type;
      } catch (undefined) {}
      try {
        this.id = payload.id;
      } catch (undefined) {}
      try {
        this.attributes = payload.attributes;
      } catch (undefined) {}
      try {
        this.relations = payload.relations;
      } catch (undefined) {}
    }

    Individual.prototype.isValid = function() {
      return (this.type != null) && this.type === '$INDIVIDUAL' && (this.id != null) && (this.attributes != null) && (this.relations != null);
    };

    return Individual;

  })();

}).call(this);

},{}],4:[function(require,module,exports){
(function() {
  var Predicate;

  module.exports = Predicate = (function() {
    function Predicate(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      try {
        this.id = payload.id;
      } catch (undefined) {}
      try {
        this.name = payload.name;
      } catch (undefined) {}
    }

    Predicate.prototype.addSuper = function(_super) {
      this["super"] = _super;
    };

    Predicate.prototype.isValid = function() {
      return (this.id != null) && (this.name != null);
    };

    return Predicate;

  })();

}).call(this);

},{}],5:[function(require,module,exports){

/*
Object to work with $VALUE_PROPERTY
an object considered as $VALUE_PROPERTY is something like:


"payload":
  {
    "type": "$VALUE_PROPERTY",
    "id": "ciptr4z1g000d3k6kiybrvep4",
    "attributes":
    {
      "predicate": "rdfs:label",
      "object": "Unnamed",
      "type": "$VALUE_PROPERTY"
    },
    "relations":
    {
      "subject": "ciptr4z1f00093k6krpx3vuhe"
    }
  }
 */

(function() {
  var ValueProperty;

  module.exports = ValueProperty = (function() {
    function ValueProperty(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      try {
        this.type = payload.type;
      } catch (undefined) {}
      try {
        this.id = payload.id;
      } catch (undefined) {}
      try {
        this.attributes = payload.attributes;
      } catch (undefined) {}
      try {
        this.relations = payload.relations;
      } catch (undefined) {}
    }

    ValueProperty.prototype.getSubjectId = function() {
      return this.relations.subject;
    };

    ValueProperty.prototype.getPredicateId = function() {
      return this.relations.predicate;
    };

    ValueProperty.prototype.getValue = function() {
      return this.attributes.object;
    };

    ValueProperty.prototype.getDatatype = function() {
      throw new Error('future work');
    };

    ValueProperty.prototype.isValid = function() {
      return (this.type != null) && this.type === '$VALUE_PROPERTY' && (this.id != null) && (this.attributes != null) && (this.attributes.object != null) && (this.relations != null) && (this.relations.subject != null) && (this.relations.predicate != null);
    };

    return ValueProperty;

  })();

}).call(this);

},{}],6:[function(require,module,exports){
(function() {
  var Entity;

  module.exports = Entity = (function() {
    function Entity(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      try {
        this.id = payload.id;
      } catch (undefined) {}
      try {
        this.attribute = payload.attribute;
      } catch (undefined) {}
    }

    Entity.prototype.isValid = function() {
      return (this.id != null) && (this.attribute != null);
    };

    return Entity;

  })();

}).call(this);

},{}],7:[function(require,module,exports){
(function() {
  var Entity;

  module.exports = Entity = (function() {
    function Entity(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      try {
        this.id = payload.id;
      } catch (undefined) {}
    }

    Entity.prototype.isValid = function() {
      return this.id != null;
    };

    return Entity;

  })();

}).call(this);

},{}],8:[function(require,module,exports){
(function() {
  var WeaverCommons;

  WeaverCommons = {
    create: {
      Entity: require('./create/entity'),
      Predicate: require('./create/predicate'),
      Individual: require('./create/individual'),
      IndividualProperty: require('./create/individual-property'),
      ValueProperty: require('./create/value-property')
    },
    read: {
      Entity: require('./read/entity')
    },
    update: {
      AttributeLink: require('./update/attribute-link'),
      EntityLink: require('./update/entity-link')
    },
    destroyAttribute: {
      Entity: require('./destroy-attribute/entity')
    },
    destroyEntity: {
      Entity: require('./destroy-entity/entity')
    },
    link: {
      Link: require('./link/link')
    },
    unlink: {
      Link: require('./unlink/link')
    },
    nativeQuery: {
      Query: require('./native-query/query')
    },
    queryFromView: {
      View: require('./query-from-view/view')
    },
    model: {
      Filter: require('./model/filter')
    }
  };

  module.exports = WeaverCommons;

  if (typeof window !== "undefined" && window !== null) {
    window.WeaverCommons = WeaverCommons;
  }

}).call(this);

},{"./create/entity":1,"./create/individual":3,"./create/individual-property":2,"./create/predicate":4,"./create/value-property":5,"./destroy-attribute/entity":6,"./destroy-entity/entity":7,"./link/link":9,"./model/filter":10,"./native-query/query":11,"./query-from-view/view":12,"./read/entity":13,"./unlink/link":14,"./update/attribute-link":15,"./update/entity-link":16}],9:[function(require,module,exports){
(function() {
  var Link;

  module.exports = Link = (function() {
    function Link(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      this.source = {};
      try {
        this.source.id = payload.source.id;
      } catch (undefined) {}
      try {
        this.key = payload.key;
      } catch (undefined) {}
      this.target = {};
      try {
        this.target.id = payload.target.id;
      } catch (undefined) {}
    }

    Link.prototype.isValid = function() {
      return (this.source != null) && (this.source.id != null) && (this.key != null) && (this.target != null) && (this.target.id != null);
    };

    return Link;

  })();

}).call(this);

},{}],10:[function(require,module,exports){
(function() {
  var Filter;

  module.exports = Filter = (function() {
    function Filter(predicate) {
      this.predicate = predicate;
      this.conditions = [];
    }

    Filter.prototype.addIndividualCondition = function(operation, individual) {
      return this.conditions.push({
        operation: operation,
        individual: individual.id,
        conditiontype: 'individual'
      });
    };

    Filter.prototype.addValueCondition = function(operation, value) {
      return this.conditions.push({
        operation: operation,
        value: value,
        conditiontype: 'string'
      });
    };

    Filter.prototype.addViewCondition = function(operation, view) {
      return this.conditions.push({
        operation: operation,
        view: view.id,
        conditiontype: 'view'
      });
    };

    return Filter;

  })();

}).call(this);

},{}],11:[function(require,module,exports){
(function() {
  var Query;

  module.exports = Query = (function() {
    function Query(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      try {
        this.query = payload.query;
      } catch (undefined) {}
      try {
        this.selects = payload.selects;
      } catch (undefined) {}
    }

    Query.prototype.isValid = function() {
      return (this.query != null) && (this.selects != null) && typeof this.selects === 'object';
    };

    return Query;

  })();

}).call(this);

},{}],12:[function(require,module,exports){
(function() {
  var View;

  module.exports = View = (function() {
    function View(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      try {
        this.id = payload.id;
      } catch (undefined) {}
    }

    View.prototype.isValid = function() {
      return this.id != null;
    };

    return View;

  })();

}).call(this);

},{}],13:[function(require,module,exports){
(function() {
  var Entity;

  module.exports = Entity = (function() {
    function Entity(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      try {
        this.id = payload.id;
      } catch (undefined) {}
      try {
        this.opts = payload.opts;
      } catch (undefined) {}
      if (this.opts == null) {
        this.opts = {};
      }
      if (this.opts.eagerness == null) {
        this.opts.eagerness = 1;
      }
      this.opts;
    }

    Entity.prototype.isValid = function() {
      return this.id != null;
    };

    return Entity;

  })();

}).call(this);

},{}],14:[function(require,module,exports){
(function() {
  var Link;

  module.exports = Link = (function() {
    function Link(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      try {
        this.id = payload.id;
      } catch (undefined) {}
      try {
        this.key = payload.key;
      } catch (undefined) {}
    }

    Link.prototype.isValid = function() {
      return (this.id != null) && (this.key != null);
    };

    return Link;

  })();

}).call(this);

},{}],15:[function(require,module,exports){
(function() {
  var Link;

  module.exports = Link = (function() {
    function Link(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      this.source = {};
      try {
        this.source.id = payload.source.id;
      } catch (undefined) {}
      try {
        this.source.type = payload.source.type;
      } catch (undefined) {}
      try {
        this.key = payload.key;
      } catch (undefined) {}
      this.target = {};
      try {
        this.target.value = payload.target.value;
      } catch (undefined) {}
    }

    Link.prototype.getSourceId = function() {
      return this.source.id;
    };

    Link.prototype.getKey = function() {
      return this.key;
    };

    Link.prototype.getValue = function() {
      return this.target.value;
    };

    Link.prototype.getDatatype = function() {
      throw new Error('future work');
    };

    Link.prototype.isValid = function() {
      return (this.source != null) && (this.source.id != null) && (this.source.type != null) && (this.key != null) && (this.target != null) && (this.target.value != null);
    };

    return Link;

  })();

}).call(this);

},{}],16:[function(require,module,exports){
(function() {
  var Link;

  module.exports = Link = (function() {
    function Link(payload) {
      if (typeof payload === 'string') {
        payload = JSON.parse(payload);
      }
      this.source = {};
      try {
        this.source.id = payload.source.id;
      } catch (undefined) {}
      try {
        this.source.type = payload.source.type;
      } catch (undefined) {}
      try {
        this.key = payload.key;
      } catch (undefined) {}
      this.target = {};
      try {
        this.target.id = payload.target.id;
      } catch (undefined) {}
      try {
        this.target.type = payload.target.type;
      } catch (undefined) {}
    }

    Link.prototype.getSourceId = function() {
      return this.source.id;
    };

    Link.prototype.getKey = function() {
      return this.key;
    };

    Link.prototype.getTargetId = function() {
      return this.target.id;
    };

    Link.prototype.isValid = function() {
      (this.source != null) && (this.source.id != null) && (this.source.type != null) && (this.key != null) && (this.target != null) && (this.target.id != null);
      return this.target.type != null;
    };

    return Link;

  })();

}).call(this);

},{}]},{},[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]);
