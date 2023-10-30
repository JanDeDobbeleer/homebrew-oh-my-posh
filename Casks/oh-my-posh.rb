cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.17.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "e8c9bd0afecb8e4d678390a2aba7c952dc4fce1e1d9c001209c2324db6dfd1ff",
           intel: "16a38d4db1210c2528818141a77445d306a4d40eea89ac3b632c43d5216a4934"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

