class LayerRenamer
  constructor: () ->

    if app.activeDocument.selection.length > 0

      @replacements = [
          (prompt "What would you like to replace?", "Eg: source"),
          (prompt "What would you like to replace it with?", "Eg: replacement")
      ]

      @renameLayers app.activeDocument.selection

    else
      alert "Select the layers you would like to be renamed."

  renameLayers: (layers) ->
    for layer in layers
      layer      = layer.parent
      name       = layer.name
      layer.name = name.replace @replacements[0], @replacements[1]

layerRenamer = new LayerRenamer()