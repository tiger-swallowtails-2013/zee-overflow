function DeafGramma() {
}

DeafGramma.prototype.tell = function(phrase) {
  if (phrase.toUpperCase() == phrase) {
    this.response = "NOT SINCE 1984";
  } else {
    this.response = "SPEAK UP SONNY!";
  }
}

