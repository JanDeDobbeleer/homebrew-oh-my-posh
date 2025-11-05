cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "27.5.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "bf8284228f581555062793d3a54d17f1b448e8c495fe1177830621decb02fc0c",
           intel: "ec346a51e9d34d08a92ba6b7457c911d2c1427e47c5388102520ce9ac6d88c67"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

