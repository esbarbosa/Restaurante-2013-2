
# coding: utf-8
require 'spec_helper'

feature 'gerenciar pedido' do

  scenario 'incluir pedido' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nomeCliente => 'XXX')


    visit new_pedido_path

    preencher_e_verificar_pedido
   

  end

  scenario 'alterar pedido' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nomeCliente => 'XXX')

    pedido = FactoryGirl.create(:pedido,:cliente => cliente)

    visit edit_pedido_path(pedido)

    preencher_e_verificar_pedido


  end

  scenario 'excluir pedido' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nomeCliente => 'XXX')

    pedido = FactoryGirl.create(:pedido,:cliente => cliente)

    visit pedidos_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_pedido
  
    fill_in 'Data', :with => '12/12/12'
    fill_in 'Situação', :with => 'aberto'

    select 'XXX', :from => 'Cliente'
    
    click_button 'Salvar'
    
   
    page.should have_content 'Data: 12/12/12'
    page.should have_content 'Situação: aberto'
   
    page.should have_content 'Cliente: XXX'
    
  end

      

end

