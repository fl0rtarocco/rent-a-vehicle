import flatpickr from 'flatpickr'
import 'flatpickr/dist/themes/material_orange.css'
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin'

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true
    // "plugins": [new rangePlugin({input: "#end_date"})]
  });
}


export { initFlatpickr } ;
