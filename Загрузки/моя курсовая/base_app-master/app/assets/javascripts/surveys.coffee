ajax_post_fill_result = (e) ->
  selectedResult = $(this).val()
  $.ajax
    url: '/fill_result_form',
    type: 'POST',
    dataType: 'script',
    data: {
      result_id: $(this).val()
    },
    error: (jqXHR, textStatus, errorThrown) ->
      console.log("AJAX Error: #{textStatus}")
    success: (data, textStatus, jqXHR) ->
      console.log("Ajax завершен!")

$(document).on 'page:load', ->
  $('#select_existing_result').on 'change', ajax_post_fill_result



ajax_post_fill_ward = (e) ->
  selectedWard = $(this).val()
  $.ajax
    url: '/fill_ward_form',
    type: 'POST',
    dataType: 'script',
    data: {
      ward_id: $(this).val()
    },
    error: (jqXHR, textStatus, errorThrown) ->
      console.log("AJAX Error: #{textStatus}")
    success: (data, textStatus, jqXHR) ->
      console.log("Ajax завершен!")

$(document).on 'page:load', ->
  $('#select_existing_ward').on 'change', ajax_post_fill_ward



ajax_post_fill_card = (e) ->
  selectedCard = $(this).val()
  $.ajax
    url: '/fill_card_form',
    type: 'POST',
    dataType: 'script',
    data: {
      card_id: $(this).val()
    },
    error: (jqXHR, textStatus, errorThrown) ->
      console.log("AJAX Error: #{textStatus}")
    success: (data, textStatus, jqXHR) ->
      console.log("Ajax завершен!")

$(document).on 'page:load', ->
  $('#select_existing_card').on 'change', ajax_post_fill_card
