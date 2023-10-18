cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.15.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "7963fe061e60458f1d025800f8de71413b00b04646d667d74b3b3e860dedeebd",
           intel: "f1e12f4ea4e53bcab449ef9e00e124ebee718a1bc4e92f127250ffdc877844e1"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

