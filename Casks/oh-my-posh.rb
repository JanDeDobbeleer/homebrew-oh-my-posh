cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.23.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "3a6ada6e7fa175e64e3b77277e6095cf0ac2283ff978a991148fd0d2c95470a5",
           intel: "01e93c23237d6d174d3831d137d884782de37e48cacfb4d403e0cdcea9386a85"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

