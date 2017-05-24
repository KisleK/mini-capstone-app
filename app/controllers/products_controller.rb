class ProductsController < ApplicationController
  
  def index
    @products = Product.all  

    sort_attributes = params[:sort]
    sort_order = params[:sort_order]
    discount = params[:discount]
    search_term = params[:search_term]
    category = params[:category]

    if category
      @products = Category.find_by(name: category).products
    end

      if search_term
        @products = Product.where(
                                  "name iLIKE ? or description iLike ?",
                                  "%#{search_term}%",
                                  "%#{search_term}%"
                                  )
      end

      

      if discount 
        @products = @products.where("price < ?", discount)
      end

      if  sort_attributes && sort_order 
        @products = @products.order(sort_attributes => sort_order)

      elsif sort_attributes
        @products = @products.order(sort_attributes)
      end
  end

  def new
    
  end

  def create 
    product = Product.new(
                          name: params[:name],
                          price: params[:price],
                          description: params[:description]
                          )
    product.save

    flash[:success] = "Product Made"
    redirect_to "/products/#{ product.id }"
      
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end

  def edit
    @product = Product.find(params[:id])
  end


  def update
    product = Product.find(params[:id])
    product.assign_attributes(
                             name: params[:name],
                             price: params[:price],
                             description: params[:description]
                             
                             )
      product.save
      flash[:success] = "Successfully Updated"
      redirect_to "/products/#{ product.id }"
  end


  def destroy
    product = Product.find(params[:id])
    product.destroy   
    flash[:warning] = "Product No-Mo"
    redirect_to "/" 
   
  end

  def random
 product = Product.all.sample
 redirect_to "/products/#{ product.id }"
  end
    
end








