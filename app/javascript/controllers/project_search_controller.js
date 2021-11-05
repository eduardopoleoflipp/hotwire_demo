import { Controller } from "stimulus"
import { Turbo } from "@hotwired/turbo-rails"

export default class extends Controller {
  static values = {
    fetchUrl: String,
    visitUrl: String
  }

  connect() {
    $('.ui.search').search({
      apiSettings: {
        url: this.fetchUrlValue
      },
      onSelect: (result, response) => {
        const url = `${this.visitUrlValue}/${result.id}`
        $("#form-project-id-input").value = result.id
        Turbo.visit(url)
      },
      fields: {
        results: '',
        title: 'name'
      },
      searchDelay: 250
    });
  }
}
