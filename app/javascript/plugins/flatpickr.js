import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
// import "flatpickr/dist/themes/airbnb.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  mode: "range",
  minDate: "today",
  dateFormat: "d-m-Y",
  // inline: true
})
    // ]
// }
