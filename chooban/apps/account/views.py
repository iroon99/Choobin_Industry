from django.shortcuts import render, redirect
from django.views import View
from .forms import RegisterUserForm, LoginUserForm, ChangePasswordForm
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout, update_session_auth_hash
from django.contrib import messages
from apps.order.models import Order
from django.contrib.auth.mixins import LoginRequiredMixin


# Create your views here.
class RegisterUserView(View):
    def get(self, request):
        form = RegisterUserForm()
        return render(request, "account/register.html", {'form':form})

    def post(self, request):
        form = RegisterUserForm(request.POST)
        if form.is_valid():
            data = form.cleaned_data
            user = User(first_name = data['first_name'],
                        last_name = data['last_name'],
                        username = data['username'])
            user.set_password(data['password1'])
            user.save()
            messages.success(request, 'ثبت نام با موفقیت انجام شد', 'success')
            return redirect("/")
        else:
            messages.error(request, 'اطلاعات وارد شده معتبر نمی باشد', extra_tags='danger')
            return render(request, "account/register.html", {'form':form})


# Create your views here.
class LoginUserView(View):
    def get(self, request):
        form = LoginUserForm()
        return render(request, "account/login.html", {'form':form})

    def post(self, request):
        form = LoginUserForm(request.POST)
        if form.is_valid():
            data = form.cleaned_data
            user = authenticate(username = data['username'], password = data['password'])

            if user is not None:
                messages.success(request, 'ورود با موفقیت انجام شد')
                login(request, user)
                next_url = request.GET.get('next')
                if next_url is not None:
                    return redirect(next_url)
                else:
                    return redirect("/")
                
            else:
                messages.warning(request, 'کاربری با این مشخصات وجود ندارد')
                return render(request, 'account/login.html', {'form':form})
            
        else:
            messages.warning(request, 'اطلاعات وارد شده معتبر نمی باشد')
            return render(request, 'account/login.html', {'form':form})

 
class LogoutUserView(View):
    def get(self, request):
        logout(request)
        messages.success(request, 'شما از حساب خود خارج شدید')
        return redirect("/")


class PanelView(View):
    def get(self, request):
        user_orders = Order.objects.filter(orderer_user=request.user)
        return render(request, "account/panel.html", {'user_orders':user_orders})


class ChangePasswordView(LoginRequiredMixin, View):
    def get(self, request):
        form = ChangePasswordForm()
        return render(request, "account/change_password.html", {'form': form})

    def post(self, request):
        form = ChangePasswordForm(request.POST)
        if form.is_valid():
            user = request.user
            new_password = form.cleaned_data['new_password']
            user.set_password(new_password)
            user.save()
            update_session_auth_hash(request, user)
            messages.success(request, 'رمزعبور با موفقیت تغییر کرد')
            return redirect('/')
        else:
            messages.warning(request, 'اطلاعات وارد شده معتبر نمی باشد')
            return render(request, 'account/change_password.html', {'form': form})