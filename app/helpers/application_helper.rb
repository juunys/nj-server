module ApplicationHelper
    
	def flash_class(level)
        case level.to_sym
        when :notice then "alert alert-success"
        when :success then "alert alert-success"
        when :error then "alert alert-danger"
        when :alert then "alert alert-default"
        end
    end


    def user_states
        [["Ativo", "active"],
         ["Em espera", "waiting"],
         ["Inativo", "inactive"],
         ["Bloqueado", "blocked"]]
    end

    def format_user_states(user_state)
        @hash_user_states = user_states
        @hash_user_states = Hash[@hash_user_states.map {|key, value| [key, value]}]
        @hash_user_states.key(user_state)
    end

    def states
        [["Acre (AC)", "AC"], 
        ["Alagoas (AL)", "AL"],
        ["Amapá (AP)", "AP"],
        ["Amazonas (AM)", "AM"],
        ["Bahia (BA)", "BA"], 
        ["Ceará (CE)", "CE"], 
        ["Distrito Federal (DF)", "DF"], 
        ["Esprírito Santo (ES)", "ES"],
        ["Goiás (GO)", "GO"],
        ["Maranhão (MA)", "MA"],
        ["Mato Grosso (MT)", "MT"],
        ["Mato Grosso do Sul (MS)", "MS"],
        ["Minas Gerais (MG)", "MG"],
        ["Pará (PA)", "PA"],
        ["Paraína (PB)", "PB"],
        ["Paraná (PR)", "PR"],
        ["Pernambuco (PE)", "PE"],
        ["Piauí (PI)", "PI"],
        ["Roraima (RR)", "RR"],
        ["Rondônia (RO)", "RO"],
        ["Rio de Janeiro (RJ)", "RJ"],
        ["Rio Grande do Norte (RN)", "RN"],
        ["Rio Grande do Sul (RS)", "RS"],
        ["Santa Catarina (SC)", "SC"],
        ["São Paulo (SP)", "SP"], 
        ["Sergipe (SE)", "SE"],
        ["Tocantins (TO)", "TO"]]
    end

    def state(state)
        @hash_states = states
        @hash_states = Hash[@hash_states.map {|key, value| [key, value]}]
        @hash_states.key(state)
    end
end
