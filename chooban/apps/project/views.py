from django.shortcuts import render
from django.views.generic import ListView
from .models import Project

# Create your views here.
class ShowCbProjects(ListView):
    model = Project
    template_name = 'project/cabinets.html'
    context_object_name = 'projects'
    paginate_by = 1
    queryset = Project.objects.filter(is_active=True, project_type__project_type='کابینت')


class ShowSofaProjects(ListView):
    model = Project
    template_name = 'project/sofa.html'
    context_object_name = 'projects'
    paginate_by = 1
    queryset = Project.objects.filter(is_active=True, project_type__project_type='مبلمان')


class ShowWrProjects(ListView):
    model = Project
    template_name = 'project/wardrobe.html'
    context_object_name = 'projects'
    paginate_by = 1
    queryset = Project.objects.filter(is_active=True, project_type__project_type='کمد دیواری')