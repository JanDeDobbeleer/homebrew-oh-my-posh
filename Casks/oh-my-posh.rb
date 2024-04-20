cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.24.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "241ceabcd74a4928c73b4cdbc1907b00dff2e09a7baf69dda401d89f0bf1f0dd",
           intel: "b99fe8f0d5f4e94bf8c1df7204d4dbf6488c6e00c9e5d4ceafaf423a417d8bc4"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

