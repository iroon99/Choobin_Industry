from django.db import models
from solo.models import SingletonModel

# Create your models here.
class SliderImage(models.Model):
    image_file = models.ImageField(upload_to='images/main/slider/', blank=False, verbose_name='فایل تصویر')
    image_title = models.CharField(max_length=100, blank=False, verbose_name='عنوان تصویر')
    image_description = models.CharField(max_length=100, blank=False, verbose_name='توضیحات تصویر')
    is_active = models.BooleanField(default=False, verbose_name='وضعیت')

    class Meta:
        verbose_name = 'تصویر اسلایدر'
        verbose_name_plural = 'تصاویر اسلایدر'

    def __str__(self):
        return self.image_title

class CompanyInfo(SingletonModel):
    company_name = models.CharField(max_length=50, blank=False, verbose_name='نام اختصاری شرکت')
    company_full_name = models.CharField(max_length=50, blank=False, verbose_name='نام کامل شرکت')
    company_slogan = models.CharField(max_length=100, blank=False, verbose_name='شعار شرکت')
    company_description = models.TextField(blank=False, verbose_name='توضیحات شرکت')
    company_logo = models.ImageField(upload_to='images/main/company/', blank=False, verbose_name='لوگو شرکت')
    company_address = models.CharField(max_length=100, blank=False, verbose_name='آدرس شرکت')
    company_email = models.EmailField(max_length=100, blank=False, verbose_name='ایمیل شرکت')
    company_phone = models.CharField(max_length=20, blank=False, verbose_name='شماره تماس شرکت')

    class Meta:
        verbose_name = 'اطلاعات شرکت'
        verbose_name_plural = 'اطلاعات شرکت'

    def __str__(self):
        return self.company_name
    
class UserMessage(models.Model):
    user_name = models.CharField(max_length=50, blank=False, verbose_name='نام کاربر')
    user_family = models.CharField(max_length=50, blank=False, verbose_name='نام خانوادگی کاربر')
    user_email = models.EmailField(max_length=100, blank=False, verbose_name='ایمیل کاربر')
    message_title = models.CharField(max_length=100, blank=False, verbose_name='موضوع پیام')
    message_text = models.TextField(blank=False, verbose_name='متن پیام')
    registered_at = models.DateTimeField(auto_now_add=True, verbose_name='تاریخ ثبت پیام')
    is_seen = models.BooleanField(default=False, null=False, verbose_name='وضعیت بررسی پیام')

    class Meta:
        verbose_name = 'پیام کاربر'
        verbose_name_plural = 'پیام های کاربران'

    def __str__(self):
        return f"{self.email} - {self.message_title}"

class Advertisement(models.Model):
    advertisement_title = models.CharField(max_length=50, blank=False, verbose_name='عنوان تبلیغ')
    advertisement_description = models.TextField(verbose_name='متن تبلیغ')
    advertisement_picture = models.ImageField(upload_to='images/main/advertisement/', blank=False, verbose_name='تصویر تبلیغ')
    is_active =  models.BooleanField(default=False, verbose_name='وضعیت فعال بودن')

    class Meta:
        verbose_name = 'تبلیغ'
        verbose_name_plural = 'تبلیغات'

    def __str__(self):
        return self.advertisement_title