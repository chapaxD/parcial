document.addEventListener("DOMContentLoaded", () => {
  App.init();
});

/**
 * Task form
 */
const taskForm = document.querySelector("#taskForm");
taskForm.addEventListener("submit", (e) => {
  //e.preventDefault();
  const title = taskForm["shortDescription"].value;
  const description = taskForm["type"].value;
  App.createTask(title, description);
});
