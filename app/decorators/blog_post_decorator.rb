class BlogPostDecorator < Draper::Decorator
  delegate_all

  def short_date
    object.created_at.strftime("%m.%b.%Y")
  end

  def long_date
    object.created_at.strftime("%m.%b.%Y %H:%M")
  end
end
