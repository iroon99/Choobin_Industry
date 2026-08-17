from django.contrib import admin
from .models import Order, OrderStatus, Material, BasePrice

# Register your models here.
@admin.register(BasePrice)
class BasePriceAdmin(admin.ModelAdmin):
    list_display = [
        'base_price',
        'price_reg_date'
    ]

@admin.register(Material)
class MaterialAdmin(admin.ModelAdmin):
    list_display = [
        'materal_name',
        'price_factor',
        'price_reg_date'
    ]

@admin.register(OrderStatus)
class OrderStatusAdmin(admin.ModelAdmin):
    list_display = [
        'status_name'
    ]

@admin.register(Order)
class OrderAdmin(admin.ModelAdmin):
    list_display = [
        'order_title',
        'orderer_user',
        'orderer_phone',
        'order_type',
        'order_manager',
        'order_reg_date',
        'order_end_date',
        'order_status'
    ]