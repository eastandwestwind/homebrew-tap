cask "perch" do
  version "0.1.12"
  sha256 "ae2f1251c0e6213d94af1c44274829ce3f94ac0e86d4599c6e8aa57a4aecc0cb"

  url "https://github.com/eastandwestwind/perchfocus.com/releases/download/v#{version}/Perch-arm64.dmg"
  name "Perch"
  desc "Calm home for your Claude Code sessions"
  homepage "https://perchfocus.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Perch.app"

  zap trash: [
    "~/Library/Application Support/Perch",
    "~/Library/Preferences/com.perchfocus.perch.plist",
    "~/Library/Saved Application State/com.perchfocus.perch.savedState",
  ]
end
