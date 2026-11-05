cask "blankly" do
  version "1.3"
  sha256 "1f6b345469c11ae0dec4297c8ff7876c332d6f05f299c1451c8a0216e6c03cdc"

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
