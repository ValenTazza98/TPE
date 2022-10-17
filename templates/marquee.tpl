{include file = 'header.tpl'}

<h1>Películas</h1>
{if $isLogged == true}
  <a href='route.php?action=createmovie' class="btn btn-outline-secondary">Agregar peicula</a>
{/if}
<div class="row mb-2">

{foreach from=$movies item=$movie}
    <div class="col-md-6">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <h3 class="mb-0"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">{$movie->title}</font></font></h3>
          <div class="mb-1 text-muted"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Genero:{$movie->genre}; Duracion:{$movie->duration} min.</font></font></div>
          <a href="route.php?action=datasheet&movieid={$movie->id}" class="stretched-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">sigue leyendo</font></font></a>
        </div>
        <div class="col-auto d-none d-lg-block">
            <img src="{$movie->img}"/>
        </div>
      </div>
    </div>
{/foreach}
</div>
{include file = 'footer.tpl'}

