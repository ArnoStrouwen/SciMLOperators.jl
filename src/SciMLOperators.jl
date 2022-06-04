module SciMLOperators

using DocStringExtensions

using LinearAlgebra
import StaticArrays
import SparseArrays
import ArrayInterfaceCore
import Lazy: @forward
import Setfield: @set!

# overload
import Base: size, +, -, *, /, \, adjoint, ∘, inv, one, convert, Matrix, iszero, ==
import LinearAlgebra: mul!, ldiv!, lmul!, rmul!, factorize, exp, Diagonal
import SparseArrays: sparse

"""
$(TYPEDEF)
"""
abstract type AbstractSciMLOperator{T} end

"""
$(TYPEDEF)
"""
abstract type AbstractSciMLLinearOperator{T} <: AbstractSciMLOperator{T} end

"""
$(TYPEDEF)
"""
abstract type AbstractSciMLCompositeOperator{T} <: AbstractSciMLOperator{T} end

"""
$(TYPEDEF)
"""
abstract type AbstractMatrixFreeOperator{T} <: AbstractSciMLOperator{T} end

include("interface.jl")
include("basic.jl")
include("sciml.jl")

export ScalarOperator,
       MatrixOperator,
       DiagonalOperator,
       AffineOperator,
       FunctionOperator

export update_coefficients!,
       update_coefficients,

       cache_operator,

       has_adjoint,
       has_expmv,
       has_expmv!,
       has_exp,
       has_mul,
       has_mul!,
       has_ldiv,
       has_ldiv!

end # module
