# Generated by Django 4.2.1 on 2023-06-06 10:02

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mascotarApp', '0003_alter_producto_id_customuser'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='producto',
            options={'verbose_name': 'Productos para mascotas', 'verbose_name_plural': 'Productos'},
        ),
    ]
