cask "cutaway" do
  version "1.3.1"
  sha256 "018997f4f26575bf7e53e12ec28cde06250ca97601e8302288f22f2d5cd96170"

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
