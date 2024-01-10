cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.5.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "688f3ac521cd8ea8c9fcfb75edae1770e28a3673dc9ebaf828f0b32797f67a03",
           intel: "ae28d3e357f2d20732eb7ded053f5e8d31af5d6a2d6007a89d55724fae72ff8b"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

