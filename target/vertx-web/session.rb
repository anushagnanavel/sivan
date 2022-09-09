require 'vertx/util/utils.rb'
# Generated from io.vertx.ext.web.Session
module VertxWeb
  #  Represents a browser session.
  #  <p>
  #  Sessions persist between HTTP requests for a single browser session. They are deleted when the browser is closed, or
  #  they time-out. Session cookies are used to maintain sessions using a secure UUID.
  #  <p>
  #  Sessions can be used to maintain data for a browser session, e.g. a shopping basket.
  #  <p>
  #  The context must have first been routed to a {::VertxWeb::SessionHandler}
  #  for sessions to be available.
  class Session
    # @private
    # @param j_del [::VertxWeb::Session] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::VertxWeb::Session] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == Session
    end
    def @@j_api_type.wrap(obj)
      Session.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxExtWeb::Session.java_class
    end
    # @return [::VertxWeb::Session] The new unique ID of the session.
    def regenerate_id
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:regenerateId, []).call(),::VertxWeb::Session)
      end
      raise ArgumentError, "Invalid arguments when calling regenerate_id()"
    end
    # @return [String] The unique ID of the session. This is generated using a random secure UUID.
    def id
      if !block_given?
        return @j_del.java_method(:id, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling id()"
    end
    #  Put some data in a session
    # @param [String] key the key for the data
    # @param [Object] obj the data
    # @return [self]
    def put(key=nil,obj=nil)
      if key.class == String && ::Vertx::Util::unknown_type.accept?(obj) && !block_given?
        @j_del.java_method(:put, [Java::java.lang.String.java_class,Java::java.lang.Object.java_class]).call(key,::Vertx::Util::Utils.to_object(obj))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling put(#{key},#{obj})"
    end
    #  Get some data from the session
    # @param [String] key the key of the data
    # @return [Object] the data
    def get(key=nil)
      if key.class == String && !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:get, [Java::java.lang.String.java_class]).call(key))
      end
      raise ArgumentError, "Invalid arguments when calling get(#{key})"
    end
    #  Remove some data from the session
    # @param [String] key the key of the data
    # @return [Object] the data that was there or null if none there
    def remove(key=nil)
      if key.class == String && !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:remove, [Java::java.lang.String.java_class]).call(key))
      end
      raise ArgumentError, "Invalid arguments when calling remove(#{key})"
    end
    # @return [Fixnum] the time the session was last accessed
    def last_accessed
      if !block_given?
        return @j_del.java_method(:lastAccessed, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling last_accessed()"
    end
    #  Destroy the session
    # @return [void]
    def destroy
      if !block_given?
        return @j_del.java_method(:destroy, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling destroy()"
    end
    # @return [true,false] has the session been destroyed?
    def destroyed?
      if !block_given?
        return @j_del.java_method(:isDestroyed, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling destroyed?()"
    end
    # @return [true,false] has the session been renewed?
    def regenerated?
      if !block_given?
        return @j_del.java_method(:isRegenerated, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling regenerated?()"
    end
    # @return [String] old ID if renewed
    def old_id
      if !block_given?
        return @j_del.java_method(:oldId, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling old_id()"
    end
    # @return [Fixnum] the amount of time in ms, after which the session will expire, if not accessed.
    def timeout
      if !block_given?
        return @j_del.java_method(:timeout, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling timeout()"
    end
    #  Mark the session as being accessed.
    # @return [void]
    def set_accessed
      if !block_given?
        return @j_del.java_method(:setAccessed, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling set_accessed()"
    end
  end
end
