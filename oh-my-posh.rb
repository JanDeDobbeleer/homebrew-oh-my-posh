class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh/archive/v18.3.2.tar.gz"
  head "https://github.com/JanDeDobbeleer/oh-my-posh.git", branch: "main"
  sha256 "bb8a456e7b41497df1198f9d8f6a90e1ce44b4b7dc7bb68fc129bf0fbec639ee"
  license "MIT"
  version "18.3.2"

  depends_on "go@1.20" => :build

  def install
    Dir.chdir("src") do
      ENV["GOPROXY"] = ENV.has_key?("HOMEBREW_GOPROXY") ? ENV["HOMEBREW_GOPROXY"] : ""
      system("go build -o=oh-my-posh -ldflags=\"-s -w -X \'github.com/jandedobbeleer/oh-my-posh/src/build.Version=18.3.2\' -X \'github.com/jandedobbeleer/oh-my-posh/src/build.Date=2023-08-08T07:32:10Z\'\"")
      bin.install "oh-my-posh"
    end
    mv "themes", prefix
  end

  def caveats
    <<~EOS
      Thanks for installing Oh My Posh.
      Have a look at https://ohmyposh.dev/docs/ for detailed instructions for your shell.
      Sample themes can be found at $(brew --prefix oh-my-posh)/themes.

      If you're enjoying Oh My Posh, feel free to donate or become a sponsor.
      https://github.com/sponsors/JanDeDobbeleer

      In case you're looking for help, want to share how you use Oh My Posh, or find like-minded individuals, join our Discord community!
      https://discord.gg/n7E3DkXssv
    EOS
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

