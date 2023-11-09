cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.25.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "bf4556c946ec8080521ce2cca70088f555356ef12a7f2ba99078e5e033013cc8",
           intel: "d22d0b436903865f41eaa48be103813fcb40ed69cd435a746e2e7a1e3b28b15a"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

