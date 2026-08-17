from django.db import models
from django.contrib.auth.models import User
from apps.project.models import ProjectType, Manager
from solo.models import SingletonModel

# Create your models here.
class Material(models.Model):
    materal_name = models.CharField(max_length=20, blank=False, verbose_name='نام جنس')
    price_factor = models.IntegerField(blank=False, verbose_name='ضریب قیمت جنس')
    price_reg_date = models.DateTimeField(auto_now_add=True, verbose_name='تاریخ آخرین تغییر')

    def __str__(self):
        return self.materal_name

    class Meta:
        verbose_name = 'جنس مصرفی'
        verbose_name_plural = 'اجناس مصرفی'

class OrderStatus(models.Model):
    status_name = models.CharField(max_length=20, blank=False, verbose_name='عنوان وضعیت')

    def __str__(self):
        return self.status_name

    class Meta:
        verbose_name = 'وضعیت سفارش'
        verbose_name_plural = 'وضعیت های سفارش'

class BasePrice(SingletonModel):
    base_price = models.IntegerField(blank=False, verbose_name='قیمت پایه سفارشات')
    price_reg_date = models.DateTimeField(auto_now_add=True, verbose_name='تاریخ آخرین تغییر')

    def __str__(self):
        return str(self.base_price)

    class Meta:
        verbose_name = 'قیمت پایه سفارشات'
        verbose_name_plural = 'قیمت پایه سفارشات'

class Order(models.Model):
    order_title = models.CharField(max_length=20, blank=False, verbose_name='عنوان سفارش')
    orderer_user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='کاربر سفارش دهنده')
    orderer_name = models.CharField(max_length=20, blank=False, verbose_name='نام مشتری')
    orderer_family = models.CharField(max_length=20, blank=False, verbose_name='نام خانوادگی مشتری')
    orderer_phone = models.CharField(max_length=11, blank=False, verbose_name='شماره تماس مشتری')
    orderer_address = models.CharField(max_length=40, blank=False, verbose_name='آدرس مشتری')
    order_type = models.ForeignKey(ProjectType, on_delete=models.CASCADE, blank=False, verbose_name='نوع سفارش')
    order_metrics = models.IntegerField(blank=False, verbose_name='متراژ')
    order_material = models.ForeignKey(Material, on_delete=models.CASCADE, verbose_name='جنس مصرفی')
    order_unit = models.IntegerField(blank=False, verbose_name='تعداد سفارش')
    order_manager = models.ForeignKey(Manager, on_delete=models.CASCADE, verbose_name='مجری پروژه', blank=True, null=True)
    order_reg_date = models.DateTimeField(auto_now=True, verbose_name='تاریخ ثبت سفارش')
    order_end_date = models.DateField(blank=True, null=True, verbose_name='تاریخ اتمام پروژه')
    order_status = models.ForeignKey(OrderStatus, on_delete=models.CASCADE, blank=True, null=True, verbose_name='وضعیت سفارش')

    def __str__(self):
        return f"{self.orderer_user}-{self.order_title}"

    class Meta:
        verbose_name = 'سفارش'
        verbose_name_plural = 'سفارشات'
    