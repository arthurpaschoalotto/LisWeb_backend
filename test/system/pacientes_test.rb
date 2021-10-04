require "application_system_test_case"

class PacientesTest < ApplicationSystemTestCase
  setup do
    @paciente = pacientes(:one)
  end

  test "visiting the index" do
    visit pacientes_url
    assert_selector "h1", text: "Pacientes"
  end

  test "creating a Paciente" do
    visit pacientes_url
    click_on "New Paciente"

    fill_in "Bairro", with: @paciente.bairro
    fill_in "Carteirinha conv", with: @paciente.carteirinha_conv
    fill_in "Celular", with: @paciente.celular
    fill_in "Cep", with: @paciente.cep
    fill_in "Cns conv", with: @paciente.cns_conv
    fill_in "Complemento", with: @paciente.complemento
    fill_in "Convenio", with: @paciente.convenio
    fill_in "Cor", with: @paciente.cor
    fill_in "Cpf", with: @paciente.cpf
    fill_in "Data nascimento", with: @paciente.data_nascimento
    fill_in "Email", with: @paciente.email
    fill_in "Ibge", with: @paciente.ibge
    fill_in "Localidade", with: @paciente.localidade
    fill_in "Logradouro", with: @paciente.logradouro
    fill_in "Nome", with: @paciente.nome
    fill_in "Nome mae", with: @paciente.nome_mae
    fill_in "Nome pai", with: @paciente.nome_pai
    fill_in "Numero", with: @paciente.numero
    fill_in "Observacao", with: @paciente.observacao
    check "Receber email" if @paciente.receber_email
    check "Receber infadc" if @paciente.receber_infadc
    check "Receber sms" if @paciente.receber_sms
    fill_in "Rg", with: @paciente.rg
    fill_in "Sexo", with: @paciente.sexo
    fill_in "Telefone", with: @paciente.telefone
    fill_in "Titular conv", with: @paciente.titular_conv
    fill_in "Uf", with: @paciente.uf
    fill_in "Validade conv", with: @paciente.validade_conv
    click_on "Create Paciente"

    assert_text "Paciente was successfully created"
    click_on "Back"
  end

  test "updating a Paciente" do
    visit pacientes_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @paciente.bairro
    fill_in "Carteirinha conv", with: @paciente.carteirinha_conv
    fill_in "Celular", with: @paciente.celular
    fill_in "Cep", with: @paciente.cep
    fill_in "Cns conv", with: @paciente.cns_conv
    fill_in "Complemento", with: @paciente.complemento
    fill_in "Convenio", with: @paciente.convenio
    fill_in "Cor", with: @paciente.cor
    fill_in "Cpf", with: @paciente.cpf
    fill_in "Data nascimento", with: @paciente.data_nascimento
    fill_in "Email", with: @paciente.email
    fill_in "Ibge", with: @paciente.ibge
    fill_in "Localidade", with: @paciente.localidade
    fill_in "Logradouro", with: @paciente.logradouro
    fill_in "Nome", with: @paciente.nome
    fill_in "Nome mae", with: @paciente.nome_mae
    fill_in "Nome pai", with: @paciente.nome_pai
    fill_in "Numero", with: @paciente.numero
    fill_in "Observacao", with: @paciente.observacao
    check "Receber email" if @paciente.receber_email
    check "Receber infadc" if @paciente.receber_infadc
    check "Receber sms" if @paciente.receber_sms
    fill_in "Rg", with: @paciente.rg
    fill_in "Sexo", with: @paciente.sexo
    fill_in "Telefone", with: @paciente.telefone
    fill_in "Titular conv", with: @paciente.titular_conv
    fill_in "Uf", with: @paciente.uf
    fill_in "Validade conv", with: @paciente.validade_conv
    click_on "Update Paciente"

    assert_text "Paciente was successfully updated"
    click_on "Back"
  end

  test "destroying a Paciente" do
    visit pacientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paciente was successfully destroyed"
  end
end
