from django.contrib import admin
from .models import Employee,Student,Grievence,Rooms,Hostel,Fees,Department

# Register your models here.
admin.site.register(Employee)
admin.site.register(Rooms)
admin.site.register(Student)
admin.site.register(Grievence)
admin.site.register(Hostel)
admin.site.register(Fees)
admin.site.register(Department)




admin.site.site_header='Hostel Administator',