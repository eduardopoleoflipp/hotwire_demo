// You can delete this Stimulus controller when you delete the Test controller under app/controllers.
// This is a demo which loads by default from the app generator.

import { Controller } from "stimulus"
import $ from 'jquery'

export default class extends Controller {
  static targets = ["output", "dropdown"];

  toggle() {
    this.outputTarget.innerHTML = $(this.dropdownTarget).val() + " Selected!"
  }

}
