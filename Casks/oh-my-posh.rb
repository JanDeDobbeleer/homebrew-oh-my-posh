cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.7.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "639d8ab7ef4c47d5d221c7146c2d21590718114d1689151d4131920a7205b6c1",
           intel: "0e128cd28f28c8bb855697c2c22355ab793e759a8a968dd5097f11fd491c88c5"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

