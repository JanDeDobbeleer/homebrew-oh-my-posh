class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh3/archive/v3.73.0.tar.gz"
  sha256 "9661e5b165c0dfb976b51344d9146c0a483a43b974446d863b5a3e630fbece14"
  license "GPL-3.0-only"
  version "3.73.0"

  depends_on "go" => :build
  depends_on "go-bindata" => :build

  def install
    Dir.chdir("src") do
      system("go generate")
      system("go build -o=oh-my-posh -ldflags=\"-X \'main.Version=3.73.0\'\"")
      bin.install "oh-my-posh"
    end
    mv "themes", prefix
  end

  def caveats
    <<~EOS
      Thanks for installing Oh my Posh.
      Have a look at https://ohmyposh.dev/docs/installation for detailed instructions for your shell.
      Sample themes can be found at $(brew --prefix oh-my-posh)/themes.
    EOS
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

