(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
(function() {
  module.exports = function(code, message) {
    return {
      code: code,
      message: message
    };
  };

}).call(this);

},{}],2:[function(require,module,exports){
(function() {
  module.exports = {
    DATE: 'date'
  };

}).call(this);

},{}],3:[function(require,module,exports){
(function() {
  var WeaverError;

  WeaverError = {};

  WeaverError.OTHER_CAUSE = -1;

  WeaverError.INTERNAL_SERVER_ERROR = 1;

  WeaverError.CONNECTION_FAILED = 100;

  WeaverError.NODE_NOT_FOUND = 101;

  WeaverError.INVALID_QUERY = 102;

  WeaverError.MISSING_NODE_ID = 104;

  WeaverError.INVALID_KEY_NAME = 105;

  WeaverError.INVALID_POINTER = 106;

  WeaverError.INVALID_JSON = 107;

  WeaverError.COMMAND_UNAVAILABLE = 108;

  WeaverError.NOT_INITIALIZED = 109;

  WeaverError.INCORRECT_TYPE = 111;

  WeaverError.INVALID_CHANNEL_NAME = 112;

  WeaverError.PUSH_MISCONFIGURED = 115;

  WeaverError.OBJECT_TOO_LARGE = 116;

  WeaverError.OPERATION_FORBIDDEN = 119;

  WeaverError.CACHE_MISS = 120;

  WeaverError.INVALID_NESTED_KEY = 121;

  WeaverError.INVALID_FILE_NAME = 122;

  WeaverError.INVALID_ACL = 123;

  WeaverError.TIMEOUT = 124;

  WeaverError.INVALID_EMAIL_ADDRESS = 125;

  WeaverError.MISSING_CONTENT_TYPE = 126;

  WeaverError.MISSING_CONTENT_LENGTH = 127;

  WeaverError.INVALID_CONTENT_LENGTH = 128;

  WeaverError.FILE_TOO_LARGE = 129;

  WeaverError.FILE_SAVE_ERROR = 130;

  WeaverError.DUPLICATE_VALUE = 137;

  WeaverError.INVALID_ROLE_NAME = 139;

  WeaverError.EXCEEDED_QUOTA = 140;

  WeaverError.SCRIPT_FAILED = 141;

  WeaverError.VALIDATION_ERROR = 142;

  WeaverError.INVALID_IMAGE_DATA = 143;

  WeaverError.UNSAVED_FILE_ERROR = 151;

  WeaverError.INVALID_PUSH_TIME_ERROR = 152;

  WeaverError.FILE_DELETE_ERROR = 153;

  WeaverError.REQUEST_LIMIT_EXCEEDED = 155;

  WeaverError.INVALID_EVENT_NAME = 160;

  WeaverError.NODE_ALREADY_EXISTS = 161;

  WeaverError.USERNAME_MISSING = 200;

  WeaverError.PASSWORD_MISSING = 201;

  WeaverError.USERNAME_TAKEN = 202;

  WeaverError.EMAIL_TAKEN = 203;

  WeaverError.EMAIL_MISSING = 204;

  WeaverError.EMAIL_NOT_FOUND = 205;

  WeaverError.SESSION_MISSING = 206;

  WeaverError.MUST_CREATE_USER_THROUGH_SIGNUP = 207;

  WeaverError.ACCOUNT_ALREADY_LINKED = 208;

  WeaverError.INVALID_SESSION_TOKEN = 209;

  WeaverError.USERNAME_NOT_FOUND = 210;

  WeaverError.PASSWORD_INCORRECT = 211;

  WeaverError.LINKED_ID_MISSING = 250;

  WeaverError.INVALID_LINKED_SESSION = 251;

  WeaverError.UNSUPPORTED_SERVICE = 252;

  WeaverError.DATATYPE_INVALID = 322;

  WeaverError.DATATYPE_UNSUPPORTED = 333;

  WeaverError.WRITE_OPERATION_NOT_EXISTS = 344;

  WeaverError.WRITE_OPERATION_INVALID = 345;

  WeaverError.AGGREGATE_ERROR = 600;

  WeaverError.FILE_READ_ERROR = 601;

  WeaverError.X_DOMAIN_REQUEST = 602;

  module.exports = WeaverError;

}).call(this);

},{}],4:[function(require,module,exports){
(function() {
  var Action, Signature, define;

  Action = {};

  Signature = {};

  define = function(action, attributes) {
    var attribute, i, len;
    Signature[action] = {};
    for (i = 0, len = attributes.length; i < len; i++) {
      attribute = attributes[i];
      Signature[action][attribute] = null;
    }
    return action;
  };

  Action.CREATE_NODE = define('create-node', ['id']);

  Action.REMOVE_NODE = define('remove-node', ['id']);

  Action.UPDATE_ATTRIBUTE = define('update-attribute', ['id', 'key', 'value', 'datatype']);

  Action.REMOVE_ATTRIBUTE = define('remove-attribute', ['id', 'key']);

  Action.CREATE_RELATION = define('create-relation', ['from', 'key', 'to']);

  Action.REMOVE_RELATION = define('remove-relation', ['from', 'key', 'to']);

  Action.OBJECTIFY_RELATION = define('objectify-relation', ['from', 'key', 'to', 'id']);

  Action.MERGE_NODES = define('merge-nodes', ['id_into', 'id_merge']);

  module.exports = {
    Action: Action,
    Signature: Signature
  };

}).call(this);

},{}],5:[function(require,module,exports){
(function() {
  module.exports = {
    Error: require('./Error'),
    WeaverError: require('./WeaverError'),
    WriteOperation: require('./WriteOperation')
  };

}).call(this);

},{"./Error":1,"./WeaverError":3,"./WriteOperation":4}]},{},[1,5,2,3,4]);
