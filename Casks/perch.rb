cask "perch" do
  version "0.1.9"
  sha256 "a2d1af868c46eaef1d05ef1c9acea89a817806b2c4a1a86f8953fbaf2e81a689"

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
