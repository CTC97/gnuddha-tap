class Gnuddha < Formula
  desc "Meditation for healthy, productive devving"
  homepage "https://github.com/CTC97/gnuddha"
  url "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.r.tar.gz"
  sha256 "4db410dc49e1867fa8a9c987deaa398fa75958bdb6cc5c816b12642f31efe6e4"
  license "BSD-3-Clause"

  depends_on "bc"
  depends_on "curl"
  depends_on "jq"
  depends_on "mpg123"

  def install
    bin.install "gnuddha.sh" => "gnuddha"
    pkgshare.install Dir["res/*"]
  end

  test do
    assert_predicate bin/"gnuddha", :exist?, "gnuddha executable must exist"
    assert_predicate pkgshare, :exist?, "Resource directory must exist"
    puts "Success."
  end
end
