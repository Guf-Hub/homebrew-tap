cask "blankly" do
  version "1.4"
  sha256 "2f76595159dda7dbe5c4a108035f3cd67900f4ea13da4cc3b1dbe62348e69f6d"

  url "https://github.com/Guf-Hub/blankly/releases/download/v#{version}/Blankly-#{version}.dmg"
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
