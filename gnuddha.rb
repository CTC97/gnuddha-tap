class Gnuddha < Formula
  desc "Meditation for healthy, productive devving"
  homepage "https://github.com/CTC97/gnuddha"
  url "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.u.tar.gz"
  sha256 "bd60803ab4a48ef916c3c8e8e5a721552b6e47a13db57eeb39168fa6698c41f9"
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
