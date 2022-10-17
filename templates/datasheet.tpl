{include file = 'header.tpl'}

<h1>Ficha Técnica</h1>

{if $isLogged == true}
    <a href='route.php?action=editmovie&movieid={$movie->id}' class="btn btn-outline-secondary">Editar</a>
    <a href='route.php?action=deletemovie&movieid={$movie->id}' class="btn btn-outline-secondary">Borrar</a>
{/if}

<div>
    <div> 
        <h2>{$movie->title}</h2>
        <p>{$movie->description}</p>
        <span>Genero:{$movie->genre}; Duracion:{$movie->duration} min.</span>
    </div>
    <img src="{$movie->img}"/>
</div>

<h2>Horarios</h2>

<ul>
    {foreach from=$projections item=$projection}
    <li>{$projection["weekday"]}</li>
        <span>{$projection["time"]}:00 hs</span>
    {/foreach}
</ul>

{include file = 'footer.tpl'}