cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "21.9.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "93a92f6b838a94d841708bcf84a30d4fc127f2447dea84560d7d78c81beaaa3c",
           intel: "4b94dc59e77b0a2f64c91cf7ff8a0443fd5eaab33bffbc18f2be86a9f6a0c5e3"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

