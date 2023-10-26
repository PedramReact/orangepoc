looker.plugins.visualizations.add({

    //Query Response
    options: {

      source_column: {
        type: "string",
        label: "Source Column",
        default: "uproc_dep_full__uprocs.uproc",
      },
      target_column: {
        type: "string",
        label: "Target Column",
        default: "uproc_dep_full__uprocs__uproc_input.uproc_dep_full__uprocs__uproc_input",
      },
  
      group_column:{
        type: "string",
        label: "Group Column",
        default: "uproc_dep_full.domaine",
      }
    },
  
    create: function (element, config) {
      element.innerHTML = "<h1>Ready to render!</h1>";
    },
  
    updateAsync: function (data, element, config, queryResponse, details, doneRendering) {
  
      const sourceColumn = "uproc_dep_full__uprocs.uproc";
      const targetColumn = "uproc_dep_full__uprocs__uproc_input.uproc_dep_full__uprocs__uproc_input";

      const groupColumn = "uproc_dep_full.domaine";

      const nodes = [];
      const edges = [];

      data.forEach((row) => {

         const sourceNode = row[sourceColumn].value;
         const targetNode = row[targetColumn].value;
         const group = row[groupColumn].value;

        // Add source and target nodes if not already in the nodes array
        if (!nodes.some((node) => node.id === sourceNode)) {
            nodes.push({ id: sourceNode, label: sourceNode, group: group });
        }
        if (!nodes.some((node) => node.id === targetNode)) {
             nodes.push({ id: targetNode, label: targetNode, group: group });
        }
        // Create an edge between the source and target nodes
        edges.push({ from: sourceNode, to: targetNode });
         });
      const content = { nodes, edges };
      function createGraph(data) {
        var container = document.getElementById("vis"); // Corrected element id to match the one in code
        var options = {
          layout: {
            hierarchical: {
              direction: "LR", // Left to right direction
              sortMethod: "directed", // Sort nodes by their connections
            },
          },
          nodes: {
            fixed: true,
            shape: "box",
            size: 40,
            borderWidth: 2,
            color: {
              background: "lightblue",
              border: "blue",
              hover: "red",
              highlight: {
            background: "lightcyan",
                border: "cyan",
              },  
            },
            font: {
              size: 14,
              color: "black",
            },
          },
          edges: {
            arrows: "to",
            width: 2,
            color: {
              color: "black",
              hover: "red",
              highlight: "#F7E7CE",
            },
          },
          interaction: {
            hover: true,
          },
          physics: {
            enabled: false, // Disable physics to prevent automatic node movement
          },  
        };
        const network = new vis.Network(container, data, options);
      }
      // Load vis.js and initialize the network graph
      loadScripts([
        "https://code.jquery.com/jquery-2.2.4.min.js",
        "https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js",
        "https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.js",
      ]).then(() => {
        if (typeof vis === 'undefined') {
          console.error('vis.js is not available.');
          return;
        }
        createGraph(content); // Call the createGraph function
        doneRendering();
      });
    },
  });

  function loadScripts(scriptUrls) {
    return Promise.all(
      scriptUrls.map((src) =>
        new Promise((resolve, reject) => {
          const script = document.createElement("script");
          script.src = src;
          script.onload = resolve;
          script.onerror = reject;
          document.head.appendChild(script);
        })
      )  
    );
  }
  