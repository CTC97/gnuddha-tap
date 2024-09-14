class Gnuddha < Formula
  desc "Meditation UI in your favorite bash terminal. Homebrew distribution coming soon! "
  homepage ""
  url "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.f.tar.gz"
  sha256 "116e13aa04585f24c4ca670f0f4ef3104e97f6a8d723f2dfdd85a216944cd790"
  license ""

  depends_on "jq"
  depends_on "bc"
  depends_on "mpg123"
  depends_on "curl"

  def install
    bin.install "gnuddha.sh" => "gnuddha"
    (share/"gnuddha"/"sprites").install Dir["sprites/*"]
    (share/"gnuddha"/"docs").install "dhamma.json"
  end

  test do
    system "false"
  end
end
