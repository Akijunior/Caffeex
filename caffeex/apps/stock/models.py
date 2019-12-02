from django.db import models


# Create your models here.

class CoffeeType(models.Model):
    type = models.CharField(max_length=50)


class Stock(models.Model):
    stock_name = models.CharField(max_length=100)
    coffee_types = models.ManyToManyField('CoffeeType')
    farm_origin = models.CharField(max_length=100)
    bags_available = models.IntegerField()
    stock_capacity = models.IntegerField()


class CoffeeCrops(models.Model):
    coffee_type = models.CharField(max_length=100)
    origin = models.CharField(max_length=100)
    shelf_life = models.DateField()
    quantity_bags = models.IntegerField()  # cada saca = 60 kg
