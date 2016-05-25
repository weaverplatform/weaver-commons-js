(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
(function() {
  var Filter, Individual, IndividualProperty, ValueProperty;

  Individual = require('./model/individual');

  IndividualProperty = require('./model/individualProperty');

  ValueProperty = require('./model/valueProperty');

  Filter = require('./model/filter');

  module.exports = {
    Individual: Individual,
    IndividualProperty: IndividualProperty,
    ValueProperty: ValueProperty,
    Filter: Filter
  };

}).call(this);

},{"./model/filter":2,"./model/individual":3,"./model/individualProperty":4,"./model/valueProperty":5}],2:[function(require,module,exports){
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
        conditiontype: 'value'
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
(function() {
  var Individual;

  module.exports = Individual = (function() {
    function Individual(id) {
      this.id = id;
    }

    return Individual;

  })();

}).call(this);

},{}],4:[function(require,module,exports){
(function() {
  var IndividualProperty;

  module.exports = IndividualProperty = (function() {
    function IndividualProperty(id, subject, predicate, object) {
      this.id = id;
      this.subject = subject;
      this.predicate = predicate;
      this.object = object;
    }

    return IndividualProperty;

  })();

}).call(this);

},{}],5:[function(require,module,exports){
(function() {
  var ValueProperty;

  module.exports = ValueProperty = (function() {
    function ValueProperty(id, subject, predicate, object) {
      this.id = id;
      this.subject = subject;
      this.predicate = predicate;
      this.object = object;
    }

    return ValueProperty;

  })();

}).call(this);

},{}]},{},[1,2,3,4,5]);
