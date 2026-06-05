const tags = document.querySelectorAll(".blog-tag");
const posts = document.querySelectorAll(".post-container");

let activeTag: string | null = null;

tags.forEach((tag) => {
  tag.addEventListener("click", (e) => {
    e.preventDefault();

    const selectedTag = tag.getAttribute("data-tag");

    // Clicou na mesma tag -> resetar
    if (activeTag === selectedTag) {
      activeTag = null;

      posts.forEach((post) => {
        (post as HTMLElement).style.display = "block";
      });

      tags.forEach((t) => t.classList.remove("active"));

      return;
    }

    activeTag = selectedTag;

    posts.forEach((post) => {
      const postTags = post.getAttribute("data-tags")?.split(",");

      if (postTags?.includes(selectedTag || "")) {
        (post as HTMLElement).style.display = "block";
      } else {
        (post as HTMLElement).style.display = "none";
      }
    });

    tags.forEach((t) => t.classList.remove("active"));
    tag.classList.add("active");
  });
});
