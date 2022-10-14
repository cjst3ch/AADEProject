require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/alumnis", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Alumni. As you add validations to Alumni, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  before do #Skip authentication for routing
    allow_any_instance_of(Devise::Controllers::Helpers).to receive(:authenticate_admin!).and_return(true)
  end

  describe "GET /index" do
    it "renders a successful response" do
      Alumni.create! valid_attributes
      get alumnis_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      alumni = Alumni.create! valid_attributes
      get alumni_url(alumni)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_alumni_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      alumni = Alumni.create! valid_attributes
      get edit_alumni_url(alumni)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Alumni" do
        expect {
          post alumnis_url, params: { alumni: valid_attributes }
        }.to change(Alumni, :count).by(1)
      end

      it "redirects to the created alumni" do
        post alumnis_url, params: { alumni: valid_attributes }
        expect(response).to redirect_to(alumni_url(Alumni.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Alumni" do
        expect {
          post alumnis_url, params: { alumni: invalid_attributes }
        }.to change(Alumni, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post alumnis_url, params: { alumni: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested alumni" do
        alumni = Alumni.create! valid_attributes
        patch alumni_url(alumni), params: { alumni: new_attributes }
        alumni.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the alumni" do
        alumni = Alumni.create! valid_attributes
        patch alumni_url(alumni), params: { alumni: new_attributes }
        alumni.reload
        expect(response).to redirect_to(alumni_url(alumni))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        alumni = Alumni.create! valid_attributes
        patch alumni_url(alumni), params: { alumni: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested alumni" do
      alumni = Alumni.create! valid_attributes
      expect {
        delete alumni_url(alumni)
      }.to change(Alumni, :count).by(-1)
    end

    it "redirects to the alumnis list" do
      alumni = Alumni.create! valid_attributes
      delete alumni_url(alumni)
      expect(response).to redirect_to(alumnis_url)
    end
  end
end
