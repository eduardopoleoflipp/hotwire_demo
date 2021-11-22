// You can delete this Stimulus controller when you delete the Test controller under app/controllers.
// This is a demo which loads by default from the app generator.

// app/javascript/controller/task_controller.js
import { Controller } from "stimulus"
import $ from 'jquery'

export default class extends Controller {
  static targets = [
    "deleteLink"
  ]

  static values = { taskId: String }

  onShowDeleteConfirmation() {
    // Reference the targets as
    this.deleteLinkTarget

    // Reference the value as 
    this.taskIdValue

    // Does some work related to delete confirmation:
    // e.g show a confirmation modal
  }
}
