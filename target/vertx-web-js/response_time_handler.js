/*
 * Copyright 2014 Red Hat, Inc.
 *
 * Red Hat licenses this file to you under the Apache License, version 2.0
 * (the "License"); you may not use this file except in compliance with the
 * License.  You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */

/** @module vertx-web-js/response_time_handler */
var utils = require('vertx-js/util/utils');
var RoutingContext = require('vertx-web-js/routing_context');

var io = Packages.io;
var JsonObject = io.vertx.core.json.JsonObject;
var JResponseTimeHandler = Java.type('io.vertx.ext.web.handler.ResponseTimeHandler');

/**
 Handler which adds a header `x-response-time` in the response of matching requests containing the time taken
 in ms to process the request.

 @class
*/
var ResponseTimeHandler = function(j_val) {

  var j_responseTimeHandler = j_val;
  var that = this;

  /**

   @public
   @param arg0 {RoutingContext} 
   */
  this.handle = function(arg0) {
    var __args = arguments;
    if (__args.length === 1 && typeof __args[0] === 'object' && __args[0]._jdel) {
      j_responseTimeHandler["handle(io.vertx.ext.web.RoutingContext)"](arg0._jdel);
    } else throw new TypeError('function invoked with invalid arguments');
  };

  // A reference to the underlying Java delegate
  // NOTE! This is an internal API and must not be used in user code.
  // If you rely on this property your code is likely to break if we change it / remove it without warning.
  this._jdel = j_responseTimeHandler;
};

ResponseTimeHandler._jclass = utils.getJavaClass("io.vertx.ext.web.handler.ResponseTimeHandler");
ResponseTimeHandler._jtype = {
  accept: function(obj) {
    return ResponseTimeHandler._jclass.isInstance(obj._jdel);
  },
  wrap: function(jdel) {
    var obj = Object.create(ResponseTimeHandler.prototype, {});
    ResponseTimeHandler.apply(obj, arguments);
    return obj;
  },
  unwrap: function(obj) {
    return obj._jdel;
  }
};
ResponseTimeHandler._create = function(jdel) {
  var obj = Object.create(ResponseTimeHandler.prototype, {});
  ResponseTimeHandler.apply(obj, arguments);
  return obj;
}
/**
 Create a handler

 @memberof module:vertx-web-js/response_time_handler

 @return {ResponseTimeHandler} the handler
 */
ResponseTimeHandler.create = function() {
  var __args = arguments;
  if (__args.length === 0) {
    return utils.convReturnVertxGen(ResponseTimeHandler, JResponseTimeHandler["create()"]());
  } else throw new TypeError('function invoked with invalid arguments');
};

module.exports = ResponseTimeHandler;