from django.urls import path
from .views import RegisterUserView, LoginUserView, LogoutUserView, PanelView, ChangePasswordView

urlpatterns = [
    path('register/', RegisterUserView.as_view()),
    path('login/', LoginUserView.as_view()),
    path('logout/', LogoutUserView.as_view()),
    path('panel/', PanelView.as_view()),
    path('change-password/', ChangePasswordView.as_view())
]