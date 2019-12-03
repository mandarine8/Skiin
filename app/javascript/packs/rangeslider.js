
const inputRange = document.querySelector('#ski-level-input')
const inputCar = document.querySelector('#input-for-car')
const rangeToUpdate = document.querySelector('#user_level')
const carToUpdate = document.querySelector('#user_car')
const inputToUpdate = inputCar.querySelector('input')

if (inputToUpdate.checked) {
  inputToUpdate.classList.add("checked-input")
}



inputRange.addEventListener("change", (e) => {
  console.log(e.target.value)
  let level
  switch (e.target.value) {
    case "1":
    console.log("beginner")
      level = "beginner"
      break;
    case "2":
    console.log("intermediate")
    level = "intermediate"
    break;
    case "3":
    console.log("expert")
    level = "expert"
    break;
    default:
      console.log("sorry we need a value");
  }
  rangeToUpdate.value = level
})


inputCar.addEventListener("click", e => {
  console.log(inputToUpdate.checked)
  carToUpdate.value = inputToUpdate.checked
  inputToUpdate.classList.toggle("checked-input")
})

