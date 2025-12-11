(() => {
  const title = document.getElementById("title");
  const text = title?.textContent?.trim() || "Hello World";
  console.log("Original text:", text);
  
  title.innerHTML = [...text]
    .map((ch, i) => `<span style="--i:${i}" data-letter="${ch}" data-index="${i}">${ch}</span>`)
    .join("");
    
  console.log("Spans created:", title.children.length);
  
  // Log computed styles for first few spans
  setTimeout(() => {
    for (let i = 0; i < Math.min(3, title.children.length); i++) {
      const span = title.children[i];
      const delay = getComputedStyle(span).animationDelay;
      console.log(`Span ${i} (${span.textContent}): delay = ${delay}`);
    }
  }, 100);
})();