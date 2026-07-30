cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.0.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "c256f2261e123f1710fd11cf8cf92d397f48d9140775f0e12704e04c4e22e30a",
               intel: "06926ce66d51d2cc5e632d2dc2071922d79ef6b857753589bf588ea1fe4ef1a3"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

