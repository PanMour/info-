function Image(img)
    if img.classes:find('info',1) then
      local f = io.open("project/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local title = pandoc.utils.stringify(doc.meta.title)
      local caption = pandoc.utils.stringify(doc.meta.caption) 
      local name = pandoc.utils.stringify(doc.meta.name)
      local am = pandoc.utils.stringify(doc.meta.am)
      local line = "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
      local content = '> **My Addition:** \n ' .. **title:** .. ' \n ' .. caption .. '  \n>'  .. line .. '  \n ' .. "Ονοματεπώνυμο: " .. name .. '  \n '  .. "Αριθμός Μητρώου: " .. am .. ' \n ' ..  line
      return pandoc.RawInline('markdown',content)
    end
end
