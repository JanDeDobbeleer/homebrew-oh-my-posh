cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.16.2"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "48560f44da1e4165e64e82c2f8d0b4967d4096559a2363f2b3d5e35294ac29e1",
           intel: "093aee29c14e145972655da09201aea20ea747b046c2a4f0f10d5cb0e52b6359"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

