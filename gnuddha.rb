class Gnuddha < Formula
  desc "Meditation UI in your favorite bash terminal. Homebrew distribution coming soon! "
  homepage ""
  url "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.g.tar.gz"
  sha256 "da1687092649026c95df1339de94f013edfe427d30ca462a82aa4688db840ebf"
  license ""

  depends_on "jq"
  depends_on "bc"
  depends_on "mpg123"
  depends_on "curl"

  def install
    bin.install "gnuddha.sh" => "gnuddha"
    (share/"gnuddha"/"sprites").install Dir["sprites/*"]
    (share/"gnuddha"/"docs").install "dhamma.json"
    (share/"gnuddha"/"audio").install "bells-1-72261.mp3"
  end

  test do
    system "false"
  end
end
