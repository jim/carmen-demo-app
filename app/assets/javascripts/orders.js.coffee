# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('select#order_country_code').change (event) ->
    subregion_select = $('select#order_state_code')

    subregion_select.attr('disabled', true)

    country_code = $(this).val()

    url = "/orders/subregion_options?parent_region=#{country_code}"
    subregion_select.load url, (data, success, xhr) ->
      subregion_select.attr('disabled', false)
