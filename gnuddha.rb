# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gnuddha < Formula
  desc "Meditation UI in your favorite bash terminal. Homebrew distribution coming soon! "
  homepage ""
  url "https://github.com/CTC97/gnuddha/archive/refs/tags/0.1.e.tar.gz"
  sha256 "726b73a026aee06dad970bf64031c8ac0df61c2344350643cf7e5a22c17f0e84"
  license ""

  depends_on "jq"
  depends_on "bc"
  depends_on "mpg123"
  depends_on "curl"

  # depends_on "cmake" => :build

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", "--disable-silent-rules", *std_configure_args
    bin.install "gnuddha.sh"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    (share/"sprites").install Dir["sprites/*"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test gnuddha`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
