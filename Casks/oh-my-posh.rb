cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.11.2"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "4793b6a983c92851686f0e5c67b30bbed4c1712d911115a7f23267ae4ee8dd03",
           intel: "4e609f0d446d3ac3603f90be3fecbef003b460f801d04e5cbb2b5a0dabb52734"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

