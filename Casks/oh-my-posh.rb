cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "26.23.4"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "c695cc1d5340f15d1d459f728b154c60bfbc73dacdaa41f0bc9851168b93e92b",
           intel: "d45f974ae3ef43a7e399d765e9e50700565385307955db08e2e357338a2bf371"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

