cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.0.6"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "594116a9e9fa610f05692eb77e51bf6d9b381c30d93a9b4f4c7c4ee098e54f39",
           intel: "2ff2ccf5801e35f0c2de3a3a6f8c1bdab1dcdc03f4aa438f9a0fb2bda6093064"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

