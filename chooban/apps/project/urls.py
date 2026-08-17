from django.urls import path
from .views import ShowCbProjects, ShowSofaProjects, ShowWrProjects

urlpatterns = [
    path('cabinet/', ShowCbProjects.as_view()),
    path('sofa/', ShowSofaProjects.as_view()),
    path('wardrobe/', ShowWrProjects.as_view())
]