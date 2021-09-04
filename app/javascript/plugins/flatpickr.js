import flatpickr from "flatpickr";


const activate_datepicker = () => {
  datepicker_element = document.querySelector("#datepicker")
  if (datepicker_element) {
    flatpickr(datepicker_element, {});
  }
}

export {  activate_datepicker  };
