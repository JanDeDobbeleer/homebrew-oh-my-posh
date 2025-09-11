cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "26.22.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "b0f8502569fdb574c2ce1f0bb72bc1768874dd04bfc79021610c4d6d9b51960d",
           intel: "013c6d3bb0955ce8a9b6ddb2d594ceb695db4ead7fcfefed23038b9d4ee028ac"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

