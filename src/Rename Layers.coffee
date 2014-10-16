`#target "illustrator-18"`

class LayerRenamer
  constructor: () ->
    @replacements = [
        (prompt "What would you like to replace?", "Eg: source"),
        (prompt "What would you like to replace it with?", "Eg: replacement")
    ]

    @renameLayers app.activeDocument.layers

  renameLayers: (layers) ->
    for layer in layers
      name = layer.name
      layer.name = name.replace @replacements[0], @replacements[1]

layerRenamer = new LayerRenamer()