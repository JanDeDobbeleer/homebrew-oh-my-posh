cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.3.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "1c146d902dfb042557d1535167cc7495ef15fc3d10635401f66d60583b6b76a5",
           intel: "491ff44d50ba5772c52da6c0b015979fb56324638c74596b28601219cc6c7aef"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

