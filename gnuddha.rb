class Gnuddha < Formula
  desc "Meditation for healthy, productive devving"
  homepage "https://github.com/CTC97/gnuddha"
  url "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.s.tar.gz"
  sha256 "96c46c382a0c660dd84623f5486f0c08cff84ac4a7b3195ea0e92ec575b36e0d"
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
