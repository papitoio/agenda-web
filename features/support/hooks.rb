

After do |scenario|
    nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_').downcase!
    file = "log/shots/#{nome}.png"
    page.save_screenshot(file)
    embed(file, 'image/png', 'View Screenshot')
end