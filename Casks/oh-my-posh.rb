cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "21.23.6"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "d83f2160fdf4a10b58ce13bfcdf1eb72a0cee31fa62478133d1e3762b359d7b8",
           intel: "6ee0c86b0e21807fd6584736fbfcd61b155fc136a6176e463d40ca5dec9fef4c"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

