module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Devcamp Portfolio | My Portfolio website'
    @seo_keywords = 'Joy Too portfolio'
  end
end
