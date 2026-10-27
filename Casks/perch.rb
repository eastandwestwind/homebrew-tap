cask "perch" do
  version "0.1.7"
  sha256 "7b853d576b317fb08c6a65ff4f66cf395abe30c05c577c50c0a7a0af2c952ece"

  url "https://github.com/eastandwestwind/perchfocus.com/releases/download/v#{version}/Perch-arm64.dmg",
      verified: "github.com/eastandwestwind/perchfocus.com/"
  name "Perch"
  desc "Calm Mac home for your Claude Code sessions"
  homepage "https://perchfocus.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Perch.app"

  zap trash: [
    "~/Library/Application Support/Perch",
    "~/Library/Preferences/com.perchfocus.perch.plist",
    "~/Library/Saved Application State/com.perchfocus.perch.savedState",
  ]
end
