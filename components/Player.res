@module("react-soundplayer/addons")
external withSoundCloudAudio:'a = "withSoundCloudAudio"

let clientId = "YOUR CLIENT ID"
let resolveUrl = "https://soundcloud.com/ksmtk/chronemics"
  
let Player = withSoundCloudAudio(props => {
    let { track, currentTime } = props;
 
    return (
      <div className="custom-player">
        <PlayButton
          className="custom-player-btn"
          onPlayClick={() => {
            console.log("play button clicked!");
          }}
        />
        <h2 className="custom-player-title">
          {track ? track.title : "Loading..."}
        </h2>
        <Timer 
          className="custom-player-timer"
          duration={track ? track.duration / 1000 : 0} 
          currentTime={currentTime} 
           />
      </div>
    );
});
 
