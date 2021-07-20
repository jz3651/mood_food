var terms = ["hangry.", "lazy.", "classy.", "healthy.", "unpredictable.", "romantic."];

function rotateTerm() {
  var ct = $("#rotate").data("term") || 0;
  $("#rotate").data("term", ct == terms.length -1 ? 0 : ct + 1).text(terms[ct]).fadeIn()
              .delay(2000).fadeOut(150, rotateTerm);
}
$(rotateTerm);

export { rotateTerm };