Rails.application.routes.draw do
  

  get 'hitperson/new'
  post 'hitperson/new'
  get 'hitperson/edit'
  post 'hitperson/edit'
  get 'hitperson/create'
  post 'hitperson/create'
  get 'hitperson/show'
  post 'hitperson/show'
   get 'hitperson/delete'
  post 'hitperson/delete'
  get 'hitperson/show_all'
  post 'hitperson/show_all'
  get 'hitperson/savetable'
  post 'hitperson/savetable'



  get 'hithousehold/new'
  post 'hithousehold/new'
  get 'hithousehold/edit'
  post 'hithousehold/edit'
  get 'hithousehold/savetable'
  post 'hithousehold/savetable'
  get 'hithousehold/create'
  post 'hithousehold/create'
  get 'hithousehold/show'
  post 'hithousehold/show'
  get 'hithousehold/delete'
  post 'hithousehold/delete'
  get 'hithousehold/show_all'
  post 'hithousehold/show_all'

  get 'sender/new'
  get 'sender/edit'
  post 'sender/edit'
  get 'sender/delete'
  post 'sender/delete'
  get 'sender/show'
  post 'sender/show'
  get 'sender/create'
  post 'sender/create'
  get 'sender/savetable'
  post 'sender/savetable'

  get 'impact/create'
  post 'impact/create'
  get 'impact/show'
  get 'impact/new'

  get 'route/new'
  get 'route/show'
  get 'route/show_user'
  get 'route/delete'
  get 'route/edit'
  post 'route/edit'
  get 'route/edit_user'
  post 'route/edit_user'
  get 'route/index'
  post 'route/index'
  get 'route/create'
  post 'route/create'
  get 'route/savetable'
  post 'route/savetable'
  get 'route/check_mail'
  post 'route/check_mail'
  get 'route/update'
  post 'route/update'

  get 'bestpath/new'
  get 'bestpath/avnewbr'
  get 'bestpath/assess'
  post 'bestpath/assess'
  get 'bestpath/assess2'
  post 'bestpath/assess2'
  get 'bestpath/show'
  post 'bestpath/show'
  get 'bestpath/pass'
  post 'bestpath/pass'
  get 'bestpath/avshowbr'
  post 'bestpath/avshowbr'

  get 'sms/new'
  get 'sms/edit'
  get 'sms/show'
  get 'sms/alert'
  post 'sms/alert'

  get 'need/new'
  get 'need/create'
  post 'need/create'
  get 'need/show'
  post 'need/show'
  get 'need/edit'
  post 'need/edit'
  get 'need/delete'
  post 'need/delete'
  get 'need/savetable'
  post 'need/savetable'

  get 'hit/new'
  post 'hit/new'
  get 'hit/create'
  post 'hit/create'
  get 'hit/show'
  post 'hit/show'
  get 'hit/edit'
  post 'hit/edit'
  get 'hit/delete'
  post 'hit/delete'
  get 'hit/savetable'
  post 'hit/savetable'
  get 'hit/index'
  post 'hit/index'
  get 'hit/search'
  post 'hit/search'
  get 'hit/report'
  post 'hit/report'
  get 'hit/reportview'
  post 'hit/reportview'
  get 'hit/show_only'
  post 'hit/show_only'
  get 'hit/show_user_view'
  post 'hit/show_user_view'
   get 'hit/support'
  post 'hit/support'
   get 'hit/show_all'
  post 'hit/show_all'
  
  


  get 'disaster/new'
  post 'disaster/new'
  get 'disaster/create'
  post 'disaster/create'
  get 'disaster/show'
  post 'disaster/show'
  get 'disaster/edit'
  post 'disaster/edit'
  get 'disaster/delete'
  post 'disaster/delete'
  get 'disaster/savetable'
  post 'disaster/savetable'
  get 'disaster/index'
  post 'disaster/index'
  get 'disaster/disaster_report'
  post 'disaster/disaster_report'
  get 'disaster/user_view'
  post 'disaster/user_view'
  get 'disaster/reportview'
  post 'disaster/reportview'
  

 get 'hazard/new'
  get 'hazard/create'
  post 'hazard/create'
  get 'hazard/show'
  post 'hazard/show'
  get 'hazard/edit'
  post 'hazard/edit'
  get 'hazard/delete'
  post 'hazard/delete'
  get 'hazard/savetable'
  post 'hazard/savetable'

 get 'personcondition/new'
  get 'personcondition/create'
  post 'personcondition/create'
  get 'personcondition/show'
  post 'personcondition/show'
  get 'personcondition/edit'
  post 'personcondition/edit'
  get 'personcondition/delete'
  post 'personcondition/delete'
  get 'personcondition/savetable'
  post 'personcondition/savetable'

  get 'household/new'
  post 'household/new'
  get 'household/create'
  post 'household/create'
  get 'household/show'
  post 'household/show'
  get 'household/edit'
  post 'household/edit'
  get 'household/delete'
  post 'household/delete'
  get 'household/savetable'
  post 'household/savetable'
  get 'household/index'
  post 'household/index'
  get 'household/search'
  post 'household/search'
  get 'household/searchhh'
  post 'household/searchhh'

  get 'agency/new'
  get 'agency/create'
  post 'agency/create'
  get 'agency/show'
  post 'agency/show'
  get 'agency/edit'
  post 'agency/edit'
  get 'agency/delete'
  post 'agency/delete'
  get 'agency/savetable'
  post 'agency/savetable'


  get 'zone/new'
  post 'zone/new'
  get 'zone/create'
  post 'zone/create'
  get 'zone/show'
  post 'zone/show'
  get 'zone/show_user'
  post 'zone/show_user'
  get 'zone/edit'
  post 'zone/edit'
  get 'zone/delete'
  post 'zone/delete'
   get 'zone/savetable'
  post 'zone/savetable'
  get 'zone/index'
  post 'zone/index'
  get 'zone/search'
  post 'zone/search'
  get 'zone/showdetails'
  post 'zone/showdetails'
  
  


  get 'users/show'
  post 'users/show'
  get 'users/delete'
  post 'users/delete'
  get 'users/showdetails'
  post 'users/showdetails'
  
  get 'people/add'
  get 'people/edit'
  post 'people/edit'
  get 'people/delete'
  post 'people/delete'
  get 'people/new'
  post 'people/new'
  get 'people/create'
  post 'people/create'
  get 'people/show'
  post 'people/show'
  get 'people/showdetails'
  post 'people/showdetails'
  get 'people/viewlist'
  post 'people/viewlist'
  get 'people/savetable'
  post 'people/savetable'
  get 'people/index'
  post 'people/index'
  get 'people/search'
  post 'people/search'
  get 'people/searchp'
  post 'people/searchp'
  get 'people/show_affected_people'
  post 'people/show_affected_people'
  

  get 'barangay/edit'
  post 'barangay/edit'
  get 'barangay/show'
  post 'barangay/show'
  get 'barangay/delete'
  post 'barangay/delete'
  get 'barangay/create'
  get 'barangay/savetable'
  post 'barangay/savetable'
  get 'barangay/new'
  post 'barangay/new'
  get 'barangay/showdetails'
  post 'barangay/showdetails'
  post 'barangay/create'
  get 'barangay/viewlist'
  post 'barangay/viewlist'
  get 'barangay/index'
  post 'barangay/index'
  get 'barangay/search'
  post 'barangay/search'
  get 'barangay/updateRec'
  post 'barangay/updateRec'
  get 'barangay/user_view'

  


  get 'municipal/new'
  get 'municipal/edit'
  post 'municipal/edit'
  get 'municipal/delete'
  post 'municipal/delete'
  get 'municipal/show'
  post 'municipal/show'
  get 'municipal/create'
  get 'municipal/user_view'
  post 'municipal/create'
  post 'municipal/viewbarangays'
  get 'municipal/savetable'
  post 'municipal/savetable'
  get 'municipal/name'
  post 'municipal/name'
  get 'municipal/showdetails'
  post 'municipal/showdetails'



  root to: 'home#index'

  get 'pages/about'
  get 'pages/bestroute'
  get 'pages/biggmap'
  get 'pages/map'
  get 'pages/viewroutes'
  get 'pages/contact'
  get 'pages/hazard'
  get 'pages/passcode'
  get 'pages/new'
  get 'pages/authenticate'
  get 'pages/barangayform'
  get 'admin/controlpanel'
  post 'admin/controlpanel'
  post 'pages/authenticate'
  get 'pages/show'
  post 'pages/show'
  get 'pages/delete'
  post 'pages/delete'
  get 'pages/user_control'
  post 'pages/user_control'

  get 'admin' => 'admin#controlpanel', :as => :admin
  get 'admin/header'
  #resource :admin, only: [:create, :new, :show]

  devise_for :users

  resources :pages do
  put :create, :on => :collection
end

#get 'users/:id' => 'users#show'


end
