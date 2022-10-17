{include file = 'header.tpl'}

<h1>Proyecciones</h1>

{if $isLogged == true}
    <a href="route.php?action=createprojection" class="btn btn-outline-secondary">agregar proyeccion</a>
{/if}

<table class="table table-dark table-borderless">
  <thead>
    <tr>
        <th>Horario</th>
        <th>Lunes</th>
        <th>Martes</th>
        <th>Miercoles</th>
        <th>Jueves</th>
        <th>Viernes</th>
        <th>Sabado</th>
        <th>Domingo</th>
    </tr>
  </thead>
    
  <tbody>
        {foreach from=$projections key=$hour item=$projection}
        <tr>
            <th>{$hour}hs</th>
            {foreach from=$projection item=$day}
                <td>
                {if $day and $day->id eq true}
                    <a href="route.php?action=datasheet&movieid={$day->movieid}" class="btn btn-secondary btn-lg btn-warning">
                    {$day->title}
                    </a>
                    {if $isLogged == true}
                        <a href="route.php?action=editprojection&projectionid={$day->id}" class="btn btn-outline-secondary">Editar</a>
                        <a href="route.php?action=deleteprojection&projectionid={$day->id}" class="btn btn-outline-secondary">Borrar</a>
                    {/if}
                {else}
                    -
                {/if}
                </td>
            {/foreach}
        </tr>
        {/foreach}

  </tbody>
</table>

{include file = 'footer.tpl'}