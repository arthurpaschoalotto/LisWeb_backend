class PacientesController < ApplicationController
  before_action :set_paciente, only: %i[ show edit update destroy ]

  # GET /pacientes or /pacientes.json
  def index
    Rails.logger.info params['nome']
    @pacientes = Paciente.all
    cpf = params['cpf'].delete('^0-9') unless params['cpf'].blank?
    rg = params['rg'].delete('^0-9') unless params['rg'].blank?
    @pacientes = @pacientes.where('nome LIKE ?', "%#{params['nome']}%") unless params['nome'].blank?
    @pacientes = @pacientes.where('cpf LIKE ?', "#{cpf}%") if cpf
    @pacientes = @pacientes.where('rg LIKE ?', "#{rg}%") if rg
    @pacientes = @pacientes.where('nome_mae LIKE ?', "#{params['nome_mae']}%") unless params['nome_mae'].blank?
    @pacientes = @pacientes.where('nome_pai LIKE ?', "#{params['nome_pai']}%") unless params['nome_pai'].blank?

    page = params['page'].to_i
    @pacientes = @pacientes.limit(2)
    @pacientes = @pacientes.offset((page*2)-2) if page > 1

    sort_active = params['sort_active'] unless params['sort_active'].blank?
    sort_direction = params['sort_direction'] unless params['sort_direction'].blank?
    @pacientes = @pacientes.order("#{sort_active} #{sort_direction}") if (sort_active && sort_direction)
  end

  # GET /pacientes/1 or /pacientes/1.json
  def show
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
  end

  # GET /pacientes/1/edit
  def edit
  end

  # POST /pacientes or /pacientes.json
  def create
    @paciente = Paciente.new(paciente_params)

    respond_to do |format|
      if @paciente.save
        format.html { redirect_to @paciente, notice: "Paciente was successfully created." }
        format.json { render :show, status: :created, location: @paciente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1 or /pacientes/1.json
  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html { redirect_to @paciente, notice: "Paciente was successfully updated." }
        format.json { render :show, status: :ok, location: @paciente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1 or /pacientes/1.json
  def destroy
    @paciente.destroy
    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: "Paciente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paciente_params
      params.require(:paciente).permit(:nome, :data_nascimento, :rg, :cpf, :sexo, :cor, :nome_mae, :nome_pai, :cep, :localidade, :uf, :ibge, :logradouro, :complemento, :bairro, :numero, :convenio, :titular_conv, :carteirinha_conv, :validade_conv, :cns_conv, :receber_infadc, :receber_email, :receber_sms, :observacao, :telefone, :email, :celular)
    end
end
