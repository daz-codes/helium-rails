import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["slide", "modal"];

  connect() {
    this.index = 0;
  }

  open(event) {
    event.preventDefault();
    this.index = parseInt(event.params.index || 0);
    this.showCurrentSlide();
    this.modalTarget.classList.remove("hidden");
  }

  close() {
    this.modalTarget.classList.add("hidden");
  }

  previous() {
    this.index =
      (this.index - 1 + this.slideTargets.length) % this.slideTargets.length;
    this.showCurrentSlide();
  }

  next() {
    this.index = (this.index + 1) % this.slideTargets.length;
    this.showCurrentSlide();
  }

  openIndex(event) {
    event.params.index = event.target.dataset.index;
    this.showCurrentSlide();
    this.open(event);
  }

  showCurrentSlide() {
    this.slideTargets.forEach((el, i) => {
      el.classList.toggle("hidden", i !== this.index);
    });
  }
}
