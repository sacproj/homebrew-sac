class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.0.5/sac-cli.tar.gz"
  version "2.0.5"
  sha256 "34980656dab44da77dd3165072fa64ab3980d72ff3f8d55eb310b8a646112f1c"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
