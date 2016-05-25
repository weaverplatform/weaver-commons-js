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

(function() {
  var Individual;

  module.exports = Individual = (function() {
    function Individual(id) {
      this.id = id;
    }

    return Individual;

  })();

}).call(this);

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
