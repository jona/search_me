class app.SearchFilter
  @elements_selector: null
  constructor: (elements_selector) ->      
    $.expr[":"].contains = $.expr.createPseudo((arg) ->
      (elem) ->
        $(elem).text().toUpperCase().indexOf(arg.toUpperCase()) >= 0
    )
    self = @
    self.elements_selector = elements_selector || throw new Error "Please specify an element selector"

    $("#search-bar").keyup (e) ->
      value = $(this).val()
      $("#no-match-found").hide()
      if value == ""
        $("#{self.elements_selector}").show()
      else
        $("#{self.elements_selector}").hide()
        unless $("#{self.elements_selector}:contains(#{value})").html()?
          $("#no-match-found").show()
        else
          $("#{self.elements_selector}:contains(#{value})").closest("#{self.elements_selector}").show()

  SearchFilter