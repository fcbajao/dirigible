module Dirigible
  # Custom error class for rescuing from all known Urban Airship errors
  class Error < StandardError; alias_method :error, :message end

  # Raised when Urban Airship returns HTTP status code 400
  class BadRequest < Error; end

  # Raised when Urban Airship returns HTTP status code 401
  class Unauthorized < Error; end

  # Raised when Urban Airship returns HTTP status code 404
  class NotFound < Error; end

  # Raised when Urban Airship returns HTTP status code 405
  class MethodNotAllowed < Error; end

  # Raised when Urban Airship returns HTTP status code 406
  class NotAcceptable < Error; end
end
