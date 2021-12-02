class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.2.0/sac-cli.tar.gz"
  version "2.2.0"
  sha256 "6bde3fe05db870f9d249dadd6d260d219a51386ee97431f0d505ae5f1a1535b7"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
