Formbuilder.registerField 'gender',

  order: 16

  view: """
    <% for (i in (rf.get(Formbuilder.options.mappings.OPTIONS) || [])) { %>
      <div>
        <label class='fb-option'>
          <input type='radio' <%= rf.get(Formbuilder.options.mappings.OPTIONS)[i].checked && 'checked' %> onclick="javascript: return false;" />
          <%= rf.get(Formbuilder.options.mappings.OPTIONS)[i].label %>
        </label>
      </div>
    <% } %>

  """

  edit: """
    <%= Formbuilder.templates['edit/options']() %>
  """

  addButton: """
    <span class="symbol"><span class="fa fa-circle-o"></span></span> 性别
  """

  defaultAttributes: (attrs) ->
    # @todo
    attrs.field_options.options = [
      label: "男",
      checked: false
    ,
      label: "女",
      checked: false
    ]

    attrs
