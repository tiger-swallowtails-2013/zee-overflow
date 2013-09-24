describe("showResponseForm", function() {
  var question, showFormLink, responseForm;
  function appendToDom(element, className, parent) {
    parent = parent || document.body;
    var element = document.createElement(element)
    element.classList.add(className);
    parent.appendChild(element);

    return element;
  }

  beforeEach(function() {
    question = appendToDom('div', 'question');
    showFormLink = appendToDom('a', 'show_response_form', question)
    responseForm = appendToDom('div', 'response_form', question)

    showResponseForm(document.querySelectorAll('.question'));
  });

  it('hides the response forms on the page', function() {
    var responseForms = document.querySelectorAll('.response_form');
    for(var responseFormIndex = 0; responseFormIndex < responseForms.length; responseFormIndex++) {
      var form = responseForms[responseFormIndex];
      expect(form.classList.contains('hidden')).toBeTruthy();
    }
  });
  describe('when the show response form link for the question is clicked', function() {
    it('shows the response form', function() {
      showFormLink.dispatchEvent(new Event('click'));

      expect(responseForm.classList.contains('hidden')).toBeFalsy();
    });
  });
});
