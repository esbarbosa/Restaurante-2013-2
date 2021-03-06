# coding: utf-8

require 'spec_helper'

feature 'gerenciar cliente' do

  scenario 'incluir cliente', :javascript => true do

    visit new_cliente_path

    preencher_e_verificar_cliente
 

  end

  scenario 'alterar cliente' do #, :js => true do

    cliente = FactoryGirl.create(:cliente)

    visit edit_cliente_path(cliente)

    preencher_e_verificar_cliente



  end

   scenario 'excluir cliente' do #, :javascript => true do

       cliente = FactoryGirl.create(:cliente)

        visit clientes_path

        click_link 'Excluir'

 

  end

   def preencher_e_verificar_cliente

      fill_in 'Nome', :with => "Eliana"
	  fill_in 'Telefone', :with => "2222-2222"
      fill_in 'CPF', :with => "123456789"
 
      click_button 'Salvar'

      page.should have_content 'Nome: Eliana'
      page.should have_content 'Telefone: 2222-2222'
      page.should have_content 'CPF: 123456789'
     
   end
end

  


