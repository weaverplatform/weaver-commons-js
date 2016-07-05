(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
(function() {
  var Filter, Individual, IndividualProperty, Predicate, ValueProperty;

  Predicate = require('./model/predicate');

  Individual = require('./model/individual');

  IndividualProperty = require('./model/individualProperty');

  ValueProperty = require('./model/valueProperty');

  Filter = require('./model/filter');

  module.exports = {
    Predicate: Predicate,
    Individual: Individual,
    IndividualProperty: IndividualProperty,
    ValueProperty: ValueProperty,
    Filter: Filter
  };

}).call(this);

},{"./model/filter":2,"./model/individual":3,"./model/individualProperty":4,"./model/predicate":5,"./model/valueProperty":6}],2:[function(require,module,exports){
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
      var error, error1;
      try {
        this.id = payload.id;
      } catch (error1) {
        error = error1;
        return null;
      }
    }


    /*
     taking a look if this object is correct
     */

    Individual.prototype.isValid = function() {
      return this.id != null;
    };

    return Individual;

  })();

}).call(this);

},{}],4:[function(require,module,exports){

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
      var error, error1;
      try {
        this.id = payload.id;
        this.subject = payload.relations.subject;
        this.predicate = payload.relations.predicate;
        this.object = payload.relations.object;
      } catch (error1) {
        error = error1;
        return null;
      }
    }

    IndividualProperty.prototype.isValid = function() {
      return (this.id != null) && (this.subject != null) && (this.predicate != null) && (this.object != null);
    };

    return IndividualProperty;

  })();

}).call(this);

},{}],5:[function(require,module,exports){
(function() {
  var Predicate;

  module.exports = Predicate = (function() {
    function Predicate(payload) {
      var error, error1;
      try {
        this.id = payload.id;
        this.name = payload.name;
      } catch (error1) {
        error = error1;
        return null;
      }
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

},{}],6:[function(require,module,exports){

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
      var error, error1;
      try {
        this.id = payload.id;
        this.subject = payload.relations.subject;
        this.predicate = payload.relations.predicate;
        this.object = payload.attributes.object;
      } catch (error1) {
        error = error1;
        return null;
      }
    }

    ValueProperty.prototype.isValid = function() {
      return (this.id != null) && (this.subject != null) && (this.predicate != null) && (this.object != null);
    };

    return ValueProperty;

  })();

}).call(this);

},{}]},{},[1,2,3,4,5,6]);
