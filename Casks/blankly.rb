cask "blankly" do
  version "1.0"
  sha256 "2738940f42544ab7d38f4bb2b10be7c047691ee1f5313a10087b1fee9a18c7c5"

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
