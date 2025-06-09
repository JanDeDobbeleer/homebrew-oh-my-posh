cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "26.4.2"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "4f897e1adaeaeb1109f60c796cf8d1bfd4c370f7d4257dc3d42aaef38562efbe",
           intel: "c453d58bb0bd2cb2d3f19e54f1150d9273cdf2c8a783ab641771361badab33eb"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

