// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)
let slider = tns({
    container: '.my-slider',
    items: 3,
    slideBy: "page",
    mouseDrag: true,
    swipeAngle: false,
    speed: 400,
    controlsContainer: '#controls',
    prevButton: '.previous',
    nextButton: '.next',
    autoplayButton: '.auto'
  });