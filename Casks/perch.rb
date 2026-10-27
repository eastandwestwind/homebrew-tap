cask "perch" do
  version "0.1.8"
  sha256 "b9542df2055d62b0f155bbe9cc355b497db5362ada3b173d30afbfa29f8c95aa"

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
