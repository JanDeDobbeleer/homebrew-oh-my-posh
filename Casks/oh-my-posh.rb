cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.11.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "49e36d5cc6b5a4dca7a16f044d2e22881e16d70c2f3989d97c259ab169c858e0",
           intel: "1fb57d49b0de9bf45a5e5624939290f3139ae77395cec56c416bb6a685f2785b"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

