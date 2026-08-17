from django.urls import path
from .views import ShowBlogs, ShowBlogDetail, like, dislike

urlpatterns = [
    path('', ShowBlogs.as_view()),
    path('like/', like),
    path('dislike/', dislike),
    path('detail/<int:id>/', ShowBlogDetail.as_view()),
]