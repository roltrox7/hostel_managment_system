from django.shortcuts import render,redirect,get_object_or_404
from django.contrib.auth import authenticate,login,logout
from website.models import Rooms,Student,Fees,Hostel,Department,Grievence
from django.contrib import messages
from datetime import date

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


def loggedin(request):
    if request.user.is_authenticated:
        return render(request,'loggedin.html')
    else:
        return redirect('user_login')

def user_logout(request):
    logout(request)
    messages.success(request,'sucessfully logged out')
    return redirect('home')
    

def roomdetails(request):
    if request.user.is_authenticated:
        if request.method == "POST":
            try:
                room_id = request.POST['roomid']
                room = Rooms.objects.get(roomid=room_id)
                students = Student.objects.filter(roomid=room)
                print(students)
                context = {
                    'room_id': room_id,
                    'students': students,
                    'hostel_name':room.hid.hname
                }
                if not students.exists():
                    messages.error(request, "No student in room")
                    return redirect('roomdetails')

                return render(request, 'data_table/roomdata.html', context)
            except Rooms.DoesNotExist:
                messages.error(request, "No rooms with the following roomid.")
                return redirect('roomdetails')
                
        
        # Handle the HTTP GET request by returning an empty page or a form
        # Replace 'form_template.html' with the appropriate template for the form
        return render(request, 'req_forms/rooms.html')
        
    else:
        return redirect('login')
    

def hosteldetails(request):
    if request.user.is_authenticated:
        if request.method=="POST":
            try:
                hostel_id=request.POST['hid']
                hostel = Hostel.objects.get(hid=hostel_id)
                students = Student.objects.filter(roomid__hid=hostel_id)

                context = {
                    'hid': hostel_id,
                    'students': students,
                    'hname': hostel.hname
                }

                if not students.exists():
                    messages.error(request, "No students in the hostel.")
                    return redirect('hosteldetails')

                return render(request, 'data_table/hosteldata.html', context)

            except Hostel.DoesNotExist:
                messages.error(request, "No hostel with the following ID.")
                return redirect('hosteldetails')
            
        return render(request, 'req_forms/hostel.html')

    else:
        return redirect('login')


def submitgrievence(request):
        if request.method == "POST":
            try:
                usn = request.POST['usn']
                location = request.POST['location']
                description = request.POST['grievance']

                # Assuming you have a way to get the corresponding Student object
                student = Student.objects.get(usn=usn)
                

                grievance = Grievence.objects.create(
                    usn=student,
                    gdate=date.today(),
                    location=location,
                    desp=description,
                    status='Pending'  # You can set the initial status here if needed
                )

                # Optionally, you can print the created grievance ID
                print("Grievance ID:", grievance.gid)

                messages.success(request, "Grievance submitted successfully.")
                return redirect('submitgrievence')

            except Student.DoesNotExist:
                messages.error(request, "Invalid USN. Student not found.")
                return redirect('submitgrievence')
            
        return render(request, 'req_forms/submitgrievence.html')
