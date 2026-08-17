from django.db import models

# Create your models here.
class Manager(models.Model):
    manager_name = models.CharField(max_length=20, blank=False, verbose_name='نام')
    manager_family = models.CharField(max_length=20, blank=False, verbose_name='نام خانوادگی')
    manager_degree = models.CharField(max_length=10, blank=False, verbose_name='عنوان فنی یا تحصیلی')
    manager_email = models.EmailField(verbose_name='ایمیل')
    manager_phone = models.CharField(max_length=11, blank=False, verbose_name='شماره تلفن')
    manager_slug = models.SlugField(blank=False, null=False, verbose_name='شناسه')

    def __str__(self):
        return f"{self.manager_degree} {self.manager_name} {self.manager_family}"

    class Meta:
        verbose_name = 'مدیر پروژه'
        verbose_name_plural = 'مدیران پروژه'

class ProjectType(models.Model):
    project_type = models.CharField(max_length=15, verbose_name='نوع پروژه')
    project_price_factor = models.IntegerField(blank=False, verbose_name='ضریب قیمت', default=1)

    def __str__(self):
        return self.project_type

    class Meta:
        verbose_name = 'نوع پروژه'
        verbose_name_plural = 'انواع پروژه'

class Project(models.Model):
    project_title = models.CharField(max_length=60, blank=False, verbose_name='عنوان پروژه')
    project_type = models.ForeignKey(ProjectType, on_delete=models.CASCADE, verbose_name='نوع پروژه')
    project_manager = models.ForeignKey(Manager, on_delete=models.CASCADE, verbose_name='مدیر پروژه')
    project_detail = models.TextField(blank=False, verbose_name='توضیحات پروژه')
    project_price = models.CharField(max_length=15, blank=False, verbose_name="قیمت تمام شده")
    project_start_date = models.DateField(blank=False, verbose_name="تاریخ شروع پروژه")
    project_end_date = models.DateField(blank=False, verbose_name="تاریخ پایان پروژه")
    project_picture = models.ImageField(blank=False, verbose_name='تصویر اصلی پروژه')
    is_active = models.BooleanField(default=False, verbose_name='وضعیت نمایش')

    def __str__(self):
        return self.project_title

    class Meta:
        verbose_name = 'پروژه'
        verbose_name_plural = 'پروژه ها'
    