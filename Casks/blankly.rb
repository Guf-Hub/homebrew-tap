cask "blankly" do
  version "1.5.1"
  sha256 "2a5bdfe1e8feeb55259de44d440938755b3d1abb189ebffbd5c1c66a5eb910b1"

  url "https://github.com/Guf-Hub/blankly/releases/download/v#{version}/Blankly.dmg"
  name "Blankly"
  desc "Create a new file or folder right where you are"
  homepage "https://github.com/Guf-Hub/blankly"

  auto_updates true
  depends_on macos: :ventura

  app "Blankly.app"

  zap trash: [
    "~/Library/Application Support/Blankly",
    "~/Library/Preferences/app.blankly.plist",
  ]

  caveats <<~EOS
    Blankly is not notarized by Apple, so on first launch macOS says
    "Blankly.app" Not Opened. Click Done (not Move to Trash), then:
      System Settings → Privacy & Security → Open Anyway → Open Anyway
    Or in Terminal:
      xattr -dr com.apple.quarantine /Applications/Blankly.app
  EOS
end
