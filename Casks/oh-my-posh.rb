cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.23.2"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "9079b585d7702b51f011e9feabd66022398344785e6481f70971a9c82da057d9",
           intel: "77df82b7be00bc28d5e2ae24686b4a33fb841eef0085eeb91e9e0d266df67001"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

