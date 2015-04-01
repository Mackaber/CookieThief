class Victim < ActiveRecord::Base

  has_many :cookie_parts

  def self.get_victim(session,vars)
    find_by_session(session) ?
        find_by_session(session) : Victim.create!(session: session, ip: vars[:ip], browser: vars[:browser])
  end

  def get_cookie
    Base64.decode64(cookie_parts.pluck(:part).join(""))
  end
end
