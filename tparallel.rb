# This file was generated by GoReleaser. DO NOT EDIT.
class Tparallel < Formula
  desc "tparallel detects inappropriate usage of t.Parallel() method in your Go test codes"
  homepage "https://github.com/moricho/tparallel"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/moricho/tparallel/releases/download/v0.2.0/tparallel_darwin_x86_64.tar.gz"
    sha256 "ec7fe8bcef33fe1903840213fadada382b6e210ce937a2c608942d7bffa5caac"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/moricho/tparallel/releases/download/v0.2.0/tparallel_linux_x86_64.tar.gz"
      sha256 "1a8ccb43d95221b07a696f096d778682453ab80093502c345c0598fba13a767c"
    end
  end

  def install
    bin.install "tparallel"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
