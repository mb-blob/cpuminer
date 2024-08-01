// ==UserScript==
// @name         ML Based Hcaptcha Solver with Browser Trainer(Automatically solves Hcaptcha in browser)
// @namespace    ML Based Hcaptcha Solver
// @version      0.4
// @description  Remote Hcaptcha Solver in Browser | Automatically solves Hcaptcha in browser
// @author       Md ubeadulla
// @match        https://*.hcaptcha.com/*hcaptcha-challenge*
// @match        https://*.hcaptcha.com/*checkbox*
// @match        https://*.hcaptcha.com/*captcha*
// @grant        GM_xmlhttpRequest
// @grant        GM_setValue
// @grant        GM_getValue
// @grant        GM_listValues
// @connect      www.imageidentify.com
// @connect      https://cdnjs.cloudflare.com
// @connect      https://cdn.jsdelivr.net
// @connect      https://unpkg.com
// @connect      herokuapp.com
// @connect      bustling-aeolian-gourd.glitch.me
// @connect      onrender.com
// @connect      https://*.hcaptcha.com/*
// @require      https://cdnjs.cloudflare.com/ajax/libs/tesseract.js/4.0.0/tesseract.min.js
// @require      https://unpkg.com/jimp@0.5.2/browser/lib/jimp.min.js


/*
██╗░░██╗░█████╗░░█████╗░██████╗░████████╗░█████╗░██╗░░██╗░█████╗░  ░██████╗░█████╗░██╗░░░░░██╗░░░██╗███████╗██████╗░
██║░░██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██║░░██║██╔══██╗  ██╔════╝██╔══██╗██║░░░░░██║░░░██║██╔════╝██╔══██╗
███████║██║░░╚═╝███████║██████╔╝░░░██║░░░██║░░╚═╝███████║███████║  ╚█████╗░██║░░██║██║░░░░░╚██╗░██╔╝█████╗░░██████╔╝
██╔══██║██║░░██╗██╔══██║██╔═══╝░░░░██║░░░██║░░██╗██╔══██║██╔══██║  ░╚═══██╗██║░░██║██║░░░░░░╚████╔╝░██╔══╝░░██╔══██╗
██║░░██║╚█████╔╝██║░░██║██║░░░░░░░░██║░░░╚█████╔╝██║░░██║██║░░██║  ██████╔╝╚█████╔╝███████╗░░╚██╔╝░░███████╗██║░░██║
╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░░░░░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝  ╚═════╝░░╚════╝░╚══════╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝
*/
/** Note: This script is solely intended for the use of educational purposes only and not to abuse any website.
/* The developer will not be held responsible for improper use of this script.
 * Sign Up using the referral links or consider a donation to the following addresses:
 ***************************************************************************************************
 * Faucets:                                                                                        *
 * Check out this link for updates https://captchasolvers.glitch.me/                               *
 * Or Sign up using the referral link and solve captchas to earn crypto (Do not abuse the websites)*
 * 1.) https://get-bitcoin.net/?ref=9230                                                           *
 * 2.) http://betfury.io/?r=6141b01a2209f66daafa761a                                               *
 * 3.) https://r.adbtc.top/1771513                                                                 *
 * 4.) https://cryptowin.io/ref/ubeadulla                                                          *
 * 5.) https://free-litecoin.com/login?referer=1035367                                             *
 * 6.) https://free-ethereum.io/?referer=742436                                                    *
 * 7.) https://litking.biz/signup?r=125431                                                         *
 * 8.) https://bitking.biz/signup?r=75339                                                          *
 ***************************************************************************************************
 * MicroWallets:                                                                                   *
 * 1.) FaucetPay: https://faucetpay.io/?r=461541                                                   *                                           *
 ***************************************************************************************************
 * Cloud Mining Websites Just SignUp and earn passive income                                       *
 * 1.) https://hashshiny.io/r/UB5357323                                                            *
 * 2.) https://cardone.cc/ref/engageub                                                             *
 ***************************************************************************************************
 */

