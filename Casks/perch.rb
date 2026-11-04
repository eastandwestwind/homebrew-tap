cask "perch" do
  version "0.1.11"
  sha256 "74acfa8b987df5783e800937e3d7e915d0b1086d2f7388b83229bbb66546db43"

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
