inv_ConvertFromYAML <- function(yaml_list_in){
        yaml_list_out <- list()

        elements <- names(yaml_list_in[["basic"]])

        for(i in elements){

        yaml_list_out[i] <- yaml_list_in[["basic"]][[i]][["value"]]
        units(yaml_list_out[[i]]) <- yaml_list_in[["basic"]][[i]][["unit"]]
        }
        output <- list()
        output[["basic"]] <- yaml_list_out
        output
}

inv_ConvertToYAML <- function(input_list){
        output_list <- list("basic" = list())

        elements <- names(input_list[["basic"]])
        for(i in elements){
                output_list[["basic"]][[i]] <- list()
                output_list[["basic"]][[i]][["value"]] <- as.numeric(input_list[["basic"]][[i]])
                output_list[["basic"]][[i]][["unit"]]  <- units::deparse_unit(input_list[["basic"]][[i]])
        }
        output_list

}

