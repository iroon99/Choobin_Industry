from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Author(models.Model):
    name = models.CharField(max_length=20, blank=False, null=False, verbose_name='نام نویسنده')
    family = models.CharField(max_length=20, blank=False, null=False, verbose_name='نام خانوادگی')
    phone_number = models.CharField(max_length=11, verbose_name='شماره تلفن')
    email = models.EmailField(blank=False, null=False, verbose_name='ایمیل')
    slug = models.SlugField(blank=False, null=False, verbose_name='شناسه')
    registered_at = models.DateTimeField(auto_now_add=True, verbose_name='تاریخ ثبت')
    modified_at = models.DateTimeField(auto_now=True, verbose_name='تاریخ تغییر')

    def __str__(self):
        return self.name + ' ' + self.family

    class Meta:
        verbose_name = 'نویسنده'
        verbose_name_plural = 'نویسندگان'

class ArticleGroup(models.Model):
    group_name = models.CharField(max_length=20, blank=False, null=False, verbose_name='نام گروه')

    def __str__(self):
        return self.group_name

    class Meta:
        verbose_name = 'گروه مقاله'
        verbose_name_plural = 'گروه های مقاله'

class Keyword(models.Model):
    keyword_name = models.CharField(max_length=20, blank=False, null=False, verbose_name='کلیدواژه')

    def __str__(self):
        return self.keyword_name

    class Meta:
        verbose_name = 'کلیدواژه'
        verbose_name_plural = 'کلیدواژه ها'

class Article(models.Model):
    author = models.ForeignKey(Author, blank=False, null=False, on_delete=models.CASCADE, verbose_name='نویسنده')
    group = models.ForeignKey(ArticleGroup, blank=True, on_delete=models.CASCADE, verbose_name='گروه مقاله')
    article_title = models.CharField(max_length=80, null=False, blank=False, verbose_name='عنوان مقاله')
    article_main_picture = models.FileField(upload_to='attachments/articles', verbose_name='تصویر اصلی')
    article_abstract = models.TextField(verbose_name='خلاصه مقاله')
    article_text = models.TextField(verbose_name='متن مقاله')
    keywords = models.ManyToManyField(Keyword, blank=True, verbose_name='کلیدواژه ها')
    registered_at = models.DateTimeField(auto_now_add=True, verbose_name='تاریخ ثبت')
    modified_at = models.DateTimeField(auto_now=True, verbose_name='تاریخ ویرایش')
    published_at = models.DateTimeField(blank=True, null=True, verbose_name='تاریخ انتشار')
    is_active = models.BooleanField(default=True, verbose_name='وضعیت فعالی')
    slug = models.SlugField(blank=False, null=False, default="defult", verbose_name='شناسه')
    views = models.IntegerField(verbose_name='تعداد لایک ها')
    main_file = models.FileField(upload_to='attachments/articles/files', default="", verbose_name='فایل مقاله')
    
    def __str__(self):
        return self.article_title

    class Meta:
        verbose_name = 'مقاله'
        verbose_name_plural = 'مقالات'

def upload_gallery_image(instance, filename):
    return f"article/{instance.article.article_title}/{filename}"

class ArticleGallery(models.Model):
    article = models.ForeignKey(Article, blank=False, null=False, on_delete=models.CASCADE, related_name='images')
    article_picture = models.FileField(upload_to=upload_gallery_image)

    class Meta:
        verbose_name = 'گالری مقاله'
        verbose_name_plural = 'گالری مقاله'

class ArticleLike(models.Model):
    user_liked = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    article = models.ForeignKey(Article, on_delete=models.CASCADE, null=True)
