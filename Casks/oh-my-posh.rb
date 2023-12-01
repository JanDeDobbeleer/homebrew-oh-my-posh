cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.28.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "f28b77cbc25cbfd55a311b926e871fdc359a191539dbe936e8007d73d29f6c1d",
           intel: "dc4e03e015885eeeca24365ef380c92ba204dbaa24485851fc13da125c2d2042"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

