{include file = 'header.tpl'}
<h1>Editar película</h1>
<form method="POST" action="route.php?action=editmovie&movieid={$movie->id}">
    <div class="form-group">
        <label for="title">Título:</label>
        <input type="text" required class="form-control" name="title" value= "{$movie->title}">
    </div>
    <div class="form-group">
        <label for="description">Descripción:</label>
        <input type="text" required class="form-control" name="description" value= "{$movie->description}">
    </div>
    <div class="form-group">
        <label for="imageurl">Imagen (URL):</label>
        <input type="text" required class="form-control" name="imageurl" value= "{$movie->img}">
    </div>
    <div class="form-group">
        <label for="genre">Género:</label>
        <input type="text" required class="form-control" name="genre" value= "{$movie->genre}">
    </div>
    <div class="form-group">
        <label for="duration">Duración (en minutos):</label>
        <input type="text" required class="form-control" name="duration" value= "{$movie->duration}">
    </div>
    <button type="submit" class="btn btn-primary mt-3">Editar</button>
</form>
{include file = 'footer.tpl'}