module TopicsSidebar
  def set_sidebar_topics
    @side_bar_topics = Topic.with_blogs
  end
end
