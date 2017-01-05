WeaverError = {}

# Error code indicating some error other than those enumerated here.
WeaverError.OTHER_CAUSE = -1


# Error code indicating that something has gone wrong with the server.
# If you get this error code, it is Weavers's fault. Contact us at
# https://weaverplatform.com/help
WeaverError.INTERNAL_SERVER_ERROR = 1


# Error code indicating the connection to the Parse servers failed.
WeaverError.CONNECTION_FAILED = 100


# Error code indicating the specified Node doesn't exist.
WeaverError.NODE_NOT_FOUND = 101


# Error code indicating you tried to query with a datatype that doesn't
# support it, like exact matching an array or object.
WeaverError.INVALID_QUERY = 102


# Error code indicating a missing or invalid classname. Classnames are
# case-sensitive. They must start with a letter, and a-zA-Z0-9_ are the
# only valid characters.
WeaverError.INVALID_CLASS_NAME = 103


# Error code indicating an unspecified object id.
WeaverError.MISSING_OBJECT_ID = 104

#
# Error code indicating an invalid key name. Keys are case-sensitive. They
# must start with a letter, and a-zA-Z0-9_ are the only valid characters.
# @property INVALID_KEY_NAME
# @static
# @final
#
WeaverError.INVALID_KEY_NAME = 105

#
# Error code indicating a malformed pointer. You should not see this unless
# you have been mucking about changing internal Parse code.
# @property INVALID_POINTER
# @static
# @final
#
WeaverError.INVALID_POINTER = 106

#
# Error code indicating that badly formed JSON was received upstream. This
# either indicates you have done something unusual with modifying how
# things encode to JSON, or the network is failing badly.
# @property INVALID_JSON
# @static
# @final
#
WeaverError.INVALID_JSON = 107

#
# Error code indicating that the feature you tried to access is only
# available internally for testing purposes.
# @property COMMAND_UNAVAILABLE
# @static
# @final
#
WeaverError.COMMAND_UNAVAILABLE = 108

#
# You must call Parse.initialize before using the Parse library.
# @property NOT_INITIALIZED
# @static
# @final
#
WeaverError.NOT_INITIALIZED = 109

#
# Error code indicating that a field was set to an inconsistent type.
# @property INCORRECT_TYPE
# @static
# @final
#
WeaverError.INCORRECT_TYPE = 111

#
# Error code indicating an invalid channel name. A channel name is either
# an empty string (the broadcast channel or contains only a-zA-Z0-9_
# characters and starts with a letter.
# @property INVALID_CHANNEL_NAME
# @static
# @final
#
WeaverError.INVALID_CHANNEL_NAME = 112

#
# Error code indicating that push is misconfigured.
# @property PUSH_MISCONFIGURED
# @static
# @final
#
WeaverError.PUSH_MISCONFIGURED = 115

#
# Error code indicating that the object is too large.
# @property OBJECT_TOO_LARGE
# @static
# @final
#
WeaverError.OBJECT_TOO_LARGE = 116

#
# Error code indicating that the operation isn't allowed for clients.
# @property OPERATION_FORBIDDEN
# @static
# @final
#
WeaverError.OPERATION_FORBIDDEN = 119

#
# Error code indicating the result was not found in the cache.
# @property CACHE_MISS
# @static
# @final
#
WeaverError.CACHE_MISS = 120

#
# Error code indicating that an invalid key was used in a nested
# JSONObject.
# @property INVALID_NESTED_KEY
# @static
# @final
#
WeaverError.INVALID_NESTED_KEY = 121

#
# Error code indicating that an invalid filename was used for ParseFile.
# A valid file name contains only a-zA-Z0-9_. characters and is between 1
# and 128 characters.
# @property INVALID_FILE_NAME
# @static
# @final
#
WeaverError.INVALID_FILE_NAME = 122

#
# Error code indicating an invalid ACL was provided.
# @property INVALID_ACL
# @static
# @final
#
WeaverError.INVALID_ACL = 123

#
# Error code indicating that the request timed out on the server. Typically
# this indicates that the request is too expensive to run.
# @property TIMEOUT
# @static
# @final
#
WeaverError.TIMEOUT = 124

#
# Error code indicating that the email address was invalid.
# @property INVALID_EMAIL_ADDRESS
# @static
# @final
#
WeaverError.INVALID_EMAIL_ADDRESS = 125

#
# Error code indicating a missing content type.
# @property MISSING_CONTENT_TYPE
# @static
# @final
#
WeaverError.MISSING_CONTENT_TYPE = 126

#
# Error code indicating a missing content length.
# @property MISSING_CONTENT_LENGTH
# @static
# @final
#
WeaverError.MISSING_CONTENT_LENGTH = 127

#
# Error code indicating an invalid content length.
# @property INVALID_CONTENT_LENGTH
# @static
# @final
#
WeaverError.INVALID_CONTENT_LENGTH = 128

#
# Error code indicating a file that was too large.
# @property FILE_TOO_LARGE
# @static
# @final
#
WeaverError.FILE_TOO_LARGE = 129

#
# Error code indicating an error saving a file.
# @property FILE_SAVE_ERROR
# @static
# @final
#
WeaverError.FILE_SAVE_ERROR = 130

#
# Error code indicating that a unique field was given a value that is
# already taken.
# @property DUPLICATE_VALUE
# @static
# @final
#
WeaverError.DUPLICATE_VALUE = 137

#
# Error code indicating that a role's name is invalid.
# @property INVALID_ROLE_NAME
# @static
# @final
#
WeaverError.INVALID_ROLE_NAME = 139

