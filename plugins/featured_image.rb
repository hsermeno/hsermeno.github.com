require './plugins/post_filters'

module Jekyll
  class Post
    attr_accessor :featured_image
    
    def has_featured_image?
      return @featured_image != false;
    end
  end
  
  class FeaturedImageFilter < PostFilter

    #Called before post is sent to the converter. Allows
    #you to modify the post object before the converter
    #does it's thing
    def pre_render(post)
      if post.is_post?
        name = '/images/posts/' + post.date.strftime('%Y-%m-%d') + '-' + post.slug
        if File.exists?(post.site.source + name + '.png')
          post.featured_image = name + '.png'
        elsif File.exists?(post.site.source + name + '.jpg')
          post.featured_image = name + '.jpg'
        else
          post.featured_image = false
        end
      end
    end

    #Called after the post is rendered with the converter.
    #Use the post object to modify it's contents before the
    #post is inserted into the template.
    def post_render(post)
    end

    #Called after the post is written to the disk.
    #Use the post object to read it's contents to do something
    #after the post is safely written.
    def post_write(post)
    end
  end
end