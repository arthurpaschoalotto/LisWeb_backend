class CreatePacientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :rg
      t.string :cpf
      t.string :sexo
      t.string :cor
      t.string :nome_mae
      t.string :nome_pai
      t.integer :cep
      t.string :localidade
      t.string :uf
      t.integer :ibge
      t.string :logradouro
      t.string :complemento
      t.string :bairro
      t.integer :numero
      t.string :convenio
      t.string :titular_conv
      t.string :carteirinha_conv
      t.date :validade_conv
      t.string :cns_conv
      t.boolean :receber_infadc
      t.boolean :receber_email
      t.boolean :receber_sms
      t.text :observacao
      t.string :telefone
      t.string :email
      t.string :celular

      t.timestamps
    end
  end
end
