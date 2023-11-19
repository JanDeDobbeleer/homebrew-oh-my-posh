cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.26.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "6355e1011303149ae7164d6e311b91323051f26c1e26672e98bd09a35e94a0a9",
           intel: "dfc9c76641637c2c5048f681c5bb0aa6a0ea09247d31768d742a6ee21dbe52b2"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

