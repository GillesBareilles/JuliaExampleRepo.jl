using JuliaExampleRepo
using Test

@testset "JuliaExampleRepo.jl" begin
    @test funtest() == 1.0
end
