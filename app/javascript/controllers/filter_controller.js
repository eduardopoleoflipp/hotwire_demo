// You can delete this Stimulus controller when you delete the Test controller under app/controllers.
// This is a demo which loads by default from the app generator.

import { Controller } from "stimulus"
import $ from 'jquery'
import { Turbo } from "@hotwired/turbo-rails"

export default class extends Controller {
  static targets = [
    "filterInput"
  ]

  onFilterResults() {
    const searchTerm = this.filterInputTarget.value
    const url = `/tasks/filtered?q=${searchTerm}`

    /*
      The issue here is two fold:
      - We need to make an api call as that is not part
      of a link or form request so we can't use Turbo Frames
      - We can't really use Turbo drive (Turbo visit) cuz it makes for an awful UX.
      Even if we do not make full refreshes we re paint the UX so the input looses focus
      and the the whole experience chokes.
    */
    fetch(url, {
      headers: {
        Accept: "text/vnd.turbo-stream.html",
      },
    })
    .then(r => r.text())
    .then(html => Turbo.renderStreamMessage(html))
  }
}
