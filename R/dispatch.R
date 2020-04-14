inv_ConnectInventory <- function(input = NULL, .inventory_dir = get("inventory_dir"), filename = "inventory.yml"){
        if(is.null(input)){
                read_yaml( paste0(.inventory_dir,  filename))
        } else {
                write_yaml(input, paste0(.inventory_dir, filename))
        }
}

inv_ConnectRecipes <- function(input = NULL, .inventory_dir = get("inventory_dir"), filename = "recipe_book.yml"){
        if(is.null(input)){
                read_yaml( paste0(.inventory_dir,  filename))
        } else {
                write_yaml(input, paste0(.inventory_dir, filename))
        }
}

inv_ConnectHistory <- function(input = NULL, .inventory_dir = get("inventory_dir"), filename = "inventory_history.csv"){
        if(is.null(input)){
                read_csv( paste0(.inventory_dir,  filename))
        } else {
                write_csv(input, paste0(.inventory_dir, filename))
        }
}
