class DataSource

    def get_cpu_info(id)
        id.to_s + "Ghz"
    end

    def get_cpu_price(id)
        id * 10
    end

    def get_memory_info(id)
        id.to_s + "G"
    end

    def get_memory_price(id)
        id * 8
    end

end

class AboutMethod

end