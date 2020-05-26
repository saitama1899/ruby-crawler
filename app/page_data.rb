class Page_data
  def initialize(assets, links)
    @assets = assets
    @links = links
  end

  def assets
    @assets
  end

  def links
    @links
  end

  def display
    puts "=" * 30 + "\nNumber of assets: #{@assets.count} \nNumber of links: #{@links.count}\n" + "=" * 30
  end
end
