# Generated by Django 4.2.1 on 2023-05-28 17:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Cola',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('cola', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Compra',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('fecha', models.DateField()),
                ('monto', models.DecimalField(decimal_places=2, max_digits=10)),
            ],
        ),
        migrations.CreateModel(
            name='Departamento',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='DetalleCompra',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('cantidad', models.PositiveIntegerField()),
                ('precio', models.DecimalField(decimal_places=2, max_digits=10)),
                ('idCompra', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.compra')),
            ],
        ),
        migrations.CreateModel(
            name='DetalleOrden',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('cantidad', models.PositiveIntegerField()),
                ('precio', models.DecimalField(decimal_places=2, max_digits=10)),
            ],
        ),
        migrations.CreateModel(
            name='Edad',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('edad', models.PositiveIntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Especie',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('especie', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Estado',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('estado', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Orejas',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('orejas', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=100)),
                ('precio', models.DecimalField(decimal_places=2, max_digits=8)),
                ('descripcion', models.TextField()),
                ('imagen', models.URLField()),
            ],
        ),
        migrations.CreateModel(
            name='Proveedor',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254)),
                ('telefono', models.CharField(max_length=20)),
                ('direccion', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='Provincia',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Raza',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('raza', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Sexo',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('sexo', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='TipoMovimiento',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('movimiento', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='ValorEstadoOrden',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('estado', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('usuario', models.CharField(max_length=50, unique=True)),
                ('contraseña', models.CharField(max_length=50)),
                ('nombre', models.CharField(max_length=50)),
                ('apellido', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=254, unique=True)),
                ('telefono', models.CharField(max_length=20)),
                ('direccion', models.CharField(max_length=100)),
                ('idDepartamento', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.departamento')),
                ('idProvincia', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.provincia')),
            ],
        ),
        migrations.CreateModel(
            name='Orden',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('direccionEnvio', models.CharField(max_length=200)),
                ('total', models.DecimalField(decimal_places=2, max_digits=10)),
                ('fecha', models.DateField()),
                ('idDepartamento', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.departamento')),
                ('idEstado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.estado')),
                ('idMetodoPago', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.metodopago')),
                ('idProvincia', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.provincia')),
                ('idUsuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.usuario')),
            ],
        ),
        migrations.CreateModel(
            name='Mensaje',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('asunto', models.CharField(max_length=100)),
                ('texto', models.TextField()),
                ('idUsuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.usuario')),
            ],
        ),
        migrations.CreateModel(
            name='Mascota',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('linkImagen', models.URLField()),
                ('descripcion', models.TextField()),
                ('idCola', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.cola')),
                ('idDepartamento', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.departamento')),
                ('idEdad', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.edad')),
                ('idEspecie', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.especie')),
                ('idEstado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.estado')),
                ('idOrejas', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.orejas')),
                ('idProvincia', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.provincia')),
                ('idRaza', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.raza')),
                ('idSexo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.sexo')),
                ('idUsuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.usuario')),
            ],
        ),
        migrations.CreateModel(
            name='Inventario',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('concepto', models.CharField(max_length=100)),
                ('cantidad', models.PositiveIntegerField()),
                ('stock', models.PositiveIntegerField()),
                ('idDetalleCompra', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.detallecompra')),
                ('idDetalleOrden', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.detalleorden')),
                ('idProducto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.producto')),
            ],
        ),
        migrations.CreateModel(
            name='EstadoOrden',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('fecha', models.DateField()),
                ('idEstado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.estado')),
            ],
        ),
        migrations.AddField(
            model_name='detalleorden',
            name='idEstado',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.estado'),
        ),
        migrations.AddField(
            model_name='detalleorden',
            name='idOrden',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.orden'),
        ),
        migrations.AddField(
            model_name='detalleorden',
            name='idProducto',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.producto'),
        ),
        migrations.AddField(
            model_name='detallecompra',
            name='idProducto',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.producto'),
        ),
        migrations.AddField(
            model_name='compra',
            name='idProveedor',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.proveedor'),
        ),
        migrations.CreateModel(
            name='Carrito',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('cantidad', models.PositiveIntegerField()),
                ('idProducto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.producto')),
                ('idUsuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tasks.usuario')),
            ],
        ),
    ]
