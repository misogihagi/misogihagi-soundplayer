
module Soundplayer = {
  type t

  module PlayButton = {
    @react.component @module("react-soundplayer/components")
    external make: unit => React.element = "PlayButton"
  }
  module Timer = {
    @react.component @module("react-soundplayer/components")
    external make: unit => React.element = "Timer"
  }

  @module("react-soundplayer/components")
  external soundplayer: t = "default"

  @send external success: (t, string) => unit = "success"
}
