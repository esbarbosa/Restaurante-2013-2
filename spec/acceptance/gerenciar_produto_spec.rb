# coding: utf-8

require 'spec_helper'

feature 'gerenciar produto' do

  scenario 'incluir produto', :javascript => true do

    visit new_produto_path

    preencher_e_verificar_produto
 

  end

  scenario 'alterar produto' do #, :js => true do

    produto = FactoryGirl.create(:produto)

    visit edit_produto_path(produto)

    preencher_e_verificar_produto



  end

   scenario 'excluir produto' do #, :javascript => true do

       produto = FactoryGirl.create(:produto)

        visit produtos_path

        click_link 'Excluir'

 

  end

   def preencher_e_verificar_produto

      fill_in 'Descrição', :with => "Lasanha"
	  fill_in 'Preço', :with => "50"
      fill_in 'Quantidade', :with => "1"
 
      click_button 'Salvar'

      page.should have_content 'Descrição: Lasanha'
      page.should have_content 'Preço: 50'
      page.should have_content 'Quantidade: 1'
     
   end
end

  


