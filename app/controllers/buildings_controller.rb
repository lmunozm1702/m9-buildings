class BuildingsController < ApplicationController
    def new
        @building = Building.new
        @building.apartments.build
    end

    private 
        def building_params
        # El parámetro destroy nos permite eliminar un apartment cuando se envía el formulario.
            params.require(:building).permit(:name, apartments_attributes:[:id, :number, :sale_price, :_destroy])
        end
end
    