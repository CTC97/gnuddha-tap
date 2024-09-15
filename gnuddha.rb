class Gnuddha < Formula
  desc "Meditation for healthy, productive deving"
  homepage "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.h.tar.gz"
  url "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.h.tar.gz"
  sha256 "7495482f8663a013ac42611a3af72409ff0876a6204e4b538d0565f3ea16d190"
  license "BSD-3-Clause"

  depends_on "bc"
  depends_on "curl"
  depends_on "jq"
  depends_on "mpg123"

  def install
    bin.install "gnuddha.sh" => "gnuddha"
    (share/"gnuddha"/"res").install Dir["res/*"]
  end

  test do
    system "false"
  end
end
