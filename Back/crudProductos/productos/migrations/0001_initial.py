# Generated by Django 4.2.1 on 2023-05-18 13:25

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='productos',
            fields=[
                ('codigo', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=30)),
                ('precio', models.IntegerField()),
                ('descripcion', models.CharField(max_length=60)),
                ('linkImagen', models.CharField(max_length=100)),
            ],
        ),
    ]
