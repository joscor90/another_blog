require test_helper

class PostTest < ActiveSupport::TestCase
    test get_index do
        get :index 
        assert_response :success
        assert_template :index 
        assert_not_nill assigns(posts)
    end

    test 'post create' do
        params = {
            title: "Another Title",
            description: "Can we repeat the same text?",
            author: "Jane Doe",
            status: 'draft',
            created_at: DateTime.now,
            updated_at: DateTime.now
        }
        
        post items_url, params: {post: params}
        assert_response :success
    end
end