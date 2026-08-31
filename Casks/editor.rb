cask "editor" do
  version "0.202.0"
  sha256 "7e91cecea7400eef6d74c0db06b2638750cd177eb3279398c8b686d2d9ae130e"

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
