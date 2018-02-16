module CalendarHelper
    def calendar(date = Date.today,room, &block)
        Calendar.new(self, date, block, room).table
      end


class Calendar < Struct.new(:view, :date, :callback, :room)
    HEADER = %w[Sun Mon Tue Wed Thu Fri Sat]
    START_DAY = :sunday

    delegate :content_tag, to: :view

    def table
      content_tag :table, class: "calendar_tabel" do
        header + week_rows
      end
    end

    def header
      content_tag :tr do
        HEADER.map { |day| content_tag :th, day }.join.html_safe
      end
    end

    def week_rows
      weeks.map do |week|
        content_tag :tr do
          week.map { |day| day_cell(day) }.join.html_safe
        end
      end.join.html_safe
    end

    def day_cell(day)
      content_tag :td , class: day_classes(day) do
        content_tag :a do
        content_tag :small, view.capture(day, &callback)
        end
      end 
    
    end

    def day_classes(day)
      classes = []
      classes << "apb-calendar_current-date" if day == Date.today
      classes << "not-available" if room.name == "Standard Apartment2"
      
      classes.empty? ? nil : classes.join(" ")
    end

    def weeks
      first = date.beginning_of_month.beginning_of_week(START_DAY)
      last = date.end_of_month.end_of_week(START_DAY)
      (first..last).to_a.in_groups_of(7)
    end
end

end   