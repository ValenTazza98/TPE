{include file = 'header.tpl'}
<h1>Editar proyección</h1>

<form method="POST" action="route.php?action=editprojection&projectionid={$projection->id}">
    <div class="form-group">
        <label for="title">Día:</label>
        <select class="form-select" name="day">
            <option value="1" {if $projection->day == 1}selected{/if}>Lunes</option>
            <option value="2" {if $projection->day == 2}selected{/if}>Martes</option>
            <option value="3" {if $projection->day == 3}selected{/if}>Miercoles</option>
            <option value="4" {if $projection->day == 4}selected{/if}>Jueves</option>
            <option value="5" {if $projection->day == 5}selected{/if}>Viernes</option>
            <option value="6" {if $projection->day == 6}selected{/if}>Sabado</option>
            <option value="7" {if $projection->day == 7}selected{/if}>Domingo</option>
        </select>
    </div>
    <div class="form-group">
        <label for="description">Horario:</label>
        <select class="form-select" name="time">
            <option value="16" {if $projection->time == 16}selected{/if}>16:00</option>
            <option value="18" {if $projection->time == 18}selected{/if}>18:00</option>
            <option value="20" {if $projection->time == 20}selected{/if}>20:00</option>
            <option value="22" {if $projection->time == 22}selected{/if}>22:00</option>
        </select>
    </div>
    <div class="form-group">
        <label for="id_movie">Id pelicula a trasmitir:</label>
        <select class="form-select" name="id_movie">
            {foreach item=$movie from=$optionmovies}
            <option value="{$movie->id}" {if $projection->id_movie == $movie->id}selected{/if}>{$movie->title}</option>
            {/foreach}
        </select>
    </div>
    <button type="submit" class="btn btn-primary mt-3">Editar</button>
</form>

{include file = 'footer.tpl'}