require 'fileutils'
# metodo para tira screenhot e imbutir no relatorio html
module Helper
    def take_screenshot(file_name, result)
        time_path = Time.now.strftime('%F').to_s
        file_path = "results/screenshots/test_#{result}/run_#{time_path}"
        screenshot = "#{file_path}/#{file_name}.png"
        page.save_screenshot(screenshot)
        embed(screenshot, 'image/png', 'Click here')
    end
end