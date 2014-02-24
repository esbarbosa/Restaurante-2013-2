
# coding: utf-8
require 'spec_helper'

feature 'gerenciar conta' do

  scenario 'incluir conta' do #, :javascript => true  do

    pedido = FactoryGirl.create(:pedido, :situacaoPedido => 'XXX')


    visit new_conta_path

    preencher_e_verificar_conta
   

  end

  scenario 'alterar conta' do #, :javascript => true  do

    pedido = FactoryGirl.create(:pedido, :situacaoPedido => 'XXX')

    conta = FactoryGirl.create(:conta,:pedido => pedido)

    visit edit_conta_path(conta)

    preencher_e_verificar_conta


  end

  scenario 'excluir conta' do #, :javascript => true  do

    pedido = FactoryGirl.create(:pedido, :situacaoPedido => 'XXX')

    conta = FactoryGirl.create(:conta,:pedido => pedido)

    visit contas_path

    click_link 'Excluir'
    
    
  end


  def preencher_e_verificar_conta
  
    fill_in 'Data de abertura', :with => '12/12/12'
    fill_in 'Valor total', :with => '50'
    fill_in 'Status', :with => 'aberta'
    fill_in 'Data de fechamento', :with => '12/12/12'

    select 'XXX', :from => 'pedido'
    
    click_button 'Salvar'

   
    page.should have_content 'Data de abertura: 12/12/12'
    page.should have_content 'Valor total: 50'
    page.should have_content 'Status: aberta'
    page.should have_content 'Data de fechamento: 12/12/12'
   
    page.should have_content 'pedido: XXX'
    
  end

      
end

