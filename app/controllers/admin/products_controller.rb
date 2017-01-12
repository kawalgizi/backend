class Admin::ProductsController < ApplicationController
  before_action :set_admin_product, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  
  # GET /admin/products
  # GET /admin/products.json
  def index
    @admin_products = Product.all
  end

  # GET /admin/products/1
  # GET /admin/products/1.json
  def show
  end

  # GET /admin/products/new
  def new
    @admin_product = Product.new
    @admin_product.build_brand
    @admin_product.compositions.build
    @admin_product.nutrition_facts.build
  end

  # GET /admin/products/1/edit
  def edit
  end

  # POST /admin/products
  # POST /admin/products.json
  def create
    @admin_product = Product.new(admin_product_params)

    respond_to do |format|
      if @admin_product.save
        format.html { redirect_to admin_products_url, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @admin_product }
      else
        format.html { render :new }
        format.json { render json: @admin_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/products/1
  # PATCH/PUT /admin/products/1.json
  def update
    respond_to do |format|
      if @admin_product.update(admin_product_params)
        format.html { redirect_to admin_products_url, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_product }
      else
        format.html { render :edit }
        format.json { render json: @admin_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/products/1
  # DELETE /admin/products/1.json
  def destroy
    @admin_product.destroy
    respond_to do |format|
      format.html { redirect_to admin_products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_product
      @admin_product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_product_params
      allowed_attrs = [
        { brand_attributes: [:name] },
        { composition_attributes: [:name, :daily_values] },
        { nutrition_facts_attributes: [:product_id, :nutrition, :daily_value, :akg] },
        :name,
        :bpom_id,
        :serving_size,
        :serving_per_container
      ]
      params.require(:product).permit(*allowed_attrs)
    end

end
