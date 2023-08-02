from django.shortcuts import render,redirect
from django.contrib.auth import authenticate,login,logout
from django.contrib import messages

# Create your views here.
def home(request):
    return render(request,'home.html')

def user_login(request):
    if request.method=='POST':
        username=request.POST['username']
        password=request.POST['password']
        print('trying to auth')
        user=authenticate(request,username=username,password=password)
        if user is not None:
            login(request,user)
            messages.success(request,'Sucessfully logged in')
            return redirect('loggedin')
        else:
            messages.error(request,"Bad credentials")
            return redirect('user_login') 
    else:
        return render(request,'elogin.html')

def submitgrievence(request):
    return render(request,'submitgrievence.html')

def loggedin(request):
    if request.user.is_authenticated:
        return render(request,'loggedin.html')
    else:
        return redirect('user_login')

def user_logout(request):
    logout(request)
    messages.success(request,'sucessfully logged out')
    return redirect('home')
