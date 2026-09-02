cask "editor" do
  version "0.204.1"
  sha256 "21778e5ff867bc934aad4ef88121d6a19798922699dc458c0f5da4579ad4c1bc"

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
