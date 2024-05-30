cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "21.0.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "ba2ec905c5ad14011d9e10f616fa90c8f32d3db38e12031b13fda68dd5b62848",
           intel: "081af28c330722d1ac268948cbed404a2ca1e19a287c8cc60b49c0f2ced9305c"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

