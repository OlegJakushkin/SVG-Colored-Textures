svgColorIds = ["YlGn-1", "YlGn-2", "YlGn-3", "YlGn-4", "YlGn-5", "YlGn-6", "YlGn-7", "YlGn-8", "YlGn-9", "YlGnBu-1", "YlGnBu-2", "YlGnBu-3", "YlGnBu-4", "YlGnBu-5", "YlGnBu-6", "YlGnBu-7", "YlGnBu-8", "YlGnBu-9", "GnBu-1", "GnBu-2", "GnBu-3", "GnBu-4", "GnBu-5", "GnBu-6", "GnBu-7", "GnBu-8", "GnBu-9", "BuGn-1", "BuGn-2", "BuGn-3", "BuGn-4", "BuGn-5", "BuGn-6", "BuGn-7", "BuGn-8", "BuGn-9", "PuBuGn-1", "PuBuGn-2", "PuBuGn-3", "PuBuGn-4", "PuBuGn-5", "PuBuGn-6", "PuBuGn-7", "PuBuGn-8", "PuBuGn-9", "PuBu-1", "PuBu-2", "PuBu-3", "PuBu-4", "PuBu-5", "PuBu-6", "PuBu-7", "PuBu-8", "PuBu-9", "BuPu-1", "BuPu-2", "BuPu-3", "BuPu-4", "BuPu-5", "BuPu-6", "BuPu-7", "BuPu-8", "BuPu-9", "RdPu-1", "RdPu-2", "RdPu-3", "RdPu-4", "RdPu-5", "RdPu-6", "RdPu-7", "RdPu-8", "RdPu-9", "PuRd-1", "PuRd-2", "PuRd-3", "PuRd-4", "PuRd-5", "PuRd-6", "PuRd-7", "PuRd-8", "PuRd-9", "OrRd-1", "OrRd-2", "OrRd-3", "OrRd-4", "OrRd-5", "OrRd-6", "OrRd-7", "OrRd-8", "OrRd-9", "YlOrRd-1", "YlOrRd-2", "YlOrRd-3", "YlOrRd-4", "YlOrRd-5", "YlOrRd-6", "YlOrRd-7", "YlOrRd-8", "YlOrRd-9", "YlOrBr-1", "YlOrBr-2", "YlOrBr-3", "YlOrBr-4", "YlOrBr-5", "YlOrBr-6", "YlOrBr-7", "YlOrBr-8", "YlOrBr-9", "Purples-1", "Purples-2", "Purples-3", "Purples-4", "Purples-5", "Purples-6", "Purples-7", "Purples-8", "Purples-9", "Blues-1", "Blues-2", "Blues-3", "Blues-4", "Blues-5", "Blues-6", "Blues-7", "Blues-8", "Blues-9", "Greens-1", "Greens-2", "Greens-3", "Greens-4", "Greens-5", "Greens-6", "Greens-7", "Greens-8", "Greens-9", "Oranges-1", "Oranges-2", "Oranges-3", "Oranges-4", "Oranges-5", "Oranges-6", "Oranges-7", "Oranges-8", "Oranges-9", "Reds-1", "Reds-2", "Reds-3", "Reds-4", "Reds-5", "Reds-6", "Reds-7", "Reds-8", "Reds-9"];
svgTextureIds = [ "texture-scoreboard-2", "texture-scoreboard-1", "texture-tiny-x-1", "texture-tiny-x-2", "texture-tiny-x-3", "texture-ziggy", "texture-square", "texture-tverlapping-thread-1", "texture-tverlapping-thread-2", "texture-jeans-1", "texture-jeans-2", "texture-diagonal-stripes", "texture-construction-paper", "texture-zags-glow", "texture-cross-stripes", "texture-daenerys", "texture-triangles", "texture-cubes"];

groups = for name, i in svgTextureIds
  for color, j in svgColorIds
    y =  100 + 100 * i * svgColorIds.length/9 + if ((j%9) == 0) then 100*j/9 else  100*(j - j%9)/9
    """
         <circle id='#{name}-#{color}-#{i+1}-#{j+1}' cx="#{100 + 100 * (j%9)}" cy="#{y}" r="40" style="stroke: #000066; stroke-width: 2px;"  overflow="visible"  fill="url(##{name})" filter="url(##{color})" />
      """


data = for group in groups
  group.join("\n")


console.clear
console.log data.join("\n")
console.log "-----------------------------------"
 