{include file = 'header.tpl'}
<h1>Crear película</h1>
<form method="POST" action="route.php?action=createmovie">
    <div class="form-group">
        <label for="title">Título:</label>
        <input type="text" required class="form-control" name="title">
    </div>
    <div class="form-group">
        <label for="description">Descripción:</label>
        <input type="text" required class="form-control" name="description">
    </div>
    <div class="form-group">
        <label for="imageurl">Imagen (URL):</label>
        <input type="text" required class="form-control" name="imageurl">
    </div>
    <div class="form-group">
        <label for="genre">Género:</label>
        <input type="text" required class="form-control" name="genre">
    </div>
    <div class="form-group">
        <label for="duration">Duración (en minutos):</label>
        <input type="text" required class="form-control" name="duration">
    </div>
    <button type="submit" class="btn btn-primary mt-3">Crear</button>
</form>

{include file = 'footer.tpl'}