document.addEventListener("DOMContentLoaded", () => {
  const quiz_answers_list = document.getElementById("quiz_answers_list")

  if (quiz_answers_list !== null) {
    const add_new_answer_button = document.getElementById("add_new_answer_button")

    add_new_answer_button.addEventListener("click", function(){
      let answer = quiz_answers_list.lastElementChild.cloneNode(true)

      quiz_answers_list.appendChild(answer)
    });
  }
});
