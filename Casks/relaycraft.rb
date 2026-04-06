cask "relaycraft" do
  version "1.0.0"
  sha256 "61bd13c45ea1a365153e7b9b5114980ac873f481fbe570de353c457f852f8966"

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
