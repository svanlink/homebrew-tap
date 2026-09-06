cask "cutaway" do
  version "1.3.0"
  sha256 "20be5d4df5ac062deddf5a6434a29cee327844420db74f29c7f9ebf631150d6e"

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
