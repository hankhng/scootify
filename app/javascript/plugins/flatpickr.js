import flatpickr from "flatpickr"
// import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/airbnb.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#range_start", {
  altInput: true,
  minDate: "today",
  plugins: [new rangePlugin({ input: "#range_end"})],
  onChange: function(selectedDates, dateStr, instance) {
    if (selectedDates.length == 2) {
      let startDate = document.querySelector('#range_start').value.split(" to ")[0];
      let endDate = document.querySelector("#range_start").value.split(" to ")[1];

      let daysInMilliseconds = new Date(endDate) - new Date(startDate)

      let days = daysInMilliseconds / 86400000

      let pricePerDay = document.querySelector('.list-group-item').innerText.split("$")[1]

      let totalPrice = days * pricePerDay

      let span = document.querySelector('#totalPrice');
      let inputPrice = document.getElementById('booking_booking_price')
      inputPrice.value = totalPrice
      span.innerText = ` $ ${totalPrice} for ${days} days`
    }
  }
});

