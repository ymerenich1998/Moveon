class CustomersController < InheritedResources::Base

  private

    def customer_params
      params.require(:customer).permit(:full_name, :phone, :desc)
    end

end
