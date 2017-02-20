RSpec.describe "Rooms" do
    context "to create a room" do
        include Capybara::DSL
        it "should be able to navigate to room create" do
            visit "/rooms"
        end
    end
end