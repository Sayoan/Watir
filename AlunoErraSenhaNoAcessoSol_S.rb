require 'watir'
require 'webdrivers'
require 'faker'

# Initalize the Browser
browser = Watir::Browser.new

# Navigate to Page
browser.goto 'https://homoaca-php.animaeducacao.com.br/branches/base2/SOL/aluno/index.php/index/seguranca/dev/instituicao/1'

# Authenticate and Navigate to the Form
browser.text_field(name: 'matricula').set '114111564'
browser.text_field(name: 'senha').set '1234'
browser.button(name: 'logar').click
#browser.button(:xpath, "//button/span").click

browser.close

