class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh/archive/v3.170.0.tar.gz"
  sha256 "0076e128d76c0cb5cd8a52f94de1e62d14c3db6dcf343de8bddb52add6677213"
  license "GPL-3.0-only"
  version "3.170.0"

  depends_on "go@1.16" => :build

  def install
    Dir.chdir("src") do
      system("go build -o=oh-my-posh -ldflags=\"-X \'main.Version=3.170.0\'\"")
      bin.install "oh-my-posh"
    end
    mv "themes", prefix
  end

  def caveats
    <<~EOS
      Thanks for installing Oh my Posh.
      Have a look at https://ohmyposh.dev/docs/macos for detailed instructions for your shell.
      Sample themes can be found at $(brew --prefix oh-my-posh)/themes.

      If you're enjoying Oh my Posh, feel free to donate or become a sponsor.
      https://github.com/sponsors/JanDeDobbeleer

      Don't have anything to spare but still consider doing something?
      Nominating me as a Github Star can help as well!
      https://stars.github.com/nominate/
    EOS
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