// ==/UserScript==
(async function() {

    'use strict';

    // Image Classifier Server for image classification
    // Replace YOUR_APP_NAME with the unique app name you created in heroku or onrender.com website
    const IMAGE_CLASSIFIER_SERVER = "tensorflowimageclassifier.onrender.com";
    //  const IMAGE_CLASSIFIER_SERVER = "tensorflowimagetest.herokuapp.com";

    //Enable Trainer to train the images and disable it when you are done training
    var ENABLE_TRAINER = false;

    //*****************DO NOT CHANGE THE CODE BELOW UNLESS YOU KNOW WHAT YOU ARE DOING*******************

    // The following line works only if you allow popups in the browser by default.
    window.open('','_self').focus();

    const TESSERACT_SERVER = "bustling-aeolian-gourd.glitch.me";

    var selectedImageCount = 0;
    var tensorFlowModel = undefined;
    var tensorFlowMobileNetModel = undefined;
    var worker = undefined;

    var identifiedObjectsList = [];
    var exampleImageList = [];
    var identifyObjectsFromImagesCompleted = false;
    var currentExampleUrls = [];

    //Default Language for hcaptcha
    const LANG_ENGLISH = "English"
    const DEFAULT_LANGUAGE = LANG_ENGLISH;
    const ENABLE_DEFAULT_LANGUAGE = true;

    //Node Selectors
    const CHECK_BOX = "#checkbox";
    const SUBMIT_BUTTON = ".button-submit";
    const TASK_IMAGE_BORDER = ".task-image .border";
    const IMAGE = ".task-image .image";
    const TASK_IMAGE = ".task-image";
    const TASK_ANSWERS = ".task-answers";
    const PROMPT_TEXT = ".prompt-text";
    const ANSWER_EXAMPLE = ".answer-example .image";
    const ANSWER_TEXT_CONTENT = "div.answer-text .text-content";
    const ANSWER_TEXT_DIV = "div.answer-text > div";
    const NO_SELECTION = ".no-selection";
    const CHALLENGE_INPUT_FIELD = ".challenge-input .input-field";
    const CHALLENGE_INPUT = ".challenge-input";
    const CHALLENGE_INTERFACE = ".challenge-interface";
    const CHALLENGE_ANSWER = "div.challenge-answer";
    const CHALLENGE_CANVAS = ".challenge-container canvas";
    const CHALLENGE_IMAGE = ".challenge-example .image .image";
    const BOUNDING_BOX_EXAMPLE = "div.bounding-box-example";
    const IMAGE_FOR_OCR = ".challenge-image .zoom-image";
    const LANGUAGE_SELECTOR = "#language-list .scroll-container .option span";
    const TRAIN_BUTTON = "div.train.button";
    const TRAIN_BUTTON_DIV = "div.train.button > div";

    //Attributes
    const ARIA_CHECKED = "aria-checked";
    const ARIA_HIDDEN = "aria-hidden";

    //Sentences
    const SENTENCE_TEXT_A = "Please click each image containing a ";
    const SENTENCE_TEXT_AN = "Please click each image containing an ";
    const SENTENCE_TEXT_WITH = "Please select all images with a ";
    const SENTENCE_TEXT_ATLEAST = "Please click all of the images which contain at least";
    const SENTENCE_TEXT_ALL = "Please select all";
    const SENTENCE_TEXT_ON_ALL_A = "Please click on all images containing a ";
    const SENTENCE_TEXT_ON_ALL_AN = "Please click on all images containing an ";
    const SENTENCE_TEXT_SELECT = "Select all";
    const SENTENCE_TEXT_WITHOUT_A = "Please click each image containing ";
    const SENTENCE_TEXT_ON_ALL_WITHOUT_A = "Please click on all images containing ";

    const SENTENCES = [SENTENCE_TEXT_A, SENTENCE_TEXT_AN, SENTENCE_TEXT_WITH, SENTENCE_TEXT_ATLEAST,
                       SENTENCE_TEXT_ALL, SENTENCE_TEXT_ON_ALL_A, SENTENCE_TEXT_ON_ALL_AN, SENTENCE_TEXT_SELECT,
                       SENTENCE_TEXT_WITHOUT_A, SENTENCE_TEXT_ON_ALL_WITHOUT_A];


    const LANGUAGE_FOR_OCR = "eng";

    // Max Skips that can be done while solving the captcha
    // This is likely not to happen, if it occurs retry for new images
    const MAX_SKIPS = 10;
    var skipCount = 0;

    var USE_MOBILE_NET = false;
    var USE_COLOUR_PATTERN = false;
    var NEW_WORD_IDENTIFIED = false;
    var USE_TEXT_FROM_IMAGE = false;

    if(IMAGE_CLASSIFIER_SERVER.includes("YOUR_APP_NAME")){
        console.log("Image Classification Server is not mentioned in the script. Please replace it with your server name.");
        console.log("Captcha cannot be solved");
        return;
    }

    //Overriding canvas draw method
    var currentCanvasImage = "";
    var previousCanvasImage = "";
    var origDrawImage = CanvasRenderingContext2D.prototype.drawImage;
    CanvasRenderingContext2D.prototype.drawImage = function() {
        currentCanvasImage = arguments[0].src;
        origDrawImage.apply(this, arguments);
    };


    String.prototype.includesOneOf = function(arrayOfStrings) {

        //If this is not an Array, compare it as a String
        if (!Array.isArray(arrayOfStrings)) {
            return this.toLowerCase().includes(arrayOfStrings.toLowerCase());
        }

        for (var i = 0; i < arrayOfStrings.length; i++) {
            if ((arrayOfStrings[i].substr(0, 1) == "=" && this.toLowerCase() == arrayOfStrings[i].substr(1).toLowerCase()) ||
                (this.toLowerCase().includes(arrayOfStrings[i].toLowerCase()))) {
                return true;
            }
        }
        return false;
    }

    String.prototype.notIncludesOneOf = function(arrayOfStrings) {

        //If this is not an Array, compare it as a String
        if (!Array.isArray(arrayOfStrings)) {
            return arrayOfStrings.substr(0, 2) == "!=" && this.toLowerCase().includes(arrayOfStrings.substr(2).toLowerCase());
        }

        for (var i = 0; i < arrayOfStrings.length; i++) {
            if (arrayOfStrings[i].substr(0, 2) == "!=" && this.toLowerCase().includes(arrayOfStrings[i].substr(2).toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    String.prototype.equalsOneOf = function(arrayOfStrings) {

        //If this is not an Array, compare it as a String
        if (!Array.isArray(arrayOfStrings)) {
            return this.toLowerCase() == arrayOfStrings.toLowerCase();
        }

        for (var i = 0; i < arrayOfStrings.length; i++) {
            if ((arrayOfStrings[i].substr(0, 1) == "=" && this.toLowerCase() == arrayOfStrings[i].substr(1).toLowerCase()) ||
                (this.toLowerCase() == arrayOfStrings[i].toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    String.prototype.replaceAllInArray = function(arrayOfStrings, replaceString) {

        //If this is not an Array, compare it as a String
        if (!Array.isArray(arrayOfStrings)) {
            return this.replaceAll(arrayOfStrings, replaceString);
        }

        var tempWord = this;

        for (var i = 0; i < arrayOfStrings.length; i++) {
            tempWord = tempWord.replaceAll(arrayOfStrings[i], replaceString);
        }
        return tempWord;
    }


    function fixedEncodeURIComponent(str) {
        return encodeURIComponent(str).replace(/[!'()*]/g, function(c) {
            return '%' + c.charCodeAt(0).toString(16);
        });
    }

    // Returns the coordinates of mouse position
    function getMousePosition(canvas, event) {
        let rect = canvas.getBoundingClientRect();
        let x = event.clientX - rect.left;
        let y = event.clientY - rect.top;
        let position = {};
        position.x = x;
        position.y = y;
        return position;
    }

    // Get Image data from URI or image source
    async function getImageDataFromSource(src) {
        return new Promise(function(resolve, reject) {
            if (src == null) return reject();
            var canvas = document.createElement('canvas'),
                context = canvas.getContext('2d'),
                image = new Image();
            image.onload = function() {
                canvas.width = image.width;
                canvas.height = image.height;
                context.drawImage(image, 0, 0, canvas.width, canvas.height);
                resolve(context.getImageData(0, 0, canvas.width, canvas.height));
            };
            image.src = src;
        });
    }

    // Checks if image is a blank image
    async function isImageBlank(src){

        var imageData = await getImageDataFromSource(src);
        var data = imageData.data;
        var count = 0;
        for(let i=0; i<data.length;i++) {
            if(data[i] == 0) {
                count++;
            }
        }
        if(count == data.length){
            return true;
        }else{
            return false;
        }
    }


    //Match Images for Bounding Box Images
    //Before training the image, wait for the console message to appear in browser
    //This approach uses a native approach since the images are not trained for a specific category.
    //CocoSSD Model provides bounding box coordinates which can be used for any trained images
    async function matchImagesForBoundingBox() {

        try{
            var mouseDownPosition = [];
            var mouseUpPosition = [];

            //Input the results you wish to be updated
            // Ex: var resetResultsFromDb = ["23,45:45,21", "23,89:68,98"];
            // The image has to occur again to update
            var resetResultsFromDb = ["63,258:315,364","145,238:308,364", "111,288:111,288","138,274:138,274"];
            var mobileCanvasDetected = false;

            let canvasElem = qSelector(CHALLENGE_CANVAS);
            if(canvasElem.style.height == "536px" && canvasElem.style.width == "500px"){
                // console.log("Desktop screen size detected");
            }else if(canvasElem.style.height == "316px" && canvasElem.style.width == "280px"){
                //   console.log("Mobile screen size detected");
                mobileCanvasDetected = true;
            }
            else{
                console.log("Canvas size does not match for mobile or desktop");
            }


            let url = currentCanvasImage;

            if(!url) {
                console.log("Blank Image. Retrying..");
                return selectImagesAfterDelay(3);
            }

            if( previousCanvasImage == url) {
                //console.log("Repeating Image");
                qSelector(SUBMIT_BUTTON).click();
                imageSubmitted = true;
                return selectImagesAfterDelay(3);

            }

            previousCanvasImage = url;

            // Compressing the Image to save db disk space and reduce retrieval time
            // You may store it in it's original form if required
            var boundingBoximage =
                await new Promise(function(resolve){
                    Jimp.read(url).then(function (data) {
                        data.resize(256, Jimp.AUTO)
                            .quality(60) // set JPEG quality
                            .greyscale() // set greyscale
                            .getBase64(Jimp.AUTO, function (err, src) {
                            let base64 = src.replace(/^data:image\/\w+;base64,/, "");
                            resolve(base64);
                        })
                    })
                })

            canvasElem.focus();

            //Check if we have solution in database
            var resultFromDb = await getImageDataFromDB(boundingBoximage);
            var updateImage = false;
            var imageSubmitted = false;

            console.log("Result from Db:: " + resultFromDb);

            //Update Image for the following
            if(resultFromDb && resultFromDb.toString().length > 2 && resultFromDb.toString().includes(":") &&
               resultFromDb.equalsOneOf(resetResultsFromDb)){
                resultFromDb = "";
                updateImage = true;
                console.log("Image data will be updated after drawing the box");
            }

            //If the solution is present draw the bounding box and click next
            if(resultFromDb && resultFromDb.toString().length > 2 && resultFromDb.toString().includes(":")){

                resultFromDb = resultFromDb.split(":");
                var firstPosition = resultFromDb[0];
                firstPosition = firstPosition.split(',');
                var secondPosition = resultFromDb[1];
                secondPosition = secondPosition.split(',');

                if(mobileCanvasDetected){
                    firstPosition[0] = Math.floor((280/500) * firstPosition[0]);
                    firstPosition[1] = Math.floor((316/536) * firstPosition[1]);
                    secondPosition[0] = Math.floor((280/500) * secondPosition[0]);
                    secondPosition[1] = Math.floor((316/536) * secondPosition[1]);
                }

                qSelector(CHALLENGE_CANVAS).dispatchEvent(new MouseEvent("mousedown", {
                    clientX: Number(firstPosition[0]) + 10 * (mobileCanvasDetected ? 0.5:1),
                    clientY: Number(firstPosition[1]) + 10 * (mobileCanvasDetected ? 1:1)
                }));

                await delay(1000);

                qSelector(CHALLENGE_CANVAS).dispatchEvent(new MouseEvent("mousemove", {
                    clientX: Number(secondPosition[0]),
                    clientY: Number(secondPosition[1]) + 10 * (mobileCanvasDetected ? 1:0)
                }));

                await delay(1000);

                qSelector(CHALLENGE_CANVAS).dispatchEvent(new MouseEvent("mouseup", {
                    clientX: Number(secondPosition[0]),
                    clientY: Number(secondPosition[1])
                }));

                await delay(1000);

                qSelector(SUBMIT_BUTTON).click();
                imageSubmitted = true;
                return selectImagesAfterDelay(3);

            }else{

                if(mobileCanvasDetected){
                    console.log("Training can only be done in desktop for now but the results can be used in mobile");
                    console.log("Not storing the result");
                }

                var mouseDownCount = 0;
                var mouseUpCount = 0;

                async function mouseDownEventPosition(e){
                    mouseDownCount = mouseDownCount + 1;

                    if(mouseDownCount == 2) {
                        mouseDownPosition.push(getMousePosition(canvasElem, e));
                        canvasElem.removeEventListener("mousedown", mouseDownEventPosition);
                        canvasElem.removeEventListener("mouseup", mouseUpEventPosition);

                        if(url == currentCanvasImage){
                            //Save the image with image description
                            var positionString = mouseDownPosition[0].x + "," + mouseDownPosition[0].y + ":" +
                                mouseDownPosition[1].x + "," + mouseDownPosition[1].y;
                            console.log(positionString);
                            if(updateImage){
                                await updateImageDataIntoDB( boundingBoximage, positionString);
                                console.log("Bounding box updated to db");
                                updateImage = false;
                            }else{
                                await putImageDataIntoDB(boundingBoximage, positionString);
                                console.log("Bounding box saved to db");
                            }
                        } else{
                            console.log("Image has been changed. Retrying..");
                        }

                        await delay(1000);
                        qSelector(SUBMIT_BUTTON).click();
                        imageSubmitted = true;
                        return selectImagesAfterDelay(3);

                    }else{
                        mouseDownPosition.push(getMousePosition(canvasElem, e));
                    }
                }

                async function mouseUpEventPosition(e){
                    mouseUpCount = mouseUpCount + 1;

                    if(mouseUpCount == 1 && mouseDownPosition.length == 1) {


                        mouseUpPosition.push(getMousePosition(canvasElem, e));

                        if(Math.abs(Number(mouseUpPosition[0].x) - Number(mouseDownPosition[0].x) > 10) &&
                           Math.abs(Number(mouseUpPosition[0].y) - Number(mouseDownPosition[0].y) > 10)){

                            canvasElem.removeEventListener("mousedown", mouseDownEventPosition);
                            canvasElem.removeEventListener("mouseup", mouseUpEventPosition);

                            if(url == currentCanvasImage){
                                //Save the image with image description
                                var positionString = mouseDownPosition[0].x + "," + mouseDownPosition[0].y + ":" +
                                    mouseUpPosition[0].x + "," + mouseUpPosition[0].y;
                                console.log(positionString);
                                if(updateImage){
                                    await updateImageDataIntoDB( boundingBoximage, positionString);
                                    console.log("Bounding box updated to db");
                                    updateImage = false;
                                }else{
                                    await putImageDataIntoDB(boundingBoximage, positionString);
                                    console.log("Bounding box saved to db");
                                }
                            } else{
                                console.log("Image has been changed. Retrying..");
                            }

                            await delay(1000);
                            qSelector(SUBMIT_BUTTON).click();
                            imageSubmitted = true;
                            return selectImagesAfterDelay(3);

                        }

                    }else{

                    }
                }

                if(!mobileCanvasDetected){
                    canvasElem.addEventListener("mousedown", mouseDownEventPosition);
                    canvasElem.addEventListener("mouseup", mouseUpEventPosition);
                    console.log("Waiting for bounding box to be drawn");
                }

                //If No Input is given for 20 seconds, skip the captcha
                var intervalCount = 0;
                var interval = setInterval(function(){
                    intervalCount = intervalCount + 1;
                    if(imageSubmitted){
                        clearInterval(interval);
                        canvasElem.removeEventListener("mousedown", mouseDownEventPosition);
                        canvasElem.removeEventListener("mouseup", mouseUpEventPosition);
                    } else if(!imageSubmitted && intervalCount > 3){
                        canvasElem.removeEventListener("mousedown", mouseDownEventPosition);
                        canvasElem.removeEventListener("mouseup", mouseUpEventPosition);
                        console.log("Image Skipped");
                        qSelector(SUBMIT_BUTTON).click();
                        clearInterval(interval);
                        return selectImagesAfterDelay(3);
                    }

                },5000)

                }
        }catch(e){
            console.log(e);
            return selectImagesAfterDelay(3);
        }

    }

    async function getBase64Image(imageUrl){
        return await new Promise(function(resolve){
            Jimp.read(imageUrl).then(function (data) {
                data.getBase64(Jimp.AUTO, function (err, src) {
                    let base64 = src.replace(/^data:image\/\w+;base64,/, "");
                    resolve(base64);
                })
            })
        })
    }



    async function classifyNames(imageUrl){

        return await new Promise(function(resolve){
            Jimp.read(imageUrl).then(function (data) {

                data.getBase64(Jimp.AUTO, async function (err, src) {

                    let url = src.replace(/^data:image\/\w+;base64,/, "");
                    GM_xmlhttpRequest({
                        method: "POST",
                        url: "https://" + IMAGE_CLASSIFIER_SERVER + "/",
                        headers: {
                            "Content-Type": "application/x-www-form-urlencoded"
                        },
                        data: "url=" + encodeURIComponent(url),
                        timeout: 30000,
                        onload: function(response) {

                            // console.log(response.responseText);
                            var json = JSON.parse(response.responseText);
                            var hashSet = new Set();

                            for (var key in json) {
                                if (json.hasOwnProperty(key)) {
                                    hashSet.add(json[key].className);
                                }
                            }

                            return resolve(hashSet);

                        }
                    })
                })
            })

        })
    }

    async function matchImagesBySimilarity(){

        if(qSelector(TASK_IMAGE) && qSelector(TASK_ANSWERS) &&
           qSelector(ANSWER_EXAMPLE) &&
           !qSelector(ANSWER_EXAMPLE).style.background &&
           qSelectorAll(ANSWER_EXAMPLE).length >= 2) {

            var resetResultsFromDb = [];
            let questionImage = "";
            if(qSelector(IMAGE) && qSelector(IMAGE).style && qSelector(IMAGE).style.background){
                questionImage = qSelector(IMAGE).style.background;
            }

            if(!questionImage){
                return selectImagesAfterDelay(3);
            }
            let questionImageUrl = getUrlFromString(questionImage);

            var boundingBoximage =
                await new Promise(function(resolve){
                    Jimp.read(questionImageUrl).then(function (data) {
                        data.resize(256, Jimp.AUTO)
                            .quality(60) // set JPEG quality
                            .greyscale() // set greyscale
                            .getBase64(Jimp.AUTO, function (err, src) {
                            let base64 = src.replace(/^data:image\/\w+;base64,/, "");
                            resolve(base64);
                        })
                    })
                })

            //Check if we have solution in database
            var resultFromDb = await getImageDataFromDB(boundingBoximage);
            var imageSubmitted = false;

            //console.log("Result from Db:: " + resultFromDb);

            if(resultFromDb && resultFromDb.match(/read(.*)peer/)){
                resultFromDb = resultFromDb.replaceAll(resultFromDb.match(/read(.*)peer/)[0], "");
            }

            var resultNode = "";
            resultFromDb = resultFromDb.trim();
            let words = resultFromDb.split(':');
            for(let i=0;i< words.length;i++){
                if(Array.from(qSelectorAll('div')).find(el => el.textContent.trim() === words[i].trim())){
                    resultNode= Array.from(qSelectorAll('div')).find(el => el.textContent.trim() === words[i].trim());
                    break;
                }
            }

            //If the solution is present click on it
            if(resultFromDb && resultFromDb.toString().length > 1 && resultNode
               && qSelector(IMAGE) && qSelector(IMAGE).style && questionImage == qSelector(IMAGE).style.background){
                if(resultNode.style.color!="rgb(255, 255, 255)"){
                    triggerMouseEvent(resultNode, 'mousedown');
                    triggerMouseEvent(resultNode, 'mouseup');
                }

                //Click submit button
                await delay(1000);
                if (qSelector(SUBMIT_BUTTON)) {
                    qSelector(SUBMIT_BUTTON).click();
                }

                return selectImagesAfterDelay(3);

            } else{
                console.log("Waiting for input to be selected");
                //Wait for the image to be selected to store the image
                var intervalCount = 0;
                var interval = setInterval(async function(){
                    intervalCount = intervalCount+1;

                    if(qSelector(IMAGE) && qSelector(IMAGE).style && questionImage == qSelector(IMAGE).style.background) {

                        for(let i=0;i<document.querySelectorAll(ANSWER_TEXT_CONTENT).length;i++){
                            if(document.querySelectorAll(ANSWER_TEXT_CONTENT)[i].style.color=="rgb(255, 255, 255)"){
                                var answer = document.querySelectorAll(ANSWER_TEXT_CONTENT)[i].innerText;
                                //console.log(answer);
                                clearInterval(interval);

                                //Store the image or update if it already has word
                                if (resultFromDb && resultFromDb.toString().length > 1) {
                                    console.log("Adding new description to the same image");
                                    answer = resultFromDb.toString() + ':' + answer;
                                    updateImageDataIntoDB(boundingBoximage, answer);
                                    console.log("Image updated into database");
                                }else{
                                    putImageDataIntoDB(boundingBoximage, answer);
                                    console.log("Image Stored into database");
                                }

                                //Click Submit button
                                if (qSelector(SUBMIT_BUTTON)) {
                                    qSelector(SUBMIT_BUTTON).click();
                                }

                                //Select Images
                                return selectImagesAfterDelay(3);
                            }
                        }

                    }else if (intervalCount > 3){
                        clearInterval(interval);
                        //Click Submit button
                        if (qSelector(SUBMIT_BUTTON)) {
                            qSelector(SUBMIT_BUTTON).click();
                        }

                        //Select Images
                        return selectImagesAfterDelay(3);
                    }

                },5000);
            }

        } else if(qSelector(TASK_IMAGE) && qSelector(TASK_ANSWERS)){
            var questionImage = qSelector(IMAGE).style.background;
            var questionImageUrl = getUrlFromString(questionImage);
            var questionSet = await classifyNames(questionImageUrl);

            var maxCount = 0;
            var maxPosition =0;
            for(let i=0;i<qSelectorAll(ANSWER_EXAMPLE).length;i++){
                let answerImage = qSelectorAll(ANSWER_EXAMPLE)[i].style.background;;
                let answerImageUrl = getUrlFromString(answerImage);
                var answerSet = await classifyNames(answerImageUrl);
                let count =0;

                for(let key of questionSet) {
                    if(answerSet.has(key)){
                        count++;
                    }
                }

                if(count > maxCount){
                    maxCount = count;
                    maxPosition = i;
                }

            }
            triggerMouseEvent(qSelectorAll(CHALLENGE_ANSWER)[maxPosition],"mouseup");
            await delay(1000);
            if (qSelector(SUBMIT_BUTTON)) {
                qSelector(SUBMIT_BUTTON).click();
            }

            return selectImagesAfterDelay(3);
        }

    }

    async function getImageDataFromDB(url, word){

        return await new Promise(function(resolve){

            GM_xmlhttpRequest({
                method: "POST",
                url: "https://" + IMAGE_CLASSIFIER_SERVER + "/getImageData",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                data: "url=" + encodeURIComponent(url) + "&description=" + word,
                timeout: 30000,

                onload: function(response) {
                    // console.log(response);
                    return resolve(response.responseText);

                },
                onerror: function(e) {
                    console.log(e);
                    console.log("Exception occured while processing the request");
                    return resolve();
                },
                ontimeout: function() {
                    console.log("Request Timed out");
                    return resolve();
                },
            });

        })

    }

    async function putImageDataIntoDB(url, word){

        return await new Promise(function(resolve){
            GM_xmlhttpRequest({
                method: "POST",
                url: "https://" + IMAGE_CLASSIFIER_SERVER + "/putImageData",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                data: "url=" + encodeURIComponent(url) + "&description=" + word,
                timeout: 30000,

                onload: function(response) {
                    //  console.log(response);
                    return resolve(response.responseText);
                },
                onerror: function(e) {
                    console.log(e);
                    console.log("Exception occured while processing the request");
                    return resolve();
                },
                ontimeout: function() {
                    console.log("Request Timed out");
                    return resolve();
                },
            });
        })

    }


    async function updateImageDataIntoDB(url, word){

        return await new Promise(function(resolve){
            GM_xmlhttpRequest({
                method: "POST",
                url: "https://" + IMAGE_CLASSIFIER_SERVER + "/updateImageData",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                data: "url=" + encodeURIComponent(url) + "&description=" + word,
                timeout: 30000,

                onload: function(response) {
                    // console.log(response);
                    return resolve(response.responseText);
                },
                onerror: function(e) {
                    console.log(e);
                    console.log("Exception occured while processing the request");
                    return resolve();
                },
                ontimeout: function() {
                    console.log("Request Timed out");
                    return resolve();
                },
            });
        })

    }

    //Function to sleep or delay
    async function delay(ms) {
        return new Promise(resolve => setTimeout(resolve, ms))
    }


    //Initialize TesseractWorker
    async function initializeTesseractWorker() {
        if(!worker){
            worker = await Tesseract.createWorker({cacheMethod: 'none'});
            //await worker.load();
            await worker.loadLanguage(LANGUAGE_FOR_OCR);
            await worker.initialize(LANGUAGE_FOR_OCR);
        }
    }


    function qSelectorAll(selector) {
        return document.querySelectorAll(selector);
    }

    function qSelector(selector) {
        return document.querySelector(selector);
    }


    function isHidden(el) {
        return (el.offsetParent === null)
    }

    if (window.location.href.includes("checkbox")) {

        if (qSelector(CHECK_BOX) && !isHidden(qSelector(CHECK_BOX)) && qSelector(CHECK_BOX).getAttribute(ARIA_CHECKED) == "false") {
            qSelector(CHECK_BOX).click();
        }

        var checkboxInterval = setInterval(function() {
            if (!qSelector(CHECK_BOX)) {
                //Wait until the checkbox element is visible
            } else if (qSelector(CHECK_BOX).getAttribute(ARIA_CHECKED) == "true") {
                clearInterval(checkboxInterval);
            } else if (!isHidden(qSelector(CHECK_BOX)) && qSelector(CHECK_BOX).getAttribute(ARIA_CHECKED) == "false") {
                qSelector(CHECK_BOX).click();
            } else {
                return;
            }

        }, 5000);
    } else {
        try {
            await initializeTesseractWorker();
            selectImages();
        } catch (err) {
            console.log(err);
        }

    }

    function selectImagesAfterDelay(delay) {
        setTimeout(function() {
            selectImages();
        }, delay * 1000);
    }

    function triggerEvent(el, type) {
        var e = document.createEvent('HTMLEvents');
        e.initEvent(type, false, true);
        el.dispatchEvent(e);
    }

    function triggerMouseEvent(el, type) {
        var e = document.createEvent('MouseEvent');
        e.initEvent(type, false, true);
        el.dispatchEvent(e);
    }


    function getUrlFromString(urlString) {

        var imageUrl = urlString.substring(
            urlString.indexOf('"') + 1,
            urlString.lastIndexOf('"')
        );

        if (!imageUrl || !imageUrl.includes("https")) {
            return 0;
        }

        return imageUrl;
    }


    function getImageList() {
        var imageList = [];
        if (qSelectorAll(IMAGE).length > 0) {
            for (var i = 0; i < 9; i++) {
                var urlString = qSelectorAll(IMAGE)[i].style.background;
                var imageUrl = getUrlFromString(urlString);
                if (imageUrl == 0) {
                    //console.log("Image url is empty");
                    return imageList;
                }
                imageList[i] = imageUrl;
            }
        }
        return imageList;
    }

    function getImageSelectionList() {
        var answersList = [];
        if (qSelectorAll(IMAGE).length > 0) {
            for (var i = 0; i < 9; i++) {
                if(qSelectorAll(TASK_IMAGE_BORDER)[i] && qSelectorAll(TASK_IMAGE_BORDER)[i].style.opacity == 1) {
                    answersList[i] =1;
                }else{
                    answersList[i] =0;
                }
            }
        }
        return answersList;
    }

    function waitUntilImageSelection() {
        var imageIntervalCount = 0;
        var imageInterval = setInterval(function() {
            imageIntervalCount = imageIntervalCount + 1;
            if (selectedImageCount == 9) {
                clearInterval(imageInterval);
                if (qSelector(SUBMIT_BUTTON)) {
                    qSelector(SUBMIT_BUTTON).click();
                }
                return selectImagesAfterDelay(5);
            } else if (imageIntervalCount > 8) {
                clearInterval(imageInterval);
                return selectImages();
            }
        }, 3000);
    }

    function waitForImagesToAppear() {
        var checkImagesSelectedCount = 0;
        var waitForImagesInterval = setInterval(function() {
            checkImagesSelectedCount = checkImagesSelectedCount + 1;
            if (qSelectorAll(IMAGE) && qSelectorAll(IMAGE).length == 9) {
                clearInterval(waitForImagesInterval);
                return selectImages();
            }else if(qSelector(TASK_IMAGE) && qSelector(TASK_ANSWERS)){
                clearInterval(waitForImagesInterval);
                return selectImages();
            }else if(qSelector(BOUNDING_BOX_EXAMPLE)){
                clearInterval(waitForImagesInterval);
                return selectImages();
            } else if (checkImagesSelectedCount > 60) {
                clearInterval(waitForImagesInterval);
            } else if (qSelector(CHALLENGE_INPUT_FIELD) && qSelector(NO_SELECTION).getAttribute(ARIA_HIDDEN) != true) {
                clearInterval(waitForImagesInterval);
                return imageUsingOCR();
            } else {

            }
        }, 5000);
    }

    //TODO: Convert Image to base64 to avoid multiple calls
    function preProcessImage(base64Image, imageUrl) {

        //Darken and Brighten
        Jimp.read(base64Image).then(function(data) {
            data.color([

                {
                    apply: 'darken',
                    params: [20]
                }

            ]).color([

                {
                    apply: 'brighten',
                    params: [20]
                }

            ])
                .greyscale()
                .getBase64(Jimp.AUTO, function(err, src) {
                var img = document.createElement("img");
                img.setAttribute("src", src);

                worker.recognize(img, LANGUAGE_FOR_OCR).then(function(data) {
                    //Remove Image After recognizing
                    img.removeAttribute("src");
                    //If null change to other methods
                    if (data && data.text && data.text.length > 0) {
                        inputChallenge(postProcessImage(data), imageUrl);
                        return selectImages();
                    } else {
                        preProcessImageMethod2(base64Image, imageUrl);
                    }
                });

            });
        });

    }


    function preProcessImageMethod2(base64Image, trimageUrl) {

        //Multi Contrast darken and brighten
        Jimp.read(base64Image).then(function(data) {
            data.color([

                {
                    apply: 'darken',
                    params: [20]
                }

            ]).contrast(1).color([

                {
                    apply: 'brighten',
                    params: [20]
                }

            ]).contrast(1).greyscale().getBase64(Jimp.AUTO, function(err, src) {
                var img = document.createElement("img");
                img.setAttribute("src", src);

                worker.recognize(img, LANGUAGE_FOR_OCR).then(function(data) {
                    //Remove Image After recognizing
                    img.removeAttribute("src");
                    if (data && data.text && data.text.length > 0) {
                        inputChallenge(postProcessImage(data), imageUrl);
                        return selectImages();
                    } else {
                        preProcessImageMethod3(base64Image, imageUrl);
                    }
                });
            });
        });

    }

    function preProcessImageMethod3(base64Image, imageUrl) {
        //Multi Contrast only brighten
        Jimp.read(base64Image).then(function(data) {
            data.contrast(1).color([{
                apply: 'brighten',
                params: [20]
            }

                                   ])
                .contrast(1)
                .greyscale()
                .getBase64(Jimp.AUTO, function(err, src) {
                var img = document.createElement("img");
                img.setAttribute("src", src);

                worker.recognize(img, LANGUAGE_FOR_OCR).then(function(data) {
                    //Remove Image After recognizing
                    img.removeAttribute("src");
                    if (data && data.text && data.text.length > 0) {
                        inputChallenge(postProcessImage(data), imageUrl);
                        return selectImages();
                    } else {
                        preProcessImageMethod4(base64Image, imageUrl);
                    }
                });
            });
        });
    }

    function preProcessImageMethod4(base64Image, imageUrl) {
        //Resize the image
        Jimp.read(base64Image).then(function(data) {
            data.resize(256, Jimp.AUTO)
                .quality(60) // set JPEG quality
                .greyscale() // set greyscale
                .getBase64(Jimp.AUTO, function(err, src) {
                var img = document.createElement("img");
                img.setAttribute("src", src);

                worker.recognize(img, LANGUAGE_FOR_OCR).then(function(data) {
                    //Remove Image After recognizing
                    img.removeAttribute("src");
                    inputChallenge(postProcessImage(data), imageUrl);
                    return selectImages();
                });
            });
        });

    }

    function postProcessImage(data) {
        var filterValues = ['\n', '{', '}', '[', ']'];
        for (var i = 0; i < filterValues.length; i++) {
            data.text = data.text.replaceAll(filterValues[i], "");
        }
        return data;
    }

    // Using Tesseract to recognize images
    function imageUsingOCR() {
        try {
            //console.log("Image using OCR");
            var urlString = qSelector(IMAGE_FOR_OCR).style.background;
            var imageUrl = getUrlFromString(urlString);
            if (imageUrl == 0) {
                return selectImagesAfterDelay(1);
            }

            Jimp.read(imageUrl).then(function(data) {

                data.getBase64(Jimp.AUTO, function(err, src) {

                    var img = document.createElement("img");
                    img.setAttribute("src", src);
                    var base64Image = img.src;

                    preProcessImage(base64Image, imageUrl);

                })});

        } catch (err) {
            console.log(err.message);
            return selectImagesAfterDelay(1);
        }
    }


    async function convertTextToImage(text) {

        //Convert Text to image
        var canvas = document.createElement("canvas");
        var textLength = text.length;
        canvas.width = 60 * textLength;
        canvas.height = 80;
        var ctx = canvas.getContext('2d');
        ctx.font = "35px Arial";
        ctx.fillText(text, 10, 50);
        var img = document.createElement("img");
        img.src = await canvas.toDataURL();

        return img;
    }


    async function convertImageToText(img) {
        try {
            // Limiting the characters for better accuracy
            await worker.setParameters({
                tessedit_char_whitelist: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ',
            });
            return await new Promise((resolve, reject) => {
                worker.recognize(img, LANGUAGE_FOR_OCR).then(async function(result) {
                    return resolve(result.data.text.trim());
                });
            });

        } catch (err) {
            console.log(err.message);
            return -1;
        }
    }


    function inputChallenge(data, imageUrl) {
        try {
            if ((qSelector(IMAGE_FOR_OCR).style.background).includes(imageUrl)) {
                //console.log(data.text);
                var targetNode = qSelector(CHALLENGE_INPUT_FIELD);
                targetNode.value = data.text.replaceAll("\n", "");
                var challengeInput = qSelector(CHALLENGE_INPUT);
                triggerEvent(challengeInput, 'input');
                // Set a timeout if you want to see the text
                qSelector(SUBMIT_BUTTON).click();
            }

        } catch (err) {
            console.log(err.message);
        }
    }

    async function getTextFromImage(img){
        return await new Promise(function(resolve){
            GM_xmlhttpRequest({
                method: "POST",
                url: "https://" + TESSERACT_SERVER + "/ocr",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                data: "url=" + encodeURIComponent(img),
                timeout: 5000,

                onload: function(response) {
                    return resolve(response.responseText);
                },
                onerror: function(e) {
                    console.log(e);
                    console.log("Exception occured while processing the request");
                    return resolve();
                },
                ontimeout: function() {
                    console.log("Request Timed out");
                   // return getTextFromImage(img)
                     return resolve();
                },
            });
        })


    }

    async function identifyWordOCR() {
        try{
            if (qSelector(PROMPT_TEXT)) {
                var tmp = qSelector(PROMPT_TEXT).innerText;
                var img = await convertTextToImage(tmp);
                 var word = await convertImageToText(img);

              //  var word = await getTextFromImage(img.src);
                if(word == undefined || word == "undefined"){
                    return -1;
                }
                console.log("word is::" + word);
                if(word && word.includes("<html>")){
                    return -1;
                }
                if (word && word.includesOneOf(SENTENCES)) {
                    word = word.replaceAllInArray(SENTENCES, '');
                    word = word.replaceAll(".","");
                    word = word.trim();
                }
                return word;
            }else {
                return -1;
            }
        }catch(e){
            console.log(e);
            return -1;
        }
    }

    var mlPredictAnswers = [];

    async function matchImagesUsingMl(){
        mlPredictAnswers = [];

        GM_xmlhttpRequest({
            method: "POST",
            url: "https://" + IMAGE_CLASSIFIER_SERVER + "/mlPredict",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            data: "input=" + encodeURIComponent(JSON.stringify(request)),
            timeout: 30000,
            onload: async function(response) {

                var arrayResult = [];
                try {
                    arrayResult = JSON.parse(response.responseText);
                } catch(e) {
                    console.log(e);
                    if(!ENABLE_TRAINER){
/*
                        let trainerNode = qSelector(SUBMIT_BUTTON).cloneNode(true);
                        trainerNode.classList.replace('button-submit','train')
                        qSelector(SUBMIT_BUTTON).style.visibility='hidden';
                        qSelector(CHALLENGE_INTERFACE).appendChild(trainerNode);
                        qSelector(TRAIN_BUTTON_DIV).innerText = "Train";
                        qSelector(TRAIN_BUTTON).onclick = function(){
                            if(qSelector(TRAIN_BUTTON_DIV).innerText == "Train"){
                                qSelector(TRAIN_BUTTON_DIV).innerText = "Please Wait";
                                return trainImages();
                            }
                        }
                        //    ENABLE_TRAINER = true;
                        return;

*/
                        /*
                        if (qSelector(SUBMIT_BUTTON)) {
                            qSelector(SUBMIT_BUTTON).click();
                        }
                        return selectImagesAfterDelay(3);

                    }else{
                        qSelector(TRAIN_BUTTON_DIV).innerText = "Train";
                    }
                    */
                    }
                  //  return;
                }

                if(!arrayResult || arrayResult.length !=9){
                    if(!ENABLE_TRAINER){
                        if (qSelector(SUBMIT_BUTTON)) {
                            qSelector(SUBMIT_BUTTON).click();
                        }
                        return selectImagesAfterDelay(3);
                    }else{
                        qSelector(TRAIN_BUTTON_DIV).innerText = "Train";
                    }
                }

                for (let i = 0; i <9; i++) {
                    if (qSelectorAll(IMAGE)[i] && (qSelectorAll(IMAGE)[i].style.background).includes(images[i]) &&
                        qSelectorAll(TASK_IMAGE_BORDER)[i].style.opacity == 0 && arrayResult && arrayResult[i] == "Y") {
                        mlPredictAnswers[i] = 1;
                        qSelectorAll(TASK_IMAGE)[i].click();
                    }else{
                        mlPredictAnswers[i] = 0;
                    }
                }

                if(!ENABLE_TRAINER){
                    await delay(1000);
                    if (qSelector(SUBMIT_BUTTON)) {
                        qSelector(SUBMIT_BUTTON).click();
                    }
                    return selectImagesAfterDelay(3);
                }else{
                    qSelector(TRAIN_BUTTON_DIV).innerText = "Train";
                }
            },
            onerror: function(e) {
                console.log(e);
                console.log("Exception occured while processing the request");
                if(!ENABLE_TRAINER){
                    if (qSelector(SUBMIT_BUTTON)) {
                        qSelector(SUBMIT_BUTTON).click();
                    }
                    return selectImagesAfterDelay(3);
                }else{
                    qSelector(TRAIN_BUTTON_DIV).innerText = "Train";
                }
            },
            ontimeout: function() {
                console.log("Request Timed out");
                if(!ENABLE_TRAINER){
                    if (qSelector(SUBMIT_BUTTON)) {
                        qSelector(SUBMIT_BUTTON).click();
                    }
                    return selectImagesAfterDelay(3);
                }else{
                    qSelector(TRAIN_BUTTON_DIV).innerText = "Train";
                }
            },
        });
    }


    async function trainImages(){

        request.answers = getImageSelectionList();

        if((qSelectorAll(IMAGE)[0].style.background).includes(images[0])){
            //Submit the request to the server to train
            GM_xmlhttpRequest({
                method: "POST",
                url: "https://" + IMAGE_CLASSIFIER_SERVER + "/trainImages",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                data: "input=" + encodeURIComponent(JSON.stringify(request)),
                timeout: 30000,

                onload: function(response) {

                },
                onerror: function(e) {
                    console.log(e);
                    console.log("Exception occured while processing the request");
                },
                ontimeout: function() {
                    console.log("Request Timed out");
                },
            });
        }else{
            console.log("Images changed");
        }

        if( qSelector(SUBMIT_BUTTON)){
            qSelector(SUBMIT_BUTTON).click();
        }
        selectImagesAfterDelay(5);
    }


    var prevWord = "";
    var images = "";
    var request = "";
    var imageList = [];


    async function selectImages() {

        if (ENABLE_DEFAULT_LANGUAGE) {
            for (let i = 0; i < qSelectorAll(LANGUAGE_SELECTOR).length; i++) {
                if (qSelectorAll(LANGUAGE_SELECTOR)[i].innerText == DEFAULT_LANGUAGE) {
                    qSelectorAll(LANGUAGE_SELECTOR)[i].click();
                    await delay(1000);
                }
            }
        }

        if(qSelector(TASK_IMAGE) && qSelector(TASK_ANSWERS)){
            await matchImagesBySimilarity();
            return;
        }

        // Bounding Box Image Captcha
        if(qSelector(BOUNDING_BOX_EXAMPLE)) {
            matchImagesForBoundingBox();
            return;
        }


        if (qSelectorAll(IMAGE) && qSelectorAll(IMAGE).length == 9 && qSelector(NO_SELECTION).getAttribute(ARIA_HIDDEN) != true) {

            selectedImageCount = 0;
            try {

                var word = await identifyWordOCR();
                if( word == -1){
                    return selectImagesAfterDelay(2);
                }

                var urlString = qSelectorAll(CHALLENGE_IMAGE)[0].style.background;
                var imageUrl = getUrlFromString(urlString);

                if(!imageUrl || !imageUrl.includes("http")){
                    console.log("Image url is empty for example image");
                    if (qSelector(SUBMIT_BUTTON)) {
                        qSelector(SUBMIT_BUTTON).click();
                    }
                    return selectImagesAfterDelay(2);
                }

                images = getImageList();
                var taskImages =[];

                if(images.length != 9){
                    console.log("Image length is not equal to 9");
                    if (qSelector(SUBMIT_BUTTON)) {
                        qSelector(SUBMIT_BUTTON).click();
                    }
                    return selectImagesAfterDelay(2);
                }

                var promises = [];

                for (let i = 0; i < 9; i++) {
                    if(!images[i] || !images[i].includes("http")){
                        console.log("Image url is empty for task image");
                        if (qSelector(SUBMIT_BUTTON)) {
                            qSelector(SUBMIT_BUTTON).click();
                        }
                        await delay(2000);
                        return selectImages();
                    }
                    promises.push(getBase64Image(images[i]))
                }

                await Promise.all(promises)
                    .then((results) => {
                    taskImages = results;
                })
                    .catch((e) => {
                    console.log(e);
                });

                request = {
                    description:  word,
                    images: taskImages,
                };

                if(ENABLE_TRAINER){
                    if(!qSelector(TRAIN_BUTTON)){
                        let trainerNode = qSelector(SUBMIT_BUTTON).cloneNode(true);
                        trainerNode.classList.replace('button-submit','train')
                        qSelector(SUBMIT_BUTTON).style.visibility='hidden';
                        qSelector(CHALLENGE_INTERFACE).appendChild(trainerNode);
                        qSelector(TRAIN_BUTTON_DIV).innerText = "Please Wait";
                        qSelector(TRAIN_BUTTON).onclick = function(){
                            if(qSelector(TRAIN_BUTTON_DIV).innerText == "Train"){
                                qSelector(TRAIN_BUTTON_DIV).innerText = "Please Wait";

                                for (let i = 0; i <9; i++) {
                                    if (qSelectorAll(IMAGE)[i] &&
                                        qSelectorAll(TASK_IMAGE_BORDER)[i].style.opacity != mlPredictAnswers[i]) {
                                        return trainImages(request, images);
                                    }
                                }
                                qSelector(SUBMIT_BUTTON).click();
                                selectImagesAfterDelay(3);
                            }
                        }
                    }else{
                        qSelector(TRAIN_BUTTON_DIV).innerText = "Please Wait";
                    }
                }

                return matchImagesUsingMl();

            } catch (err) {
                console.log(err.message);
                return selectImagesAfterDelay(5);
            }

            waitUntilImageSelection();

        } else {
            waitForImagesToAppear();
        }
    }


})();