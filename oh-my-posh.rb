class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh/archive/v3.102.0.tar.gz"
  sha256 "d294a470c76293ea249ca2f919e5dc63bfcf054262016c53c5355391929055fb"
  license "GPL-3.0-only"
  version "3.102.0"

  depends_on "go" => :build

  def install
    Dir.chdir("src") do
      system("go build -o=oh-my-posh -ldflags=\"-X \'main.Version=3.102.0\'\"")
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

