class Gnuddha < Formula
  desc "Meditation UI in your favorite bash terminal. Homebrew distribution coming soon! "
  homepage ""
  url "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.h.tar.gz"
  sha256 "7495482f8663a013ac42611a3af72409ff0876a6204e4b538d0565f3ea16d190"
  license ""

  depends_on "jq"
  depends_on "bc"
  depends_on "mpg123"
  depends_on "curl"

  def install
    bin.install "gnuddha.sh" => "gnuddha"
    (share/"gnuddha"/"res").install Dir["res/*"]
  end

  test do
    system "false"
  end
end