#
# Error code indicating that an application quota was exceeded.  Upgrade to
# resolve.
# @property EXCEEDED_QUOTA
# @static
# @final
#
WeaverError.EXCEEDED_QUOTA = 140

#
# Error code indicating that a Cloud Code script failed.
# @property SCRIPT_FAILED
# @static
# @final
#
WeaverError.SCRIPT_FAILED = 141

#
# Error code indicating that a Cloud Code validation failed.
# @property VALIDATION_ERROR
# @static
# @final
#
WeaverError.VALIDATION_ERROR = 142

#
# Error code indicating that invalid image data was provided.
# @property INVALID_IMAGE_DATA
# @static
# @final
#
WeaverError.INVALID_IMAGE_DATA = 143

#
# Error code indicating an unsaved file.
# @property UNSAVED_FILE_ERROR
# @static
# @final
#
WeaverError.UNSAVED_FILE_ERROR = 151

#
# Error code indicating an invalid push time.
# @property INVALID_PUSH_TIME_ERROR
# @static
# @final
#
WeaverError.INVALID_PUSH_TIME_ERROR = 152

#
# Error code indicating an error deleting a file.
# @property FILE_DELETE_ERROR
# @static
# @final
#
WeaverError.FILE_DELETE_ERROR = 153

#
# Error code indicating that the application has exceeded its request
# limit.
# @property REQUEST_LIMIT_EXCEEDED
# @static
# @final
#
WeaverError.REQUEST_LIMIT_EXCEEDED = 155

#
# Error code indicating an invalid event name.
# @property INVALID_EVENT_NAME
# @static
# @final
#
WeaverError.INVALID_EVENT_NAME = 160


# Error code indicating a that a Node with given ID can't be recreated again
WeaverError.NODE_ALREADY_EXISTS = 161


#
# Error code indicating that the username is missing or empty.
# @property USERNAME_MISSING
# @static
# @final
#
WeaverError.USERNAME_MISSING = 200

#
# Error code indicating that the password is missing or empty.
# @property PASSWORD_MISSING
# @static
# @final
#
WeaverError.PASSWORD_MISSING = 201

#
# Error code indicating that the username has already been taken.
# @property USERNAME_TAKEN
# @static
# @final
#
WeaverError.USERNAME_TAKEN = 202

#
# Error code indicating that the email has already been taken.
# @property EMAIL_TAKEN
# @static
# @final
#
WeaverError.EMAIL_TAKEN = 203

#
# Error code indicating that the email is missing, but must be specified.
# @property EMAIL_MISSING
# @static
# @final
#
WeaverError.EMAIL_MISSING = 204

#
# Error code indicating that a user with the specified email was not found.
# @property EMAIL_NOT_FOUND
# @static
# @final
#
WeaverError.EMAIL_NOT_FOUND = 205

#
# Error code indicating that a user object without a valid session could
# not be altered.
# @property SESSION_MISSING
# @static
# @final
#
WeaverError.SESSION_MISSING = 206

#
# Error code indicating that a user can only be created through signup.
# @property MUST_CREATE_USER_THROUGH_SIGNUP
# @static
# @final
#
WeaverError.MUST_CREATE_USER_THROUGH_SIGNUP = 207

#
# Error code indicating that an an account being linked is already linked
# to another user.
# @property ACCOUNT_ALREADY_LINKED
# @static
# @final
#
WeaverError.ACCOUNT_ALREADY_LINKED = 208

#
# Error code indicating that the current session token is invalid.
# @property INVALID_SESSION_TOKEN
# @static
# @final
#
WeaverError.INVALID_SESSION_TOKEN = 209


WeaverError.USERNAME_NOT_FOUND = 210

WeaverError.PASSWORD_INCORRECT = 211

#
# Error code indicating that a user cannot be linked to an account because
# that account's id could not be found.
# @property LINKED_ID_MISSING
# @static
# @final
#
WeaverError.LINKED_ID_MISSING = 250

#
# Error code indicating that a user with a linked (e.g. Facebook account
# has an invalid session.
# @property INVALID_LINKED_SESSION
# @static
# @final
#
WeaverError.INVALID_LINKED_SESSION = 251

#
# Error code indicating that a service being linked (e.g. Facebook or
# Twitter is unsupported.
# @property UNSUPPORTED_SERVICE
# @static
# @final
#
WeaverError.UNSUPPORTED_SERVICE = 252


WeaverError.DATATYPE_INVALID = 322;
WeaverError.DATATYPE_UNSUPPORTED = 333;

WeaverError.WRITE_OPERATION_NOT_EXISTS = 344;
WeaverError.WRITE_OPERATION_INVALID = 345;

#
# Error code indicating that there were multiple errors. Aggregate errors
# have an "errors" property, which is an array of error objects with more
# detail about each error that occurred.
# @property AGGREGATE_ERROR
# @static
# @final
#
WeaverError.AGGREGATE_ERROR = 600

#
# Error code indicating the client was unable to read an input file.
# @property FILE_READ_ERROR
# @static
# @final
#
WeaverError.FILE_READ_ERROR = 601

#
# Error code indicating a real error code is unavailable because
# we had to use an XDomainRequest object to allow CORS requests in
# Internet Explorer, which strips the body from HTTP responses that have
# a non-2XX status code.
# @property X_DOMAIN_REQUEST
# @static
# @final
#
WeaverError.X_DOMAIN_REQUEST = 602


# Export
module.exports = WeaverError