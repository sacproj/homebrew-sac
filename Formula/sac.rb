class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.0.3/sac-cli.tar.gz"
  version "2.0.3"
  sha256 "d0b0d4564f03063d725ed5459eafa4797f9fbb2c561476b32afa97d6edc26c0d"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
