<script>
import { get } from "./api.js";
let isAuth = false;

async function handleClick() {
  console.log("clicked!");
  let res = await get("api/v1/requires-auth/");
  if (res.sgood) {
    isAuth = true;
  }
}
</script>

<h1>Check your auth status</h1>
<button on:click="{handleClick}">Check Auth!</button>
{#if isAuth}
  <h2>You're Auth!</h2>
{/if}
