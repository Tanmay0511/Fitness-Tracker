// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery.easy-autocomplete

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "chartkick/chart.js"
import "easy-autocomplete"
require("packs/calculators")
require("jquery")
require("easy-autocomplete")
require("packs/jquery.easy-autocomplete")
import "packs/search"
import "food_fact/search"
import ChartAnnotationsPlugin from 'chartjs-plugin-annotation';
Chart.plugins.register(ChartAnnotationsPlugin);

Rails.start()
Turbolinks.start()
ActiveStorage.start()
