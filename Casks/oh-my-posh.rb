cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.9.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "8bb413587d949e811ef7fd977db9af2bae4f87f959968491f5669b602696da09",
               intel: "1a1d3cb0ad6ad0ed0e6de98da407df2ab5f64d5ff1f2f729ca294edad39d7d54"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

