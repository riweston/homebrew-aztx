# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aztx < Formula
  desc "This tool is a helper for azure-cli that leverages fzf for a nice interface to switch between subscription contexts."
  homepage "https://github.com/riweston/aztx"
  version "1.6.5"
  license "MIT"

  depends_on "azure-cli"
  depends_on "fzf"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/riweston/aztx/releases/download/1.6.5/aztx_1.6.5_darwin_amd64.zip"
      sha256 "d044dd2e04b9b2938f72ecee0fc563b8c51c133684a5acd3f5fd822e6e966261"

      def install
        bin.install "aztx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/riweston/aztx/releases/download/1.6.5/aztx_1.6.5_darwin_arm64.zip"
      sha256 "728f9d253619c410a6789e3be239ea80a3623b82b8b022dfec147a03e4b5d309"

      def install
        bin.install "aztx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/riweston/aztx/releases/download/1.6.5/aztx_1.6.5_linux_amd64.zip"
        sha256 "d61f7120360be10038126429e1290f5aa0bcec01abcb472c652d70edaa0015c6"

        def install
          bin.install "aztx"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/riweston/aztx/releases/download/1.6.5/aztx_1.6.5_linux_arm64.zip"
        sha256 "7efbc6e52a6556e864c175f161747a4a790ffd7def38b8b853c5cebfca7c6cc1"

        def install
          bin.install "aztx"
        end
      end
    end
  end
end
