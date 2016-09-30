class VariablesScopes
    @@_variable_of_class = 0

    def initialize
        @first_variable = 'First variable'
        @second_variable = 'Second variable'
        @third_variable = 'Third variable'
        @@_variable_of_class += 1
    end

    def display_details
        puts "first_variable #{@first_variable}"
        puts "second_variable #{@second_variable}"
        puts "third_variable #{@third_variable}"
    end
end

scopes = VariablesScopes.new
scopes.display_details
