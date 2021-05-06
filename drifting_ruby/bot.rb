module DriftingRuby
  class Bot < SlackRubyBot::Bot
    help do
      title "list website công việc"
      desc "Website dành cho công việc <3"
      command :youtube do
        title "Youtube  "
        desc "Xem phim nghe nhạc "
      end
      command :google do
        title "Google  "
        desc "Tìm kiếm cã thế giới "
      end
      command :git do
        title "youtube "
        desc "kho lưu trữ code "
      end
      command "monstar-lad" do
        title "Monstar-lad"
        desc "world of me "
      end

      command :translate do
        title "Google dich"
        desc "world of me "
      end
    end
  end
end
