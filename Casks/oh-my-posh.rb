cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "26.1.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "b1ae6d5f0e42cf66d5cb1550c4edf2fba5583cd53c8dcd328194045bb4f9868d",
           intel: "03446bafa3e3d0c0a8ce834919e164afda4d9849bc256dc70efb2d4a2ea8e36c"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

