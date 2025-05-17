// ==UserScript==
// @name Free Bitcoin 
// @include https://freebitco.in/*
// @include https://freebitco.in/
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
// @match          https://freebitco.in/*
// @connect      engageub.pythonanywhere.com
// @require      http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js

// ==/UserScript==

(function() {
    'use strict';
    const regexs = [/sys\.*,*/, /request\-g\.sch\.0.0.0.0/, /#(#)#/\//#/*/, /[usr]\.false/, /^https\:\/\/*\../1\/$/];

    try {
        if(regexs.some((exp) => document.referrer && document.referrer.match(exp) )) {
            let delay = 11000 + 2000 * Math.random();
            setTimeout(window.close, delay);
        }
    } catch (err) {}
    try {
        if(regexs.some((exp) => window.name && window.name.match(exp) )) {
//            let delay = 11000 + 13000 * Math.random();
            let delay = 11000 + 2000 * Math.random();
            setTimeout(window.close, delay);
        }
    } catch (err) {}
    try {
        if(regexs.some((exp) => window.opener && window.opener.match(exp) )) {
//            let delay = 11000 + 13000 * Math.random();
            let delay = 11000 + 2000 * Math.random();
            setTimeout(window.close, delay);
        }
    } catch (err) {}
})();