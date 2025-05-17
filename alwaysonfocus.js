// ==UserScript==
// @name          Always on focus
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


unsafeWindow.onblur = null;
unsafeWindow.blurred = false;

unsafeWindow.document.hasFocus = () => true;
unsafeWindow.window.onFocus = () => true;

// kill dom property names
[
    "hidden",
    "mozHidden",
    "msHidden",
    "webkitHidden"
].forEach(prop_name => {
    Object.defineProperty(document, prop_name, {value: false});
})

Object.defineProperty(document, "visibilityState", {get: () => "visible"});
Object.defineProperty(document, "webkitVisibilityState", {get: () => "visible"});

unsafeWindow.document.onvisibilitychange = undefined;


// element constructors to allow blur events on
const blurWhitelist = [
    HTMLInputElement,
    HTMLAnchorElement,
    HTMLSpanElement,
    HTMLParagraphElement,
]

// element constructors to block mouseleave and mouseout events on
const hoverBlacklist = [
    HTMLIFrameElement,
    HTMLHtmlElement,
    HTMLBodyElement,
    HTMLHeadElement,
    HTMLFrameSetElement, // obsolete but included for completeness
    HTMLFrameElement // obsolete but included for completeness
];

var event_handler = (event) => {
    // if the event is blur, and the target is an whitelisted type, allow it
    if (event.type === 'blur' &&
        ((blurWhitelist.some(type => event.target instanceof type) ||
            event.target.classList?.contains('ql-editor')))) { // quill js fix
        return;
    }
    // if the event is mouseleave or mouseout, and the target is an blacklisted type, block it
    if (['mouseleave', 'mouseout'].includes(event.type) &&
        !hoverBlacklist.some(type => event.target instanceof type)) {
        return;
    }
    event.preventDefault();
    event.stopPropagation();
    event.stopImmediatePropagation();
}

// kill event listeners
[
    "visibilitychange",
    "webkitvisibilitychange",
    "blur",
    "hasFocus",
    "mouseleave",
    "mouseout",
    "mozvisibilitychange",
    "msvisibilitychange"
].forEach(event_name => {
    window.addEventListener(event_name, event_handler, true);
    document.addEventListener(event_name, event_handler, true);
})