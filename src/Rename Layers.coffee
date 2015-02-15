`#target "illustrator-18"`

class LayerRenamer
  constructor: () ->
    @replacements = [
        (prompt "What would you like to replace?", "Eg: source"),
        (prompt "What would you like to replace it with?", "Eg: replacement")
    ]

    @renameLayers app.activeDocument.selection

  renameLayers: (layers) ->
    for layer in layers
      layer      = layer.parent
      name       = layer.name
      layer.name = name.replace @replacements[0], @replacements[1]

layerRenamer = new LayerRenamer()