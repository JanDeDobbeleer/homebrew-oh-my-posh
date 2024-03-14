cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.17.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "3a32340fb79915fbf4bc637ad6476113fe6b7a66f368b3f35ec3bcc0b0a8f678",
           intel: "fc9ddbb10a8029b1282b4ee6d8aa988656d8390a3d2ef26d79d0691a0c1b4b6c"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

