cask "editor" do
  version "0.205.1"
  sha256 "b758ff419f9fc01dddce9fa85e1abc81a6ff672c2b44dfd6d141d4da9dd905bd"

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
