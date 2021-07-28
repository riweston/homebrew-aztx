# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aztx < Formula
  desc "This tool is a helper for azure-cli that leverages fzf for a nice interface to switch between subscription contexts."
  homepage "https://github.com/riweston/aztx"
  version "0.3.0"
  license "Apache"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/riweston/aztx/releases/download/0.3.0/aztx_0.3.0_darwin_amd64.tar.gz"
      sha256 "f220532c486be8d6882235dd760cbe9beb744ce4e5ec31b72a459c42b1dffbba"
    end
    if Hardware::CPU.arm?
      url "https://github.com/riweston/aztx/releases/download/0.3.0/aztx_0.3.0_darwin_arm64.tar.gz"
      sha256 "7a95ef261ec911bddd99ef064a54bbf1872f8b4fd3dcfc13d7a11aad86a4d15d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/riweston/aztx/releases/download/0.3.0/aztx_0.3.0_linux_amd64.tar.gz"
      sha256 "9a44c086d36516a96d22c01d6d3798cf2438a396373e404e7225d3d338f9419c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/riweston/aztx/releases/download/0.3.0/aztx_0.3.0_linux_arm64.tar.gz"
      sha256 "95139c260fd811bf907a3e5333ce333044547265ce1eee757e22706b7c600cf7"
    end
  end

  depends_on "azure-cli"
  depends_on "fzf"

  def install
    bin.install "aztx"
  end
end
