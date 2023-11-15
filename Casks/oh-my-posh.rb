cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.25.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "7dd71b3b48062f4bb9b6e908dc1d9ca1a5a0616cd13a57ac224e47c19f2cbc18",
           intel: "4d01fec108373164630c7cf9ab96ef0bc8b4aa1aa788f60ccb4a3c67f693de54"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

