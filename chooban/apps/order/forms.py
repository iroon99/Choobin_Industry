from django import forms
from .models import Order, ProjectType, Material

class OrderForm(forms.ModelForm):
    order_title = forms.CharField(
        label='عنوان سفارش',
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'عنوان مرتبط با سفارش'})
    )

    orderer_name = forms.CharField(
        label='نام مشتری',
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'نام'})
    )

    orderer_family = forms.CharField(
        label='نام خانوادگی مشتری',
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'نام خانوادگی'})
    )

    orderer_phone = forms.CharField(
        label='شماره تماس مشتری',
        max_length=11,
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'شماره تماس'})
    )

    orderer_address = forms.CharField(
        label='آدرس مشتری',
        max_length=40,
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'آدرس کامل مشتری'})
    )

    order_type = forms.ModelChoiceField(
        label='نوع سفارش',
        queryset=ProjectType.objects.all(),
        widget=forms.Select(attrs={'class': 'form-control'})
    )

    order_metrics = forms.IntegerField(
        label='متراژ',
        widget=forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'متراژ به متر مربع'})
    )

    order_material = forms.ModelChoiceField(
        label='جنس مصرفی',
        queryset=Material.objects.all(),
        widget=forms.Select(attrs={'class': 'form-control'})
    )

    order_unit = forms.IntegerField(
        label='تعداد سفارش',
        widget=forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'تعداد واحدها'})
    )

    class Meta:
        model = Order
        fields = [
            'order_title',
            'orderer_name',
            'orderer_family',
            'orderer_phone',
            'orderer_address',
            'order_type',
            'order_metrics',
            'order_material',
            'order_unit'
        ]