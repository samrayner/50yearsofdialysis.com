module ThemeHelpers
  def entity_obfuscate(string)
    string.gsub(/./){ |char| "&##{char[0].ord};" }
  end

  def percent_obfuscate(string)
    "%" + string.unpack("H2" * string.bytesize).join("%").upcase
  end

  def image_collection(dir, type)
    html = '<div class="'+type.to_s+'">'
    source_path = "/images/galleries"
    pattern = "#{Dir.pwd}/source#{source_path}/#{dir}/*.{jpg,jpeg,png,gif}"

    Dir.glob(pattern) do |path|
      filename = File.basename(path)
      file_path = "#{source_path}/#{dir}/#{filename}"

      html += '<a href="'+file_path+'" target="_blank">' if type == :gallery
      html += '<img src="'+file_path+'" alt="" />'
      html += '</a>' if type == :gallery
    end

    html += '</div>'
  end

  def gallery(slug)
    image_collection(slug, :gallery)
  end

  def slideshow(slug)
    image_collection(slug, :slideshow)
  end

  def nav_link_to(title, url, active=nil)
    active = current_page.url.index(url) == 0 if active.nil?
    "<li class=\"#{"active" if active}\">" + link_to(title, url) + "</li>"
  end
end
