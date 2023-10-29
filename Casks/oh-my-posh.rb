cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.17.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "e72558b5b60370a5af654fc555d89b239df2dbe91866a8d64678ad979df1c556",
           intel: "d9c7ca02e645b32098555764e69ff5e5463b41546d072b6502ce65f271a9cc49"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

