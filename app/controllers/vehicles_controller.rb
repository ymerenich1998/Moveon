class VehiclesController < InheritedResources::Base

  private

    def vehicle_params
      params.require(:vehicle).permit(:vin, :model, :mark, :year, :color)
    end

end
