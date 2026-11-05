cask "blankly" do
  version "1.1"
  sha256 "5e72bde57b936cd76ba35b0e54c4bdab1c58ccb2f2ac95fba0e5cee205cb9072"

  url "https://github.com/Guf-Hub/blankly/releases/download/v#{version}/Blankly-#{version}.dmg"
  name "Blankly"
  desc "Create a new file or folder right where you are"
  homepage "https://github.com/Guf-Hub/blankly"

  depends_on macos: :ventura

  app "Blankly.app"

  zap trash: [
    "~/Library/Application Support/Blankly",
    "~/Library/Preferences/app.blankly.plist",
  ]

  caveats <<~EOS
    Blankly is not notarized by Apple. On first launch macOS blocks it:
      System Settings → Privacy & Security → Open Anyway
  EOS
end
