module Jekyll
    class CategoryPageGenerator < Generator
      safe true
  
      def generate(site)
        categories = site.posts.docs.flat_map { |post| post.data['categories'] || [] }.to_set
        categories.each do |cat|
          site.pages << CategoryPage.new(site, site.source, cat)
        end
      end
    end
  
    class CategoryPage < Page
      def initialize(site, base, cat)
        @site = site
        @base = base
        @name = "#{cat}.html"
  
        self.process(@name)
        self.read_yaml(File.join(base, '_layouts'), 'category_index.html')
        self.data['category_name'] = cat
        self.data['title'] = cat.capitalize
      end
    end
  end