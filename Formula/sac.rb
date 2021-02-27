class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.0.4/sac-cli.tar.gz"
  version "2.0.4"
  sha256 "36dc6d434b2ee24516274153e54bf21fc42367183c1e8775fec9406554ae780c"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
