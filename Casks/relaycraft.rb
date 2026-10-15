cask "relaycraft" do
  version "1.6.2"
  sha256 "a2f14ad60c8f8a6412e44297e55fd0994b7e98c448020686d16690b41ebfac15"

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
