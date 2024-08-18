cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "23.6.4"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "369c0c07de3ccc8415da268109bcdd8dd7ffc6aa61c9dbd1608f5eb82d8e291a",
           intel: "3b6b081ec0e66b1c351d29df7a505f7b3a73b09e11a86fde9f91197efac15128"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

