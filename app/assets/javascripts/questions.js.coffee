$ ->
  $('#console .row p a').on('ajax:success', (event, data, status)->
    chart.draw(data)
  )