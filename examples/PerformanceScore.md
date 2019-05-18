---
elm:
  dependencies:
    gicentre/elm-vegalite: latest
---

```elm {l=hidden}
import VegaLite exposing (..)
```

Performance score for pages:

```elm {v}
barChart : Spec
barChart =
    let
        urls =
            dataFromUrl "output/final.json" []

        enc =
            encoding
                << position X [ pName "data.categories.performance.score", pMType Quantitative ]
                << position Y [ pName "url", pMType Ordinal ]
    in
    toVegaLite [ urls, circle [], enc [] ]
```
