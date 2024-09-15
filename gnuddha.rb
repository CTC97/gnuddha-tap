class Gnuddha < Formula
  desc "Meditation for healthy, productive deving"
  homepage "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.h.tar.gz"
  url "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.i.tar.gz"
  sha256 "7b31b1cdc819eb1231545e1bb594cccd8dedc122a01cdc9f1c9b7d2454abe661"
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
