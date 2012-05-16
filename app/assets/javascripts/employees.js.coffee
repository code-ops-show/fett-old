# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $( "#employee_resume_attributes_dateofbirth" ).datepicker
    yearRange: "1960:2010"
    changeMonth: true
    changeYear: true

  $( ".datepicker" ).datepicker
    yearRange: "1960:2010"
    changeMonth: true
    changeYear: true

  $("#edit_employee_2").validate
    showErrors: ->
      console.log
      for field in @errorList
        $(field.element).prev().addClass('red')
        $(field.element).after("<small class='error'>#{field.message}</small>") if !$(field.element).next().is('small')

  $('a#add_history').on 'click', (e) ->
    e.preventDefault()
    time = new Date().getTime()
    $('#work-history').append("
      <li class='history'>
        <div class='panel'>
          <label for='employee[resume_attributes][work_histories_attributes][time][company_name]'>Company Name</label>
          <input class= 'required input-text' type='text' name='employee[resume_attributes][work_histories_attributes][time][company_name]' placeholder= 'ex: Apple Inc.'/><br/>
          <label for='employee[resume_attributes][work_histories_attributes][time][company_name]'>Start date</label>
          <input class= 'required input-text datepicker' type='text' name='employee[resume_attributes][work_histories_attributes][time][start_date]' placeholder= 'ex: 1977-01-03' /><br/>
          <label for='employee[resume_attributes][work_histories_attributes][time][company_name]'>End date</label>
          <input class= 'input-text datepicker' type='text' name='employee[resume_attributes][work_histories_attributes][time][end_date]' placeholder= 'ex: 2011-10-05' /><br/>
          <label for='employee[resume_attributes][work_histories_attributes][time][company_name]'>Job description</label>
          <textarea class= 'required input-text' id= 'history-text' type='text' name='employee[resume_attributes][work_histories_attributes][time][job_description]' placeholder= 'ex: ICEO' /><br/>
          <a href='#' class='remove_new'>Remove</a>
        </div>
      </li>
      ")
    $( ".datepicker" ).datepicker
      yearRange: "1960:2010"
      changeMonth: true
      changeYear: true

    $('.input-text').validate
      showErrors: ->
        for field in @errorList
          $(field.element).prev().addClass('red')
          $(field.element).after("<small class='error'>#{field.message}</small>") if $(field.element).next().is('small')

  $('ul#work-history').on 'click', 'a.remove_new', (e) ->
    e.preventDefault()
    $(this).parent().remove()

  $('ul#work-history').on 'click', 'a.remove', (e) ->
    e.preventDefault()
    $(this).parent().hide()
    $(this).parent().find('input.destroy').val('true')

