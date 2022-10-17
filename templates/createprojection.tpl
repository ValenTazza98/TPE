{include file = 'header.tpl'}
<h1>Crear proyección</h1>
<form method="POST" action="route.php?action=createprojection">
    <div class="form-group">
        <label for="title">Día:</label>
        <select class="form-select" name="day">
            <option value="1">Lunes</option>
            <option value="2">Martes</option>
            <option value="3">Miercoles</option>
            <option value="4">Jueves</option>
            <option value="5">Viernes</option>
            <option value="6">Sabado</option>
            <option value="7">Domingo</option>
        </select>
    </div>
    <div class="form-group">
        <label for="description">Horario:</label>
        <select class="form-select" name="time">
            <option value="16">16:00</option>
            <option value="18">18:00</option>
            <option value="20">20:00</option>
            <option value="22">22:00</option>
        </select>
    </div>
    <div class="form-group">
        <label for="id_movie">Id pelicula a trasmitir:</label>
        <select class="form-select" name="id_movie">
            {foreach item=$movie from=$optionmovies}
            <option value="{$movie->id}">{$movie->title}</option>
            {/foreach}
        </select>
    </div>
    <button type="submit" class="btn btn-primary mt-3">Crear</button>
</form>

{include file = 'footer.tpl'}