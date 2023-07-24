
<!-- README.md is generated from README.Rmd. Please edit that file -->

# RShiney dashboards for Resilient Games

<!-- badges: start -->
<!-- badges: end -->

This package defines four interconnected shiny apps for running web
based Resilient Community Games. The applications are designed to enable
a subset of users (interpreters) to view, edit, and run a community
model while other users (players) view the status of model state and
timely “news” media curated by the interpreters.

## Installation

To install the development version:

``` r
# install.packages("devtools")
devtools::install_github("center4health/resilient-games")
```

## Shiny Apps

We define four applications for viewing or manipulating state of a
common model. Users are identified as either game interpreters, who have
read/write access to game data, or game players, who have read only
access. The intent is for the apps to be run together, operating with a
common model, whose state is contained in a single xml file. Here is a
quick rundown of the apps, more detailed descriptions below.

- `status_app`
  - a single non-interactive view which shows vital details for players
- `newsfeed_app`
  - a single non-interactive view of game updates and related media
- `player_app`
  - a combined view with the content of both *status* and *newsfeed*
- `control_app`
  - an interactive view for game interpreters to control the game state

## Status Application

This passive application simply reflects the current state of the shared
model. It is a single view with cards containing simple statistics.
State is maintained by monitoring an RDS file and reading the contents
on change.

## Newsfeed Application

Another read only application which displays content designed by the
interpreters to enhance the game experience and convey extra
information. Content is again maintained by monitoring changes in an RDS
file.

## Player Application

A combined view containing status and newsfeed for situations where both
are to be displayed together (e.g., players are viewing the game on
single screen, or individual laptop).

## Control Application

This is the complex, interactive application which allows interpreters
to modify and advance game state, preview the results, and publish
changes for consumption by the other applications.

The control view is made up of the following functional tabs: - model -
upload model file - edit model parameters - advance model state - undo
or rollback? - visualize outputs - download: fetch full model file with
current state including - parameter changes - simulation state -
newsfeed editor - add and modify content - contains a panel which shows
preview of newsfeed as seen by players - publish (this writes current
content to the RDS file) - status view - show current version based on
state in model editor - indicate whether the state has been published or
not - button to publish (write to shared RDS file)
