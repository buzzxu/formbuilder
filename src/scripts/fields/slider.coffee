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
    data-slider-tooltip="hide"
    >
  """

  edit: """
    <%= Formbuilder.templates['edit/slider']() %>
  """

  addButton: """
    <span class="symbol xu"><span class="fa fa-usd"></span></span> 滑杆
  """
