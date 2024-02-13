cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.11.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "3d58d3e853e2d4fd1599a2919bee896ea15949f5d1a516bb31454335bff5257b",
           intel: "1e62be28a48e040e6188769a8c3a414943def0c388e05d848335cb2b28c0a7f2"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

