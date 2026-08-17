from django.shortcuts import render
from django.views import View
from .models import Article, ArticleLike, ArticleGallery
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.db.models import Count


# Create your views here.
class ShowBlogs(View):
    def get(self, request):
        articles = Article.objects.filter(is_active=True).annotate(like_count=Count('articlelike'))
        article_gallery = ArticleGallery.objects.all()
        return render(request, "blog/show_article.html", {'articles':articles, 'article_gallery':article_gallery})


class ShowBlogDetail(View):
    def get(self, request, id):
        article = Article.objects.get(id=id)
        keywords = article.keywords.all()
        if request.user.is_authenticated:
            article_like_list = ArticleLike.objects.filter(user_liked_id=request.user.id).values('article_id')
            article_like_list_id = [article['article_id'] for article in article_like_list]
            context = {'article' : article, 'keywords':keywords, 'article_like':article_like_list_id}
            return render(request, "blog/show_article_detail.html", context)
        context = {'article' : article, 'keywords':keywords, 'article_like':[]}
        return render(request, "blog/show_article_detail.html", context)


@login_required
def like(request):
    if request.method == 'GET':
        article_id = request.GET.get('article_id')
        article = Article.objects.get(id=article_id)
        likearticle = ArticleLike.objects.filter(article_id=article.id, user_liked=request.user)
        if not likearticle:
            likearticle = ArticleLike(article=article)
            likearticle.user_liked = request.user
            likearticle.save()
        return HttpResponse("success")
    return HttpResponse("Unsuccess")

@login_required
def dislike(request):
    if request.method == 'GET':
        article_id = request.GET.get('article_id')
        likearticle = ArticleLike.objects.filter(article_id=article_id, user_liked=request.user)
        if likearticle:
            likearticle.delete()
        return HttpResponse("success")
    return HttpResponse("Unsuccess")