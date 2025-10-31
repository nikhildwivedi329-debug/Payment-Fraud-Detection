document.addEventListener("DOMContentLoaded", () => {
  console.log("Frontend loaded successfully ✅");

  document.body.addEventListener("mousemove", e => {
    const sparkle = document.createElement("span");
    sparkle.className = "spark";
    sparkle.style.left = e.pageX + "px";
    sparkle.style.top = e.pageY + "px";
    document.body.appendChild(sparkle);
    setTimeout(() => sparkle.remove(), 1000);
  });
});
