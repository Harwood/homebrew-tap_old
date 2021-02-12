class GitRemoteGitern < Formula
  head "https://github.com/huumn/git-remote-gitern.git"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
  end
end
