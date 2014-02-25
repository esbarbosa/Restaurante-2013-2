
# coding: utf-8
require 'spec_helper'

feature 'gerenciar itempedido' do

  scenario 'incluir itempedido' do #, :javascript => true  do

    pedido = FactoryGirl.create(:pedido, :situacaoPedido => 'XXX')
    produto = FactoryGirl.create(:produto, :descricao => 'YYY')

    visit new_itempedido_path

    preencher_e_verificar_itempedido
   

  end

  scenario 'alterar itempedido' do #, :javascript => true  do

    pedido = FactoryGirl.create(:pedido, :situacaoPedido => "XXX") 
    produto = FactoryGirl.create(:produto, :descricao => 'YYY')

    itempedido = FactoryGirl.create(:itempedido, :pedido => pedido, :produto => produto)

    visit edit_itempedido_path(itempedido)

    preencher_e_verificar_itempedido


  end

  scenario 'excluir pedido' do #, :javascript => true  do

  	pedido = FactoryGirl.create(:pedido, :situacaoPedido => "XXX") 
    produto = FactoryGirl.create(:produto, :descricao => 'YYY')

    itempedido = FactoryGirl.create(:itempedido, :pedido => pedido, :produto => produto)

    visit itempedidos_path

    click_link 'Excluir'
    
    
  end


  def preencher_e_verificar_itempedido
  
    fill_in 'Subtotal', :with => '40'

    select 'XXX', :from => 'Pedido'
    select 'YYY', :from => 'Produto'
    
    click_button 'Salvar'
    
    page.should have_content 'Subtotal: 40'

    page.should have_content 'Pedido: XXX'
    page.should have_content 'Produto: YYY'
    
  end

      
end

