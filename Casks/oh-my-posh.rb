cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.5.2"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "a200a3ce20c1946664698f4cf1c77df820462ba428dac58a648526ba96dd0003",
           intel: "eba4f3a32e9370ee633e03c2a92a0d5c1597394a1da87cf83149c503d962fbbc"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

