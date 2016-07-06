Formbuilder.registerField 'mobile',

  order: 0

  view: """
    <input type='text' class='rf-size-13 %>' />
  """

  edit: ""

  addButton: """
    <span class='symbol'><span class='fa fa-font'></span></span> 手机
  """

  defaultAttributes: (attrs) ->
    attrs.field_options.size = 'small'
    attrs
