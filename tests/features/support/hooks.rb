World(Helper)

Before '@adicionartagparaafeture' do
end
After '@adicionartagparaafeture'do
end

# depois de cada cenario ele tira um print e remove todos os espaços e virgulas

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
    scenario_name = scenario.name.delete(',','')
    scenario_name = scenario.name.delete('(','')
    scenario_name = scenario.name.delete(')','')
    scenario_name = scenario.name.delete('#','')

    # se o cenario falha ele vai chamar o metodo passando dois parametros o nome do cenario com nome
    # minusculo e o resultado
    if scenario.failed?
        take_screenshot(scenario_name.downcase!, 'failed')
    else
        take_screenshot(scenario_name.downcase!, 'passed') 
    end
end