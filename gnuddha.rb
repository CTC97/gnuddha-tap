class Gnuddha < Formula
  desc "Meditation for healthy, productive devving"
  homepage "https://github.com/CTC97/gnuddha"
  url "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.m.tar.gz"
  sha256 "860a1a61353a8681e8134ae6093617e08afaf3f31f8839f657f41fad4d037c31"
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
