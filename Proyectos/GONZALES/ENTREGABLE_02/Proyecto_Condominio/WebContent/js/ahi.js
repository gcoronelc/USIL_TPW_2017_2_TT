function getQueryVariable(variable) {
        // Estoy asumiendo que query es window.location.search.substring(1);
        var query = "product_id=32&cat_id=1&sessionid=123";
        var vars = query.split("&");
        alert(vars);
        for (var i=0; i < vars.length; i++) {
            var pair = vars[i].split("="); 
            if (pair[0] == variable) {
                return pair[1];
            }
        }
        return false;
    }