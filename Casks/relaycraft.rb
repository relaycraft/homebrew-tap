cask "relaycraft" do
  version "1.0.0-rc.6"
  sha256 "3aaeb69d1731d815a35d3bb5079c37fe7fbba6fd8139824d222ee55d3db4fb95"

  url "https://github.com/relaycraft/relaycraft/releases/download/v#{version}/RelayCraft_#{version}_universal-apple-darwin.dmg"
  name "RelayCraft"
  desc "AI-Native Web Traffic Debugging Tool"
  homepage "https://relaycraft.dev"

  auto_updates true

  app "RelayCraft.app"

  zap trash: [
    "~/Library/Application Support/relaycraft",
    "~/Library/Caches/com.beta.relaycraft",
    "~/Library/Preferences/com.beta.relaycraft.plist",
    "~/Library/Saved Application State/com.beta.relaycraft.savedState",
    "~/Library/WebKit/com.beta.relaycraft",
  ]
end
