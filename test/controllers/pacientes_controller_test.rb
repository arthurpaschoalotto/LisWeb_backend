require "test_helper"

class PacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_url
    assert_response :success
  end

  test "should create paciente" do
    assert_difference('Paciente.count') do
      post pacientes_url, params: { paciente: { bairro: @paciente.bairro, carteirinha_conv: @paciente.carteirinha_conv, celular: @paciente.celular, cep: @paciente.cep, cns_conv: @paciente.cns_conv, complemento: @paciente.complemento, convenio: @paciente.convenio, cor: @paciente.cor, cpf: @paciente.cpf, data_nascimento: @paciente.data_nascimento, email: @paciente.email, ibge: @paciente.ibge, localidade: @paciente.localidade, logradouro: @paciente.logradouro, nome: @paciente.nome, nome_mae: @paciente.nome_mae, nome_pai: @paciente.nome_pai, numero: @paciente.numero, observacao: @paciente.observacao, receber_email: @paciente.receber_email, receber_infadc: @paciente.receber_infadc, receber_sms: @paciente.receber_sms, rg: @paciente.rg, sexo: @paciente.sexo, telefone: @paciente.telefone, titular_conv: @paciente.titular_conv, uf: @paciente.uf, validade_conv: @paciente.validade_conv } }
    end

    assert_redirected_to paciente_url(Paciente.last)
  end

  test "should show paciente" do
    get paciente_url(@paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_url(@paciente)
    assert_response :success
  end

  test "should update paciente" do
    patch paciente_url(@paciente), params: { paciente: { bairro: @paciente.bairro, carteirinha_conv: @paciente.carteirinha_conv, celular: @paciente.celular, cep: @paciente.cep, cns_conv: @paciente.cns_conv, complemento: @paciente.complemento, convenio: @paciente.convenio, cor: @paciente.cor, cpf: @paciente.cpf, data_nascimento: @paciente.data_nascimento, email: @paciente.email, ibge: @paciente.ibge, localidade: @paciente.localidade, logradouro: @paciente.logradouro, nome: @paciente.nome, nome_mae: @paciente.nome_mae, nome_pai: @paciente.nome_pai, numero: @paciente.numero, observacao: @paciente.observacao, receber_email: @paciente.receber_email, receber_infadc: @paciente.receber_infadc, receber_sms: @paciente.receber_sms, rg: @paciente.rg, sexo: @paciente.sexo, telefone: @paciente.telefone, titular_conv: @paciente.titular_conv, uf: @paciente.uf, validade_conv: @paciente.validade_conv } }
    assert_redirected_to paciente_url(@paciente)
  end

  test "should destroy paciente" do
    assert_difference('Paciente.count', -1) do
      delete paciente_url(@paciente)
    end

    assert_redirected_to pacientes_url
  end
end
