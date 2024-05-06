cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.27.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "e33f62ab7561e4aa340a8eb2f9431739567f705c8c03fa6eb90e09cf75b76bfe",
           intel: "a83e73f0b0143efb7af86cc91b4cef02c907efe028289b395c8b7ee66682d95d"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

