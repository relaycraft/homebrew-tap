cask "relaycraft" do
  version "1.0.2"
  sha256 "f23654f0fcacbe1807835473b74898bfd00a14464a6c2c6418d140142c2b6ca7"

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
