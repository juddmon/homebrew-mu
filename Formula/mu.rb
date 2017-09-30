# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Mu < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://github.com/juddmon/homebrew-mu"
  #url "https://github.com/stelligent/mu/releases/download/v0.2.6-develop/mu-linux-amd64"
  url "https://github.com/juddmon/homebrew-mu/archive/master.tar.gz"
  version "v0.2.6-develop"
  sha256 "2138e90ca319e4fd82cbcbdd2b3172689b02181907823f8161017525b3aa344a"

  # depends_on "cmake" => :build

  bottle :unneeded

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    #system "make", "install" # if this fails, try separate make/make install steps
	#make install
	bin.install "mu-linux-amd64"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test homebrew-mu`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
