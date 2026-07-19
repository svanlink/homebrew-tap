cask "cutaway" do
  version "1.0.0"
  sha256 "772ca032fa6f7f4a2a7715ef4e83ac7a9fd6f86b0247e94fda04b8cac7da2921"

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
