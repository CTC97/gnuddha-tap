class Gnuddha < Formula
  desc "Meditation for healthy, productive devving"
  homepage "https://github.com/CTC97/gnuddha"
  url "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.l.tar.gz"
  sha256 "ac74ac90c3416b650876a805beda31cbe7ce84793576a50d87f4a5c07a9fd63a"
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
    assert_predicate bin/"gnuddha", :exist?, "gnuddha executable must exist"
    assert_predicate share/"gnuddha"/"res", :exist?, "Resource directory must exist"
    puts "Success."
  end
end
