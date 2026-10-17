cask "editor" do
  version "0.215.0"
  sha256 "cbdfdbd5a125f35f7bd333be85747981ce76cbda2a6cdd5686e4b3712a1aa9d9"

  url "https://github.com/diffusionstudio/editor/releases/download/v#{version}/Diffusion-Studio-arm64.dmg"
  name "Diffusion Studio"
  desc "Agentic video editor"
  homepage "https://diffusion.studio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Diffusion Studio.app"

  zap trash: [
    "~/Library/Application Support/Diffusion Studio",
    "~/Library/Caches/studio.diffusion.editor",
    "~/Library/Preferences/studio.diffusion.editor.plist",
    "~/Library/Saved Application State/studio.diffusion.editor.savedState",
  ]
end
