import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  play() {
    this.element.children[0].play();
  }

  stop() {
    this.element.children[0].pause();
  }
}