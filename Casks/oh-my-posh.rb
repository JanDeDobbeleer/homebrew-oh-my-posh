cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.21.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "dd293fd726eda046dbb1fe95cbb4fbd9d56d272868a5d94ef144fa28a6cef121",
           intel: "622edb1ce3eb9cac0c2398d135ffe50bb6db4d296ce10060276bc6dbc93e999c"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

