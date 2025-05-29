= Aero Navigator
Version 0.1.0

A Navigation Log, developed to replace multiple pages of notes and provide a succinct template to manage all the information needed as a Cross Country Pilot!

== Getting Started

A simple, bare-bones navigation sheet will look like this.

```typ
#import "@preview/aero-navigator:0.1.0": *

#show: aero-navigator
```

#image("../thumbnail.png", width: 50%)

== Usage

This template is very flexible and can be used in a number of ways.

```typ
#import "@preview/aero-navigator:0.1.0": *

#show: aero-navigator.with(
  aircraft: "both",
  callsign: "24-8569",
  type: "SLG2",
  departure: "YHEC",
  variant: "2",
  lines: false,
  waypoint: false,
  waypoints: "",
  fixes: []
)
```

You can define a waypoints using a json object such as:


```typ
#import "@preview/aero-navigator:0.1.0": *

#show: aero-navigator.with(
    callsign: "24-8569",
  type: "SLG2",
  departure: "YHEC",
  waypoint: true,
  waypoints: "./waypoints.json",
  fixes: []
)
```

```json
[
    {
        "Waypoint": "Wyaralong Lake",
        "Image": "./examples/waypoint/wyaralong.jpg"
    },
    {
        "Waypoint": "Spicers Peak",
        "Image": "./examples/waypoint/before_ywck.jpg"
    },
    {
        "Waypoint": "Warrick",
        "Image": "./examples/waypoint/ywck.jpg"
    },
    {
        "Waypoint": "Auburnvale",
        "Image": "./examples/waypoint/YMFA.jpg"
    },
    {
        "Waypoint": "Greenmount",
        "Image": "./examples/waypoint/ygmt.jpg"
    },
    {
      "Waypoint": "Bromleton",
      "Image": "./examples/waypoint/bml.jpg"
    }
  ]
```

Which will generate a table with the waypoint names and images - helpful for any hard to spot areas, or notes about specific locations. Additionally this could be used for noting airspace boundaries, or other important locations.