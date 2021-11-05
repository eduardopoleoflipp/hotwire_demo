import { Controller } from "stimulus"
import $ from 'jquery'

export default class extends Controller {
  connect() {
    $('select').dropdown({ placeholder: "value" });
  }

}
