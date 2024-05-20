cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "20.0.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "c1b35859c02d1978d0c1d68ee47ebd0e2a067cd9b02f7a03cdf22cf68626f404",
           intel: "bd409f28c27e841ad10366b9cb3576a257b1d51d6fea00529159e1c2ad49d995"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

