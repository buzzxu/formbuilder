Formbuilder.registerField 'question',

  order: 81

  view: """

    <button>跳过</button><br><br>
    <input
    id="<%=rf.cid %>"
    type="text"
    name="<%=rf.cid %>"
    data-provide="slider"
    >
    <% if (rf.get(Formbuilder.options.mappings.SLIDER_IS_VIEWVALUE)) { %>
      <span>当前值: <span><%= rf.get(Formbuilder.options.mappings.DEFAULT) %></span></span>
    <% } %>
    <br><br>
    <table>
      <% for (i in (rf.get(Formbuilder.options.mappings.TABLE) || [])) { %>
        <tr>
          <td><%= rf.get(Formbuilder.options.mappings.TABLE)[i].score %></td>
          <td><%= rf.get(Formbuilder.options.mappings.TABLE)[i].description %></td>
        </tr>
      <% } %>
    </table>
    <br>

    <textarea class='rf-size-<%= rf.get(Formbuilder.options.mappings.SIZE) %>'></textarea>
  """

  edit: """
    <%= Formbuilder.templates['edit/question']() %>
    <%= Formbuilder.templates['edit/size']() %>
  """

  addButton: """
    <span class="symbol"><span class="fa fa-question"></span></span> 问题
  """
  defaultAttributes: (attrs) ->
    attrs.field_options.size = 'small'
    attrs
