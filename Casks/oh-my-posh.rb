cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "26.20.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "43fd3bcce94a16f4665ff7b38d7c4b088759ff81a8d7f1dd5a046e2095f7ee2d",
           intel: "25e84f6cc9e91e876cdc119d39356bf20b7d96001872a71d196d4f57c697d4d7"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

