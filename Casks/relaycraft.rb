cask "relaycraft" do
  version "1.0.0-rc.10"
  sha256 "903fda342296befbce0c01e0d9c334da38042565efa780653a248ea4e2dcfa51"

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
