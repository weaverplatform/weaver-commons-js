[![Build Status](https://img.shields.io/travis/weaverplatform/weaver-commons-js/cobj0.svg)](http://travis-ci.org/weaverplatform/weaver-commons-js)[![codecov](https://codecov.io/gh/weaverplatform/weaver-commons-js/branch/cobj0/graph/badge.svg)](https://codecov.io/gh/weaverplatform/weaver-commons-js)


# weaver-commons-js

## Elementary components.

Those are the basic elements that is possible to add at graphDatabase. At this moment the graphDatabases supported are [Virtuoso](http://virtuoso.openlinksw.com/) **via** [weaver-server-virtuoso](https://github.com/weaverplatform/weaver-server-virtuoso) **and** [Neo4j](https://neo4j.com/) **via** [weaver-server-neo4j](https://github.com/weaverplatform/weaver-server-neo4j)

The principal aim of weaver-commons-js is to make easy interact with this objects at the moment of transaction and querys on our weaver javascript code. It let you do things like create a $INDIVIDUAL and test if it is valid:

```coffeescript
WeaverCommons = require('weaver-commons-js')
Individual = WeaverCommons.Individual

Individual r2d2 = new Individual(individual_payload)

if r2d2.isValid()
	### do stuff like a transaction
```

At the moment we count with 3:

* :large_blue_circle:  $INDIVIDUAL
* :large_blue_diamond:  $INDIVIDUAL_PROPERTY
* :black_square_button:  $VALUE_PROPERTY




### :heavy_dollar_sign:INDIVIDUAL

An $INDIVIDUAL object in json looks like this:

```javascript
"payload": {
      "type": "$INDIVIDUAL",
      "id": "cipy1yeeh00023k6kboj6rzrh",
      "attributes": {
        "name": "Unnamed",
        "type": "$INDIVIDUAL"
      },
      "relations": {}
 	}
```


### :heavy_dollar_sign:INDIVIDUAL_PROPERTY

An $INDIVIDUAL_PROPERTY object in json looks like this:

```javascript
"payload": {
      "type": "$INDIVIDUAL_PROPERTY",
      "id": "cipy1zfnm000i3k6klvlzjfql",
      "attributes": {
        "predicate": "eats",
        "type": "$INDIVIDUAL_PROPERTY"
      },
      "relations": {
        "subject": "cipy1yeeh00023k6kboj6rzrh",
        "object": "cipy1yt7l00073k6k3fusc8cg"
      }
    }
 ```

### :heavy_dollar_sign:VALUE_PROPERTY

An $VALUE_PROPERTY object in json looks like this:

```javascript
"payload": {
      "type": "$VALUE_PROPERTY",
      "id": "cipy1zs5x000l3k6khveg0qqh",
      "attributes": {
        "predicate": "replaces",
        "object": "eats",
        "type": "$VALUE_PROPERTY"
      },
      "relations": {
        "subject": "cipy1yeeh00023k6kboj6rzrh"
      }
  ````
