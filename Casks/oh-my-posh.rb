cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.2.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "4aa2284af59530f77321d96138b59f527a245a1e480be60aa0440c722b84ec16",
           intel: "9b574744e88f457d0ac8caf02e70b13e824086ffdab0c25b6dadbe3b6b6f3826"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

