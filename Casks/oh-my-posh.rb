cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "28.5.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "2f3dcaf1f6c381a40381c075a0e5de51887f128e5e2f1f3e9f871cc4b029c09c",
           intel: "fd7ef68c618d22a9551d21fd714a5a769cc2d6b1fe8fa5c5489bedd3d6a8cb39"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

