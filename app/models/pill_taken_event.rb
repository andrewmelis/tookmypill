class PillTakenEvent < ActiveRecord::Base
  def taken_today?
    created_at.in_time_zone('America/Chicago').to_date ==
        DateTime.now.in_time_zone('America/Chicago').to_date
  end
end
