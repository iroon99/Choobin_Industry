from django.shortcuts import render
from apps.project.models import Project
from apps.blog.models import Article
from django.db.models import Q

# Create your views here.
def search(request):
    if request.method == 'GET':
        query = request.GET.get("q")
        projects = Project.objects.filter(
            Q(project_title__icontains=query), is_active=True
        )
        articles = Article.objects.filter(
            Q(article_title__icontains=query)
        )
        context = {
            'projects':projects,
            'articles':articles
        }
        return render(request, 'search/show.html', context)