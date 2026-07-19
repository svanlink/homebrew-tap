cask "cutaway" do
  version "1.1.0"
  sha256 "4988a85953a1b4dee97fe6cf664dbfe41cb8f56330eeb5eba270dfe453eed82c"

  url "https://github.com/svanlink/cutaway/releases/download/v#{version}/Cutaway-#{version}.zip"
  name "Cutaway"
  desc "Automatic time tracking for DaVinci Resolve editors"
  homepage "https://github.com/svanlink/cutaway"


  app "Cutaway.app"

  zap trash: [
    "~/Library/Preferences/com.vaneickelen.cutaway.plist",
    "~/Library/Application Support/Cutaway",
  ]

  caveats <<~EOS
    Cutaway is signed ad-hoc (no paid Apple Developer ID). On first
    launch macOS may warn about an unidentified developer. Either:
      1. Right-click Cutaway.app in /Applications and choose Open
         (needed once — macOS remembers), or
      2. Install without the quarantine flag:
         brew install --cask --no-quarantine svanlink/tap/cutaway
  EOS
end
