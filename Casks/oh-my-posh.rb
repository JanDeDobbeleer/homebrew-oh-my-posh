cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.11.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "7767abd1952c5f7ff5a0403c73091ac14aa3cd1c7dccbc7d87b576bbafaa6e7f",
           intel: "15610dba2e9806be388f87dbaee6092316201bce682dc24053774d0725d30923"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

