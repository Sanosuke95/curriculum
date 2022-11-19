import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Voici un premier test pour cet partie")
  }

  greet() {
    console.log("Hello, Stimulus!", this.element)
  }
}
