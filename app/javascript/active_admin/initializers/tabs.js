let onDOMReady = () =>
  $('.page-content-container .tabs').tabs()

$(document).
  ready(onDOMReady).
  on('page:load turbolinks:load', onDOMReady)
