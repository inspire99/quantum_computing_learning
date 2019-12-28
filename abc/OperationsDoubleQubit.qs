namespace abc
{
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Extensions.Convert;

    operation HelloDoubleQ () : Unit {
        
        body{

            mutable countZeros = 0;
            mutable countOnes = 0;

        for(iter in 1..100000){
            
            using(qubits = Qubit[1]){


                Microsoft.Quantum.Intrinsic.H(qubits[0]);
                
                let result = Microsoft.Quantum.Intrinsic.M(qubits[0]);                
                if(result == Zero){
                    set countZeros = countZeros + 1;

                }
                if(result == One ){
                    set countOnes = countOnes + 1;
                }

                Microsoft.Quantum.Intrinsic.ResetAll(qubits);




            }

        }

        Microsoft.Quantum.Intrinsic.Message(" countZeros " + ToStringI(countZeros));
        Microsoft.Quantum.Intrinsic.Message(" countOnes " + ToStringI(countOnes));
            
        }
    }
}
