// You can delete this Stimulus controller when you delete the Test controller under app/controllers.
// This is a demo which loads by default from the app generator.

import { Controller } from "stimulus"
import $ from 'jquery'

export default class extends Controller {
  static targets = [
    "deleteLink"
  ]

  static values = { taskId: String }

  onShowDeleteConfirmation() {
    const deleteModalLink = $("#delete-link")
    deleteModalLink.attr("href", `/tasks/${this.taskIdValue}`)

    const modal = $("#delete-modal")
    modal.modal({ detachable: false });
    modal.modal("show");
  }
}
