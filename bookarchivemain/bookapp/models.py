from django.db import models
from ckeditor.fields import RichTextField
from django.contrib.auth import get_user_model


class Categories(models.Model):
    id = models.BigAutoField(primary_key=True)
    category = models.CharField(max_length=25)

    class Meta():
        verbose_name = "Категория"
        verbose_name_plural = "Категории"

    def __str__(self):
        return self.category


class News(models.Model):
    id = models.BigAutoField(primary_key=True)
    news_name = models.CharField(max_length=50)
    news_time = models.DateField()
    news_contains = models.CharField(max_length=365)
    news_image = models.ImageField(blank=True, null=True)

    class Meta():
        verbose_name = "Новость"
        verbose_name_plural = "Новости"

    def __str__(self):
        return self.news_name


class Genres(models.Model):
    id = models.BigAutoField(primary_key=True)
    genre_name = models.TextField()

    class Meta():
        verbose_name = "Жанр"
        verbose_name_plural = "Жанры"

    def __str__(self):
        return self.genre_name


class Books(models.Model):
    id = models.BigAutoField(primary_key=True)
    book_name = models.CharField(max_length=50)
    book_img = models.ImageField(blank=True, null=True)
    book_description = models.CharField(max_length=255)
    books_time = models.DateField()
    book_status = models.TextField(blank=True)
    genres = models.ManyToManyField(Genres, related_name='books')
    author = models.ForeignKey(get_user_model(), on_delete=models.CASCADE, blank=True, null=True)

    class Meta():
        verbose_name = "Книга"
        verbose_name_plural = "Книги"

    def __str__(self):
        return self.book_name


class Parts(models.Model):
    id = models.BigAutoField(primary_key=True)
    part_name = models.TextField()
    part_content = RichTextField(blank=True, null=True)
    book = models.ForeignKey(Books, related_name='parts', on_delete=models.CASCADE, null=True)

    class Meta():
        verbose_name = "Глава"
        verbose_name_plural = "Главы"

    def __str__(self):
        return self.part_name
