# Generated by Django 4.2.3 on 2023-08-03 16:21

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AuthGroup',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150, unique=True)),
            ],
            options={
                'db_table': 'auth_group',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthGroupPermissions',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'auth_group_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthPermission',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('codename', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'auth_permission',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUser',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128)),
                ('last_login', models.DateTimeField(blank=True, null=True)),
                ('is_superuser', models.IntegerField()),
                ('username', models.CharField(max_length=150, unique=True)),
                ('first_name', models.CharField(max_length=150)),
                ('last_name', models.CharField(max_length=150)),
                ('email', models.CharField(max_length=254)),
                ('is_staff', models.IntegerField()),
                ('is_active', models.IntegerField()),
                ('date_joined', models.DateTimeField()),
            ],
            options={
                'db_table': 'auth_user',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserGroups',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'auth_user_groups',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserUserPermissions',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'auth_user_user_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Department',
            fields=[
                ('dno', models.CharField(max_length=5, primary_key=True, serialize=False)),
                ('dname', models.CharField(max_length=15)),
                ('dloc', models.CharField(blank=True, max_length=15, null=True)),
            ],
            options={
                'db_table': 'department',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoAdminLog',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('action_time', models.DateTimeField()),
                ('object_id', models.TextField(blank=True, null=True)),
                ('object_repr', models.CharField(max_length=200)),
                ('action_flag', models.PositiveSmallIntegerField()),
                ('change_message', models.TextField()),
            ],
            options={
                'db_table': 'django_admin_log',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoContentType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('app_label', models.CharField(max_length=100)),
                ('model', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'django_content_type',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoMigrations',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('app', models.CharField(max_length=255)),
                ('name', models.CharField(max_length=255)),
                ('applied', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_migrations',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoSession',
            fields=[
                ('session_key', models.CharField(max_length=40, primary_key=True, serialize=False)),
                ('session_data', models.TextField()),
                ('expire_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_session',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Employee',
            fields=[
                ('essn', models.CharField(max_length=5, primary_key=True, serialize=False)),
                ('ename', models.CharField(max_length=25)),
                ('gender', models.CharField(blank=True, max_length=1, null=True)),
                ('age', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'employee',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Fees',
            fields=[
                ('tid', models.CharField(max_length=5, primary_key=True, serialize=False)),
                ('status', models.CharField(blank=True, max_length=10, null=True)),
                ('tdate', models.DateField(blank=True, null=True)),
                ('mode', models.CharField(blank=True, max_length=10, null=True)),
            ],
            options={
                'db_table': 'fees',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Hostel',
            fields=[
                ('hid', models.CharField(max_length=5, primary_key=True, serialize=False)),
                ('hname', models.CharField(blank=True, max_length=15, null=True)),
                ('hloc', models.CharField(blank=True, max_length=15, null=True)),
                ('nrooms', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'hostel',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Login',
            fields=[
                ('username', models.CharField(max_length=25, primary_key=True, serialize=False)),
                ('password', models.CharField(blank=True, max_length=25, null=True)),
            ],
            options={
                'db_table': 'login',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Rooms',
            fields=[
                ('roomid', models.CharField(max_length=5, primary_key=True, serialize=False)),
                ('tableid', models.CharField(blank=True, max_length=5, null=True, unique=True)),
                ('chairid', models.CharField(blank=True, max_length=5, null=True, unique=True)),
            ],
            options={
                'db_table': 'rooms',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('usn', models.CharField(max_length=10, primary_key=True, serialize=False)),
                ('sname', models.CharField(max_length=25)),
                ('age', models.IntegerField(blank=True, null=True)),
                ('gender', models.CharField(blank=True, max_length=1, null=True)),
            ],
            options={
                'db_table': 'student',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Grievence',
            fields=[
                ('gid', models.AutoField(primary_key=True, serialize=False)),
                ('gdate', models.DateField(blank=True, null=True)),
                ('desp', models.CharField(blank=True, max_length=100, null=True)),
                ('status', models.CharField(blank=True, max_length=10, null=True)),
                ('location', models.CharField(blank=True, max_length=15, null=True)),
                ('dno', models.ForeignKey(blank=True, db_column='dno', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='website.department')),
                ('usn', models.ForeignKey(blank=True, db_column='usn', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='website.student')),
            ],
            options={
                'db_table': 'grievence',
                'managed': True,
            },
        ),
    ]
