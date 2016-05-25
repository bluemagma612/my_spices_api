Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      get     "/cuisines",          to: "cuisines#index"
      post    "/cuisines",          to: "cuisines#create"
      get     "/cuisines/:id",      to: "cuisines#show"
      put     "/cuisines/:id",      to: "cuisines#update"
      delete  "/cuisines/:id",      to: "cuisines#destroy"
    end

    namespace :v1 do
      get     "/spices",          to: "spices#index"
      post    "/spices",          to: "spices#create"
      get     "/spices/:id",      to: "spices#show"
      put     "/spices/:id",      to: "spices#update"
      delete  "/spices/:id",      to: "spices#destroy"
    end

    namespace :v1 do
      get     "/dishes",           to: "dishes#index"
      post    "/dishes",           to: "dishes#create"
      get     "/dishes/:id",       to: "dishes#show"
      put     "/dishes/:id",       to: "dishes#update"
      delete  "/dishes/:id",       to: "dishes#destroy"
    end
  end
end