cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.12.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "69791c74e0972dd9ac3ce007bd3d333ffbb998c54d43be40eec13c186004a3e9",
           intel: "a4ed5e766faead0a3594acd6394232482b8fd06b58be13df3bbe864d382be9df"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

