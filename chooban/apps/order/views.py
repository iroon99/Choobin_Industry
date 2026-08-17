from django.shortcuts import render, redirect
from django.contrib import messages
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from django.views import View
from .forms import OrderForm
from .models import Order

# Create your views here.
@method_decorator(login_required, name='dispatch')
class AddOrder(View):
    def get(self, request):
        order_form = OrderForm()
        context = {
            'order_form':order_form,
        }
        return render(request, 'order/add.html', context)
    
    def post(self, request):
        order_form = OrderForm(request.POST)

        if order_form.is_valid():
            order_form_data = order_form.cleaned_data

            order_obj = Order.objects.create(
                order_title = order_form_data['order_title'],
                orderer_user = request.user,
                orderer_name = order_form_data['orderer_name'],
                orderer_family = order_form_data['orderer_family'],
                orderer_phone = order_form_data['orderer_phone'],
                orderer_address = order_form_data['orderer_address'],
                order_type = order_form_data['order_type'],
                order_metrics = order_form_data['order_metrics'],
                order_material = order_form_data['order_material'],
                order_unit = order_form_data['order_unit']
            )

            messages.success(request, 'درج سفارش با موفقیت انجام شد', 'success')
            return redirect("/")
    
        else:
            messages.error(request, 'اطلاعات درج شده معتبر نمی باشد', 'error')
            context = {
                'order_form':order_form,
            }
            return render(request, 'order/add.html', context)

