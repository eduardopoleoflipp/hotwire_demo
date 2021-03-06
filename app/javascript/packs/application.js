/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import Rails from '@rails/ujs'
import $ from 'jquery'
import "@hotwired/turbo-rails"

const application = Application.start()
const context = require.context("../controllers", true, /\.js$/)
application.load(definitionsFromContext(context))

window.jQuery = window.$ = $; // for console access
require('fomantic-ui-css/semantic.css');
require('fomantic-ui-css/semantic.js');

Rails.start();

console.log("Welcome to Webpacker!")
