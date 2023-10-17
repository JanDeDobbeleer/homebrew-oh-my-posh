cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.14.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "c49b7a2e97dbdd4805cd1b2c547243f97a1dd111a1aaa1ba773b90d2a13a32fe",
           intel: "b00ef55fa9e7f03e54134b00305e38dd000bcac2e62d374c9268f6009076385c"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

