from django.contrib import admin
from .models import Manager, Project, ProjectType

# Register your models here.
@admin.register(ProjectType)
class ProjectTypeAdmin(admin.ModelAdmin):
    list_display = [
        'project_type'
    ]


@admin.register(Manager)
class ManagerAdmin(admin.ModelAdmin):
    list_display = [
        'manager_name',
        'manager_family',
        'manager_degree',
        'manager_email',
        'manager_phone',
        'manager_slug'
    ]

    prepopulated_fields = {'manager_slug':('manager_name', 'manager_family')}


@admin.register(Project)
class ProjectAdmin(admin.ModelAdmin):
    list_display = [
        'project_title',
        'project_type',
        'project_manager',
        'project_detail',
        'project_price',
        'project_start_date',
        'project_end_date',
        'project_picture',
        'is_active'
    ]

