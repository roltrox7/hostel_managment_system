from django.urls import path
from . import views



urlpatterns = [
    path('',views.home,name='home'),
    path('home',views.home,name='home'),
    path('login',views.user_login,name='user_login'),
    path('submitgrievence',views.submitgrievence,name='submitgrievence'),
    path('loggedin',views.loggedin,name='loggedin'),
    path('logout',views.user_logout,name='logout'),
    path('roomdetails',views.roomdetails,name='roomdetails'),
    path('hosteldetails',views.hosteldetails,name='hosteldetails'),
    path('showgrievences',views.showgrievences,name='showgrievences'),
    path('payfees',views.payfees,name='payfees'),
    path('feedetails',views.feedetails,name='feedetails'),

    
]
