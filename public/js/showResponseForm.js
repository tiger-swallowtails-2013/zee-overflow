function showResponseForm(questionElements) {
  for(var qi = 0; qi < questionElements.length; qi++) {
    var question = questionElements[qi];
    var responseForm = questionElements[qi].querySelector('.response_form')
    responseForm.classList.add('hidden');
    question.querySelector('.show_response_form').addEventListener('click', function(e) {
      responseForm.classList.remove('hidden');
    });
  }
}
