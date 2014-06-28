require 'rails_helper'

<% module_namespacing do -%>
RSpec.describe <%= controller_class_name %>Controller, :type => :controller do

  let!(:<%= file_name %>) { <%= class_name %>.create! valid_attributes }
  let(:<%= table_name_params %>) { {} }
  let(:<%= file_name_params %>) { <%= table_name_params %>.merge(id: <%= file_name %>.to_param) }

  let(:valid_attributes)    { {} }
  let(:invalid_attributes)  { {} }

<% unless options[:singleton] -%>
  describe "#index" do
    before { get :index, <%= table_name_params %> }

    specify { expect(assigns(:<%= table_name %>)).to eq([<%= file_name %>]) }
    it { should render_template :index }
  end

<% end -%>
  describe "#show" do
    before { get :show, <%= file_name_params %> }

    specify { expect(assigns(:<%= ns_file_name %>)).to eq(<%= file_name %>) }
    it { should render_template :show }
  end

  describe "#new" do
    before { get :new, <%= table_name_params %> }

    specify { expect(assigns(:<%= ns_file_name %>)).to be_a_new(<%= class_name %>) }
    it { should render_template :new }
  end

  describe "#edit" do
    before { get :edit, <%= file_name_params %> }

    specify { expect(assigns(:<%= ns_file_name %>)).to eq(<%= file_name %>) }
    it { should render_template :edit }
  end

  describe "#create" do
    before { post :create, params } 

    context "with valid params" do
      let(:params) { <%= table_name_params %>.merge(<%= ns_file_name %>: valid_attributes) }

      specify { expect(assigns(:<%= ns_file_name %>)).to be_persisted }
      it { should redirect_to <%= class_name %>.last }
    end

    context "with invalid params" do
      let(:params) { <%= table_name_params %>.merge(<%= ns_file_name %>: invalid_attributes) }

      specify { expect(assigns(:<%= ns_file_name %>)).not_to be_persisted }
      specify { expect(assigns(:<%= ns_file_name %>)).not_to be_valid }
      it { should render_template :new }
    end
  end

  describe "#update" do
    before { patch :update, params }

    context "with valid params" do
      let(:params) { <%= file_name_params %>.merge(<%= ns_file_name %>: valid_attributes) }

      specify { expect(assigns(:<%= ns_file_name %>)).to eq(<%= file_name %>) }
      specify { expect(assigns(:<%= ns_file_name %>)).to be_persisted }
      it { should redirect_to <%= file_name %> }
    end

    context "with invalid params" do
      let(:params) { <%= file_name_params %>.merge(<%= ns_file_name %>: invalid_attributes) }

      specify { expect(assigns(:<%= ns_file_name %>)).to eq(<%= file_name %>) }
      specify { expect(assigns(:<%= ns_file_name %>)).not_to be_valid }
      it { should render_template :edit }
    end
  end

  describe "#destroy" do
    before { delete :destroy, <%= file_name_params %> }

    specify { expect(assigns(:<%= ns_file_name %>)).to eq(<%= file_name %>) }
    specify { expect(assigns(:<%= ns_file_name %>)).to be_destroyed }
    it { should redirect_to(<%= index_helper %>_url) }
  end

end
<% end -%>
