{include file = 'header.tpl'}


<div class="mt-5 w-25 mx-auto">
    <form method="POST" action="route.php?action=validate">
        <div class="form-group">
            <label for="user">Usuario</label>
            <input type="text" required class="form-control" name="user">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" required class="form-control" name="password">
        </div>

        {if $error} 
            <div class="alert alert-danger mt-3">
                {$error}
            </div>
        {/if}
        <button type="submit" class="btn btn-primary mt-3">Entrar</button>
    </form>
</div>

{include file = 'footer.tpl'}