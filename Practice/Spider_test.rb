require 'spidr'

servers = Set[]

url = 'http://www.runoob.com/ruby'


Spidr.site(url) do |spider|
  spider.every_page do |page|
    # puts "[-] #{page.url}"

    page.search('img').each do |meta|
      # name = (meta.attributes['name'] || meta.attributes['http-equiv'])
      # value = meta.attributes['content']
      #
      # puts "    #{name} = #{value}"

      if !meta.attributes['width']
        next
      end

      if meta.attributes['width'].value.to_i > 100 and meta.attributes['height'].value.to_i > 100

        puts meta.attributes['src']

      end


    end
  end
end