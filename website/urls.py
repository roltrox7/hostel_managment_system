from django.urls import path
from . import views
urlpatterns = [
    path('',views.home,name='home'),
    path('home',views.home,name='home'),
    path('login',views.user_login,name='user_login'),
    path('submitgrievence',views.submitgrievence,name='submitgrievence'),
    path('loggedin',views.loggedin,name='loggedin'),
    path('logout',views.user_logout,name='logout')
]
