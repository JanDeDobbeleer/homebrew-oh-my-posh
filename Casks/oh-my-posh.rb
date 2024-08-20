cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "23.6.7"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "48c4fcfd9081ed086154ee303d181d3b7b0f2f359aebde5997d9c0d4f1b29ed6",
           intel: "9f7961c7eb8e6a20a85b7c98d6b438e0964b74f4dc504992baca26d583ff8fad"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

