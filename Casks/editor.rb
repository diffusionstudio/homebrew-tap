cask "editor" do
  version "0.205.2"
  sha256 "0e2582782eab2f6406b8813dabd59d2c3fc13dcfd667d2d31c114f710154210a"

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
