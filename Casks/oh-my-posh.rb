cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.15.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "519c4a1e8baf15cf017d89e46a8467f4ba0747563172a5a3e604d9810284652e",
           intel: "73875fff0bb52b3d62dfec439c88fd8660d42ed6adaeee45c066b68b6b38ad2d"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

