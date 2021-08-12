<template>
    <div class="nav">
        
        <ul class="nav-ul">
            <li class="nav-li-float-right">
                <h1 class="nav-route-link"></h1>
            </li>
        </ul>
    </div>
</template>

<script>    
    export default {
    

}
</script>

<style>
.nav {
    /* display: flex; */
/* 
    justify-content: flex-start; */
}

.nav-ul {
    display: flex;

    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    width: 100%;

    background-color: rgb(18, 131, 37);
}

.logo {
    /* image: ; */
}

.nav-li {    
    border-right: 1px solid rgb(192, 194, 92);
}

.nav-route-link {
    display: block;
    color:  white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    


}

.nav-li-float-right {
    align-content: flex-end;
}

.nav-route-link:hover {
    background-color: rgb(192, 194, 92);
}
</style>