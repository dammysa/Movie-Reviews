// const tblSummary = document.getElementById("TableSummary");
import "./style.css";
const BASE_URL = "https://movie-reviews-server-8k0j.onrender.com";

async function fchMovies() {
  const res = await fetch(`${BASE_URL}`);
  const movies = await res.json();
  return movies;
}
console.log(fchMovies());

async function dispMovies() {
  const movies = await fchMovies();
  const tBody = document.getElementById("TableMoviesBody");
  const infBox = document.getElementById("infoBox");

  tBody.innerHTML = ""; // remove all existing data
  movies.forEach((singleMovie) => {
    const row = document.createElement("tr"); // do I need to put this in the global scope as I will reuse this for the submit
    row.innerHTML = `
      <td>${singleMovie.name}</td>
      <td>${singleMovie.review}</td>
      <td><button class="MoreInfoButton">More Info</button></td>
    `;
    tBody.appendChild(row);

    // I wanted to add a reveal modal hence the close button and some class names, I was looking at https://get.foundation/sites/docs-v5/components/reveal.html and got intimidated but the amount there. Currently the more goes at the bottom of the page, I did have it as an alert but I do not like alerts.
    const btn = row.querySelector(".MoreInfoButton");
    btn.addEventListener("click", () => {
      infBox.innerHTML = `
      <section class="modal hidden">
        <div class= "info-content>
          <button class= "close-btn">x</button>
          Release Date: ${singleMovie.release_date} 
          Genre: ${singleMovie.genre}
        </div>
      </section> 
        `;
    });
  });
}

dispMovies();

const form = document.getElementById("movieForm");

form.addEventListener("submit", async (event) => {
  event.preventDefault();
  const formData = new FormData(form);
  const movieData = {
    name: formData.get("movie_name"),
    review: formData.get("review"),
  };

  // console.log(movieData);
  const res = await fetch(`${BASE_URL}/movies`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(movieData),
  });
});
