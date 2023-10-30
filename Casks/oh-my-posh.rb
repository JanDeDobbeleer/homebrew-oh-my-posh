cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.18.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "14c4cb63c8c5ff5a15bdc7561328d5882fa8bb820bc5940756bb9423920d65f3",
           intel: "331ca205d6ed7f541ee9a25467442c47c0dc76e3fde0ec2985a55f1c8b388bc0"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

