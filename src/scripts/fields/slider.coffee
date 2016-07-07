Formbuilder.registerField 'slider',

  order: 80

  view: """
    <input
    id="<%=rf.cid %>"
    type="text"
    name="<%=rf.cid %>"
    data-provide="slider"
    data-slider-min="<%= rf.get(Formbuilder.options.mappings.MIN) %>"
    data-slider-max="<%= rf.get(Formbuilder.options.mappings.MAX) %>"
    data-slider-step="<%= rf.get(Formbuilder.options.mappings.STEP) %>"
    data-slider-value="<%= rf.get(Formbuilder.options.mappings.DEFAULT) %>"
    data-slider-tooltip="<%= rf.get(Formbuilder.options.mappings.SLIDER_TOOLTIP) %>"
    >
    <% if (rf.get(Formbuilder.options.mappings.SLIDER_IS_VIEWVALUE)) { %>
      <span>当前值: <span><%= rf.get(Formbuilder.options.mappings.DEFAULT) %></span></span>
    <% } %>
  """

  edit: """
    <%= Formbuilder.templates['edit/slider']() %>
  """

  addButton: """
    <span class="symbol"><span class="fa fa-arrows-h"></span></span> 滑杆
  """
